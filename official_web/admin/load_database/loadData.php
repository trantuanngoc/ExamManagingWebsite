<?php 
	session_start();
	require_once __DIR__.'/../../dll/Database.php';
	require_once __DIR__.'/../../dll/Function.php';
    $db=new Database;
    if (!isset($_SESSION['admin_id'])) {
    	header("location: /web_files/official_web/admin/modules/login/");
    }
 ?>