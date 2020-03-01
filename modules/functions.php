<?php

function getAllFromTable($table, $conn) {
	$sql = "SELECT * FROM $table;";
	$stmt = $conn->prepare($sql);
	$stmt->execute();
	return $stmt->fetchAll();
}


function executeQuery($sql){
	global $conn;
	return $conn->query($sql)->fetchAll();
}

function executeQueryOneRow($sql){
	global $conn;
	return $conn->query($sql)->fetch();
}


function executeOneRow($sql, array $params){
	global $conn;
	$stmt = $conn->prepare($sql);
	$stmt->execute($params);
	return $stmt->fetch();
}

function executeAll($sql, $params){
	global $conn;
	$stmt = $conn->prepare($sql); 
	$stmt->execute([$params]);
	return $stmt->fetchAll();
}

function executeNonGet($sql, array $params) {
	global $conn;
	$stmt = $conn->prepare($sql);
	$stmt->execute($params);
}


function dd($element) {
	echo "<pre>";
	print_r($element);
	echo "</pre>";
}

function userLoggedIn() {
	return (isset($_SESSION['user'])  && $_SESSION['user']->role === 'User') ? true : false;
}

function adminLoggedIn() {
	return (isset($_SESSION['user'])  && $_SESSION['user']->role === 'Admin') ? true : false;
}

