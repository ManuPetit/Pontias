<?php # script : expo2009.php

	//Début de session
	ob_start();
	session_start();
	include("fonctions/fonction.inc.php");
	$_SESSION['fichier']='expo2009.php';
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
	
	//on retrouve le titre
	$nom=$lang.'Nom';
	$q="SELECT menuID, $nom AS nom FROM menus INNER JOIN fichiers ON fichiers.fichierID=menus.fichierID WHERE nomFichier='expo2009'";
	$r=@mysqli_query($dbc,$q);
	if ($r)
	{
		$row=mysqli_fetch_array($r,MYSQL_ASSOC);
		$menuID=$row['menuID'];
		$titre=$row['nom'];
	}
	$titre_page=$titre."&nbsp;-&nbsp;M&eacute;di&eacute;vales du Pontias";
	
	//inclure le fichier header
	include("include/header.php");
	
	//creation de la page principale
	echo '<div id="right">
    <p class="mainTop"></p>
    <div id="mainBody">';
	CreationBreadCrumb($menuID, 0, $dbc);
	//afficher le titre de la page
	$titreLettre=GetLetter($titre,true);
	echo '<h1>'.$titreLettre.'</h1>';

	if ($lang=='fr')
	{
		$message="Voici la liste des diff&eacute;rents exposants qui ont pris part aux M&eacute;di&eacute;vales du Pontias &eacute;dition 2009.";
	}
	else
	{
		$message="Here is the list of the different exhibitors who took part in the 2009 M&eacute;di&eacute;vales du Pontias.";
	}
	
	//retrouvez la liste des exposants et leur détails
	$activite=$lang.'Type';
	$q="SELECT nom, $activite AS type, contact, telephone, website, imgFichier FROM exposants WHERE annee=2009 ORDER BY nom";
	$r=@mysqli_query($dbc,$q);
	if ($r)
	{
		echo '<p class="mainText">'.GetLetter($message,false).'</p>';
		echo '<table width="528px" border="0" cellspacing="0" cellpadding="10" class="photo">
		<tr><td width="190px"></td><td class="d3"></td></tr>';
		$counter=1;
		while ($row=mysqli_fetch_array($r,MYSQL_ASSOC))
		{
			$counter++;	
			$myString='<b>'.$row['nom'].'</b><br />';
			if (!is_null($row['type']))
			{
				$myString.=$row['type'].'<br />';
			}
			if (!is_null($row['contact']))
			{
				$myString.=$row['contact'].'<br />';
			}
			$myString.=$row['telephone'].'<br />';
			if (!is_null($row['website']))
			{
				$myString.='<a href="'.$row['website'].'" target="_blank">'.$row['website'].'</a><br />';
			}
			
			echo '<tr>';
			if (is_null($row['imgFichier']))
			{
				if (($counter%2)==0)
				{
					echo '<td width="190px">&nbsp;</td>';
					echo '<td class="d3">'.$myString.'</td>';
				}
				else
				{
					echo '<td class="d3" align="right">'.$myString.'</td>';
					echo '<td width="190px">&nbsp;</td>';
				}
			}
			else
			{
				$image='images/exposants2009/'.$row['imgFichier'];
				$imgSize=getimagesize($image);
				if (($counter%2)==0)
				{
					echo '<td width="190px" align="right"><img src="'.$image.'" alt="'.$row['nom'].'" title="'.$row['nom'].'" border="0" width="'.$imgSize[0].'" height="'.$imgSize[1].'" /></td>';
					echo '<td class="d3">'.$myString.'</td>';
				}
				else
				{
					echo '<td class="d3" align="right">'.$myString.'</td>';
					echo '<td width="190px" align="left"><img src="'.$image.'" alt="'.$row['nom'].'" title="'.$row['nom'].'" border="0" width="'.$imgSize[0].'" height="'.$imgSize[1].'" /></td>';
				}
			}
			echo '</tr>';
		}
		echo '</table>';
	}
	echo '</div>';
	
	include("include/footer.php");
		
	ob_end_flush();
?>