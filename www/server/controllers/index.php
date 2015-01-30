<?php
Header("Content-Type: text/html;charset=UTF-8");
require_once('../autoload.php');

class index {

    private $base;
    
    public function __construct(){
        $this->base = new MySqlBase();
    }

    public function getUsersData($filter){
        $data = $this->base->getData($filter);
        return $data;

    }
    
    public function updateUsersData($data){
        $this->base->updateData($data);
         
    }
}

$indexObj = new index();

if(!empty($_POST)){
    $data = json_decode(stripslashes($_POST['record']));
    $indexObj->updateUsersData($data);
}else{
    $filter = '';
    if(!empty($_GET['filter'])){
        $filterData = json_decode(stripslashes($_GET['filter']));
        $filter = 'WHERE ' . $filterData[0]->property . ' ' . $filterData[0]->operator . 
            ' ("' . implode('", "', $filterData[0]->value) . '")';
    }
    $data = $indexObj->getUsersData($filter);
    print json_encode($data);
}
die();

?>