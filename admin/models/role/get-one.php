<?php 

header("Content-Type: application/json");

require_once '../../../config/connection.php';

$code = null;
$data = "";

if (isset($_GET['btnEdit'])) {
	$roleID = trim($_GET['id']);

	$sql = "SELECT * FROM role WHERE roleID = :id";
	$stmt = $conn->prepare($sql);
	try {
		$stmt->execute(['id' => $roleID]);
		$data = $stmt->fetch();
	} catch (PDOException $e) {
		echo $e->getMessage();
		$code = 500;
	}
}

http_response_code($code);
echo json_encode($data);