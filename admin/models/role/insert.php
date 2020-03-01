<?php

header('Content-Type: application/json');

$code = null;

if (isset($_POST['btnInsert'])) {
  $role = trim($_POST['role']);
  
  require_once '../../../config/connection.php';

  $sql = "INSERT INTO role(role) VALUES (:role)";
  $stmt = $conn->prepare($sql);
  try {
    $stmt->execute([
      'role' => $role
    ]);

    if ($stmt->rowCount() === 1) {
      $code = 201;
      echo json_encode(["success"=> "Uspešno kreirano!"]);
    } 
  } catch(PDOException $e) {
    echo $e->getMessage();
    $code = 500;
  }
}

http_response_code($code);