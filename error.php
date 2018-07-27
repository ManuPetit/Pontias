<?php # script : error.php

	//Début de session
	ob_start();
	session_start();
	include("fonctions/fonction.inc.php");
	$_SESSION['fichier']='error.php';
	//retrouver les extensions moins le language
	$lanPos=0;
	$lanPos=strpos($fileExt,"lan=");
	if ($lanPos > 0)
	{
		$_SESSION['extension']=substr($fileExt,$lanPos+6);
	}
	elseif ($position>0)
	{
		$_SESSION['extension']=substr($fileExt,$position+1);
	}
	else
	{
		$_SESSION['extension']=substr($fileExt,0);
	}
	
		
	//CHOIX DE LA LANGUE
	//vérification que l'on passe une valeur pour la langue
	if (isset($_GET['lan']))
	{
		//affecter à la variable de session la langhe choisie
		if ($_GET['lan'] == 2)	
		{
			$_SESSION['lang']='gb';
		}
		else
		{
			$_SESSION['lang']='fr';
		}
	}
	else
	{
		//si la langue n'est pas passée, celà veut dire que l'on déjà la variable de session
		//on verifie quand même, et on met le français par défaut
		if (!isset($_SESSION['lang']))	
		{
			$_SESSION['lang']='fr';
		}
	}
	//affectation de la variable de session à la variable générale
	$lang=$_SESSION['lang'];
	$nom = $lang."Nom";
	
		
	//ajouter le fichier de connection à la base données
	require_once("../pontias_connection.php");

	if ($lang=='fr')
	{
		$titre="Erreur";
	}
	else
	{
		$titre="Error";
	}
	$_SESSION['menuCat']=0;
	$titre_page=$titre."&nbsp;-&nbsp;M&eacute;di&eacute;vales du Pontias";
	
	//inclure le fichier header
	include("include/header.php");
	
	//creation de la page principale
	echo '<div id="right">
    <p class="mainTop"></p>
    <div id="mainBody">
	<p class="mainText"></p>';
	//afficher le titre de la page
	$titreLettre=GetLetter($titre,true);
	echo '<h1>'.$titreLettre.'</h1>';
	
	////Message d'erreur
	if ($lang=='fr')
	{
		$message="La page que vous essayer de visualiser n'est pas accessible. Nous sommes d&eacute;sol&eacute; pour ce probl&egrave;me.<br />";
		$mess2="S'il vous plait, veuillez essayer plus tard.";
	}
	else
	{
		$message="The page you are trying to see is not on line. We apologise for any inconvenience.<br />";
		$mess2="Please, try again later...";
	}
	
	echo '<p class="mainText">'.GetLetter($message,false).'</p>';
	echo '<p class="mainText">'.GetLetter($mess2,false).'</p>';
	
	echo '</div>';
	
	include("include/footer.php");
		
	ob_end_flush();
?>
