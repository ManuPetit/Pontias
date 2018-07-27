<?php # script : planSite.php

		//Début de session
	ob_start();
	session_start();
	include("fonctions/fonction.inc.php");
	$_SESSION['fichier']='planSite.php';
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
		$breadcrumb='<a href="planSite.php" title="Retrouvez le plan de notre site internet..." class="breadcrumb">Plan du site</a>';
		$titre="Plan du site";
		$message='Veuillez cliquer sur un lien pour aller &agrave; la page correspondante...';
	}
	else
	{
		$breadcrumb='<a href="planSite.php" title="Discover the site map of our web site..." class="breadcrumb">Site map</a>';
		$titre="Site map";
		$message='Please, click on a link to go to the corresponding page...';
	}
	$_SESSION['menuCat']=0;
	$titre_page=$titre."&nbsp;-&nbsp;M&eacute;di&eacute;vales du Pontias";
	
	//inclure le fichier header
	include("include/header.php");
	
	//creation de la page principale
	echo '<div id="right">
    <p class="mainTop"></p>
    <div id="mainBody">
	<p class="mainText">';
	echo $breadcrumb.'</p>';
	//afficher le titre de la page
	$titreLettre=GetLetter($titre,true);
	echo '<h1>'.$titreLettre.'</h1>';
	echo '<p class="mainText">'.GetLetter($message,false).'<br />';
	
	if ($lang=='fr')
	{
		CreateLinkFR(0,0,$dbc);
		CreateLinkFR(55555,0,$dbc);
	}
	else
	{
		CreateLinkGB(0,0,$dbc);
		CreateLinkGB(55555,0,$dbc);
	}
	echo '</div>';
	
	include("include/footer.php");
		
	ob_end_flush();
?>