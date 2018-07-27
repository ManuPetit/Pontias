<?php # script : galerie.php

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
	$_SESSION['fichier']=substr($fileExt,0,$position+1);
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
	if (isset($_GET['gal']))
	{
		//affectation du menu à la variable
		if (is_numeric($_GET['gal']))
		{
			$galID=$_GET['gal'];
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
	$q = "SELECT menuID, $nom AS nom FROM menus WHERE galerieID=".$galID;
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
	include("include/headerGalerie.php");
	
	//creation de la page principale
	echo '<div id="right">
    <p class="mainTop"></p>
    <div id="mainBody">';
	CreationBreadCrumb($menuID, 0, $dbc);
	//retrouvez le nom de la galerie et le sous titre
	$langTitre=$lang.'Titre';
	$langSTitre=$lang.'SousTitre';
	$q="SELECT ".$langTitre." AS titre, ".$langSTitre." AS stitre FROM galeries WHERE galerieID=".$galID;
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
	//Texte d'explication
	if ($lang=='fr')
	{
		$explica='<p class="explications">Cliquez sur une photo pour lancer le diaporama.<br /><br />Vous pouvez naviguer dans le diaporama : avec la souris et en cliquant sur Prec. ou Suiv. pour reculer ou avancer , en utilisant les fl&ecirc;ches du clavier, ou en pressant P ou S sur votre clavier.<br /><br />Pour quitter le diaporama vous pouvez : cliquez Fermer, appuyez sur la touche "Echap", ou sur la touche F de votre clavier.</p>';
	}
	else
	{
		$explica='<p class="explications">To start the diaporama, click on a picture.<br /><br />You may navigate through the pictures: with the mouse by clicking on Prev. or Next to move backward or forward , by using the arrow keys, or by pressing P or N on the keyboard.<br /><br />To leave the diaporama you may: click on "Close", press the "Escape" key, or the C key on your keyboard.</p>';
	}
	echo $explica;
	//retrouver les photos de la galerie
	$legende=$lang.'Legende';
	$q="SELECT fichierPhoto, $legende AS legende, position FROM galeriedetails WHERE galerieID=".$galID." ORDER BY position";
	$r=mysqli_query($dbc,$q);
	if (mysqli_num_rows($r) >= 1) {
		//creation de la table
		echo '<table width="528px" border="0" cellpadding="0" cellspacing="14" class="photo"><tr>';
		$count=1;
		while ($row=mysqli_fetch_array($r, MYSQLI_ASSOC))
		{
			$picture='images/galerie'.$galID.'/'.$row['fichierPhoto'];
			$thumbnail='images/galerie'.$galID.'/th_'.$row['fichierPhoto'];
			$thumbsize=getimagesize($thumbnail);
			echo '<td width="33%" align="center">';	
			echo '<a href="' . $picture . '" rel="lightbox[galerie]" title="' . $row['legende'] . '"><img src="' . $thumbnail . '" width="' . $thumbsize[0] . '" height="' . $thumbsize[1] . '" border="0" /></a></td>';
			if (($count%3)==0)
			{
				echo '</tr><tr>';
				$count=0;
				$flag=true;
			}
			else
			{
				$flag=false;
			}
			$count++;
		}
		if ($flag==false)
		{
			if ($count==2)
			{
				echo '<td width=33%></td><td width=33%></td></tr>';
			}
			elseif ($count==3)
			{
				echo '<td width=33%></td></tr>';
			}
			else
			{
				echo '</tr>';
			}
		}
		echo '</table>';
	}
	
	echo '<br /></div>';
	
	include("include/footer.php");
		
	ob_end_flush();
?>
					