<?php
spl_autoload_register ('autoload');
function autoload ($className) {
    require_once('models'.DIRECTORY_SEPARATOR.$className.'.php');
}
?>