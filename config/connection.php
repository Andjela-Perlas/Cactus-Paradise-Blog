<?php
	require_once "config.php";
// $user = 'root';
// $pwd = '';
// $dst = 'mysql:host=localhost;dbname=blog;charset=utf8';


try {
    $conn = new PDO('mysql:host=' . SERVER . ';dbname=' . DATABASE . ';charset=utf8', USERNAME, PASSWORD);
   	$conn->setAttribute(PDO::ATTR_DEFAULT_FETCH_MODE, PDO::FETCH_OBJ);
   	$conn->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
} catch (PDOException $e) {
    echo "Greška!: " . $e->getMessage();  
}