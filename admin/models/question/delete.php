<?php

$code = null;

if (isset($_POST['btnDelete'])) {
  $questionID = trim($_POST['id']);
require_once '../../../config/connection.php';
    

  $sql = 'DELETE FROM question WHERE questionID = :id;';
  $stmt = $conn->prepare($sql);
  try {
    $stmt->execute(['id' => $questionID]);
    if ($stmt->rowCount() === 1) {
      $code = 204;
    } else {
      $code = 500;
    }
  } catch(PDOException $e) {
    echo $e->getMessage();
    $code = 500;
  }
}



http_response_code($code);
