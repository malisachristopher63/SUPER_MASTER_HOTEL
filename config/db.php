<?php

$host="localhost";
$password="";
$user="root";
$db="super_master_hotel";

try{
    $connect= new PDO(
        "mysql:host=$host;dbname=$db;" , 
        $user,
        $password,
        [
            PDO::ATTR_ERRMODE =>PDO::ERRMODE_EXCEPTION,
            PDO::ATTR_DEFAULT_FETCH_MODE =>PDO::FETCH_ASSOC,
        ]
    );
}
catch(PDOException $e){
die("connection failed: ".$e ->getMessage() );

}

?>