<?php # script : liens.php

	//Début de session
	ob_start();
	session_start();
	include("fonctions/fonction.inc.php");
	$_SESSION['fichier']='liens.php';
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
		$breadcrumb='<a href="liens.php" title="Allez &agrave; la page de liens..." class="breadcrumb">Liens</a>';
		$titre="Liens internet";
		$links[1]="Sites internet de Nyons";
		$links[2]="Partenaires des M&eacute;di&eacute;vales";
		$links[3]="Les participants aux M&eacute;di&eacute;vales";
		$links[4]="Autres sites internet d'int&eacute;r&ecirc;t";
		$noLink="Il n'y a aucun lien dans cette section pour le moment...";
	}
	else
	{
		$breadcrumb='<a href="liens.php" title="Go to the links page..." class="breadcrumb">Links</a>';
		$titre="Web links";
		$links[1]="Websites from Nyons";
		$links[2]="Partners of the M&eacute;di&eacute;vales";
		$links[3]="Particpants of the M&eacute;di&eacute;vales";
		$links[4]="Other websites of interest";
		$noLink="There is no website link in this section at the moment...";
	}
	$_SESSION['menuCat']=7;
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
	
	//création de la page
	$lienTitle=$lang.'Title';
	
	for ($i=1;$i<5;$i++)
	{
		
		$q="SELECT lienID, lien, $lienTitle AS title, $nom as nom, imgFichier FROM liens WHERE categID=".$i." ORDER BY lienID";
		$r = @mysqli_query($dbc,$q);
		$nombre=@mysqli_num_rows($r);
		if ($nombre > 0)
		{
			echo '<p class="mainText">'.GetLetter($links[$i],false).'</p>';
			echo '<table class="photo" border="0" cellpadding="10" cellspacing="10" width="528px"><tr>';
			$counter=1;
			$flag=false;
			while ($row=mysqli_fetch_array($r, MYSQLI_ASSOC))
			{
				$myString= '<td width="50%" align="center"><a href="'.$row['lien'].'" target="_blank" title="'.$row['title'].'"class="liens"><img src="images/liens/'.$row['imgFichier'].'"';
				$size=getimagesize('images/liens/'.$row['imgFichier']);
				$myString.=' border="0" width="'.$size[0].'" height="'.$size[1].'" /><br />'.$row['nom'].'</a></td>';
				echo $myString;
				if (($counter%2)==0)
				{
					echo '</tr><tr>';
					$counter=0;
					$flag=true;
				}
				else
				{
					$flag=false;
				}
				$counter++;
			}
			if ($flag==false)
			{
				echo '<td width="50%" align="center"></td></tr></table>';
			}
			else
			{
				echo '</table>';
			}
		}
		echo '<br />';
	}
	
	echo '</div>';
	
	include("include/footer.php");
		
	ob_end_flush();
?>
