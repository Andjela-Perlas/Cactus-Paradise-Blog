<?php

header('Content-Type: application/json');
require_once "../../../config/connection.php";
$stmt = $conn->prepare("SELECT * FROM contact");
$stmt->execute();
$data = $stmt->fetchAll();
echo json_encode($data);
