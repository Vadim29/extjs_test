<?php
class MySqlBase implements Base {

    private $conn = null;
    public $query = '';

    public function __construct(){
        try {
            $config = parse_ini_file('..'.DIRECTORY_SEPARATOR.'config.ini');
            $this->conn = new PDO(
                'mysql:host=' . $config['host'] . ';dbname=' . $config['dbname'], 
                $config['username'], 
                $config['password']
            );
            $this->conn->exec("set names utf8");
            return $this;
        }
        catch(PDOException $e) {
            echo $e->getMessage();
        }
    }

    public function getData($filter){
        $data = array();
        $this->query = 'SELECT `users`.id as user_id, `users`.name, `education`.education, 
            GROUP_CONCAT(`cities`.city SEPARATOR ", ") as city FROM `users` 
            LEFT JOIN `education` ON `users`.id=`education`.user_id
            RIGHT JOIN `cities` ON `users`.id=`cities`.user_id ' . $filter . '
            GROUP BY user_id';
        try {
            $result = $this->conn->query($this->query);
            $result->setFetchMode(PDO::FETCH_ASSOC);
            while($row = $result->fetch()) {
                $data[] = $row;
            }
            return $data;
        }
        catch(PDOException $e) {
            echo $e->getMessage();
        }
    }
    
    public function updateData($data){
        $sql = "UPDATE `education`   
            SET `education` = :education
            WHERE `user_id` = :user_id";
        try {
             $statement = $this->conn->prepare($sql);
             $statement->bindValue(":education", $data->education);
             $statement->bindValue(":user_id", $data->user_id);
             $statement->execute();     
        }
        catch(PDOException $e) {
            echo $e->getMessage();
        }

    }

}
?>