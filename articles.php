<?php # script : articles.php

	//Début de session
	ob_start();
	session_start();
	include("fonctions/fonction.inc.php");
	//on retrouve le nom de la page avec les extensions
	$pageName = $_SERVER['REQUEST_URI'];
	//on prend la position de la dernière /
	$fileExt = substr(strrchr($pageName,"/"),1);
	//trouver la position de menu
	$position=strpos($fileExt,"?");
	//enlever le nom du fichier
	$_SESSION['fichier']=substr($fileExt,0,$position);
	//retrouver les extensions moins le language
	$lanPos=0;
	$lanPos=strpos($fileExt,"lan=");
	if ($lanPos > 0)
	{
		$_SESSION['extension']=substr($fileExt,$lanPos+6);
	}
	else
	{
		$_SESSION['extension']=substr($fileExt,$position+1);
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
	
	//ajouter le fichier de connection à la base données
	require_once("../pontias_connection.php");
	
	//retrouver la page correspondante
	if (isset($_GET['art']))
	{
		//affectation du menu à la variable
		if (is_numeric($_GET['art']))
		{
			$artID=$_GET['art'];
		}
		//variable pas numerique on renvoit à une page d'erreur plus loin
		else
		{
			$menuID=99999;
		}
	}
	

	//on retrouve les données correspondantes à cette page
	//creation des variable de langue
	$nom = $lang."Nom";
	$nomBread=$lang."NomBread";
	//creation de la requete
	$q = "SELECT menuID, $nom AS nom FROM menus WHERE articleID=".$artID;
	$r = @mysqli_query($dbc,$q);
	$nombre=@mysqli_num_rows($r);
	if ($nombre == 1)
	{
		$row=mysqli_fetch_array($r, MYSQLI_ASSOC);
		$menuID=$row['menuID'];
		$titre=$row['nom'];
		$titre_page=$titre."&nbsp;-&nbsp;M&eacute;di&eacute;vales du Pontias";
	}
	else
	{
		//on a une erreur
		$url="error.php";
		//rediriger
		ob_end_clean();
		header("Location: $url");
		exit();
	}
	
	GetCategorie($menuID,0,$dbc);
	//inclure le fichier header
	include("include/header.php");
	
	//creation de la page principale
	echo '<div id="right">
    <p class="mainTop"></p>
    <div id="mainBody">';
	CreationBreadCrumb($menuID, 0, $dbc);
	//retrouvez le nom de l'article et le sous titre
	$langTitre=$lang.'Titre';
	$langSTitre=$lang.'SousTitre';
	$q="SELECT ".$langTitre." AS titre, ".$langSTitre." AS stitre FROM articles WHERE articleID=".$artID;
	$r = @mysqli_query($dbc,$q);
	$nombre=@mysqli_num_rows($r);
	if ($nombre == 1)
	{
		$row=mysqli_fetch_array($r, MYSQLI_ASSOC);
		$leTitre=$row['titre'];
		echo '<h1>'.GetLetter($leTitre,true).'</h1>';
		if (!is_null($row['stitre']))
		{
			echo '<h4>'.$row['stitre'].'</h4>';
		}
	}
	//retrouvez le texte de l'article
	$artTexte=$lang.'Text';
	$q="SELECT $artTexte AS texte, position FROM articledetails WHERE articleID=$artID ORDER BY position";
	$r = @mysqli_query($dbc,$q);
	while ($row=mysqli_fetch_array($r, MYSQLI_ASSOC))
	{
		$leTexte=$row['texte'];
		$artDetail[$row['position']]='<p class="mainText">'.GetLetter($leTexte,false).'</p>';
	}
	//retrouver les images de l'article
	$phoLien=$lang.'Title';
	$phoLegende=$lang.'Legende';
	$q ="SELECT fichierPhoto, $phoLien AS lien, $phoLegende AS legende, position FROM articlephotos WHERE articleID=$artID ORDER BY position";
	$r = @mysqli_query($dbc,$q);
	while ($row=mysqli_fetch_array($r, MYSQLI_ASSOC))
	{
		$monImage="images/articles".$artID."/".$row['fichierPhoto'];
		$getImgSize=getimagesize($monImage);
		$maString='<p class="mainPhoto"><img src="'.$monImage.'" width="'.$getImgSize[0].'" height="'.$getImgSize[1].'" border="0" title="'.$row['lien'].'" alt="'.$row['lien'].'" />';
		$maString.='<br />'.$row['legende'].'</p>';
		$artDetail[$row['position']]=$maString;
	}
	//afficher l'article
	$count=count($artDetail);
	for ($i=1; $i<=$count;$i++)
	{
		echo $artDetail[$i];
	}
	echo '</div>';
	
	include("include/footer.php");
		
	ob_end_flush();
?>
																	 
		