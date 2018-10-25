<!DOCTYPE html>
<html>
<head>
	<title>School</title>
	<meta http-equiv="content-type" content="text/html; charset=utf-8">
	<link rel="stylesheet" type="text/css" href="static/css/style.css">
	<link rel="stylesheet" type="text/css" href="static/css/bootstrap.min.css">
	<script src="static/js/jquery-3.3.1.min.js"></script>
	<script src="static/js/bootstrap.min.js"></script>
</head>

<body>
<?php
session_start();
include_once('config/main.php');
include_once('app/model/Model.php');
include_once('app/model/Manager.php');
include_once('app/controller/Controller.php');

Model::getConnection();
?>

<div class="content">
<?php
$route = DEFAULT_ROUTE;

if(!empty($_GET['r']) && in_array($_GET['r'], ROUTES)){
    $route = $_GET['r'];
}

//include controller
include_once('app/controller/' . $route . '.php');

$action = DEFAULT_ACTION . 'Action';

if(!empty($_GET['a'])){
    $action = $_GET['a'] . 'Action';
}

$object = new $route;
$object->$action();
?>
</div>

<?php
Model::disconnect();
?>
</body>
</html>