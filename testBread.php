<?php //testing the breadcrumb
	
	//Début de session
	ob_start();
	session_start();
	include("fonctions/fonction.inc.php");
	//ajouter le fichier de connection à la base données
	require_once("../pontias_connection.php");
	$_SESSION['lang']='fr';
	CreationBreadCrumb(28,0,$dbc);
?>