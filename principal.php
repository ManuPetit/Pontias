<?php # script : principal.php

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
	if (isset($_GET['menu']))
	{
		//affectation du menu à la variable
		if (is_numeric($_GET['menu']))
		{
			$menuID=$_GET['menu'];
			//necessaire pour le menu et le breadcrumb Il y a 8 catégories principales
			GetCategorie($menuID,0,$dbc);
			
		}
		//variable pas numerique on renvoit à une page d'erreur plus loin
		else
		{
			$menuID=99999;
		}
	}
	//pas de variable fournie on passe direct à la page d'accueil
	else
	{
		$menuID=1;
		$_SESSION['menuCat']=$menuID;
	}
	//on retrouve les données correspondantes à cette page
	//creation des variable de langue
	$nom = $lang."Nom";
	//creation de la requete
	$q = "SELECT $nom AS nom FROM menus WHERE menuID=$menuID";
	$r = @mysqli_query($dbc,$q);
	$nombre=@mysqli_num_rows($r);
	if ($nombre == 1)
	{
		$row=mysqli_fetch_array($r, MYSQLI_ASSOC);
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
	
	//inclure le fichier header
	include("include/header.php");
	
	//creation de la page principale
	echo '<div id="right">
    <p class="mainTop"></p>
    <div id="mainBody">';
	CreationBreadCrumb($menuID, 0, $dbc);
	//messages necessaires
	if ($lang=='fr')
	{
		$messagePres=GetLetter("Veuillez cliquer sur un lien pour s&eacute;lectionner un des diff&eacute;rents articles.",false);
		$messageErr=GetLetter("Il n'y a aucun article dans cette section pour le moment.",false);
	}
	else
	{
		$messagePres=GetLetter("Please click on a link, to navigate through the different topics.",false);
		$messageErr=GetLetter("There is no topics on this section for the moment.",false);
	}
	
	//afficher le titre de la page
	$titreLettre=GetLetter($titre,true);
	echo '<h1>'.$titreLettre.'</h1>';
	//retouvez les infos des mes menus de cette page
	$q="SELECT menuID, $nom AS nom, $lien AS lien, nomFichier, position, articleID, galerieID FROM menus INNER JOIN  fichiers ON menus.fichierID=fichiers.fichierID ";
	$q.="WHERE sousMenuID=$menuID AND $active=1 ORDER BY position"; 
	$r=@mysqli_query($dbc,$q);
	$nombres=@mysqli_num_rows($r);
	if ($nombres>0)
	{
		echo '<p class="mainText">'.$messagePres.'</p>';
		while ($row=mysqli_fetch_array($r,MYSQL_ASSOC))
		{
			$leMenuID=$row['menuID'];
			$leNom=$row['nom'];
			$leLien=$row['lien'];
			$leFichier=$row['nomFichier'];
			$lArticle=$row['articleID'];
			$laGalerie=$row['galerieID'];
			//creation du fichier de connexion
			if ($leFichier=='principal')
			{
				$connexion=$leFichier.'.php?menu='.$leMenuID;
			}
			elseif ($leFichier=='articles')
			{
				$connexion=$leFichier.'.php?art='.$lArticle;
			}
			elseif ($leFichier=='galerie')
			{
				$connexion=$leFichier.'.php?gal='.$laGalerie;
			}
			else
			{
				$connexion=$leFichier.'.php';
			}
			echo '<p class="mainText"><a href="'.$connexion.'" title="'.$leLien.'">'.$leNom.'</a></p>';
		}
	}
	else
	{
		echo '<p class="mainText">'.$messageErr.'</p>';
	}
	
	echo '</div>';
	
	include("include/footer.php");
		
	ob_end_flush();
?>