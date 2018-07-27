<?php # script : expo2009.php

	//Début de session
	ob_start();
	session_start();
	include("fonctions/fonction.inc.php");
	$_SESSION['fichier']='filmM2009.php';
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
	$q="SELECT menuID, $nom AS nom FROM menus INNER JOIN fichiers ON fichiers.fichierID=menus.fichierID WHERE nomFichier='filmM2009'";
	$r=@mysqli_query($dbc,$q);
	if ($r)
	{
		$row=mysqli_fetch_array($r,MYSQL_ASSOC);
		$menuID=$row['menuID'];
		$titre=$row['nom'];
	}
	$titre_page=$titre."&nbsp;-&nbsp;M&eacute;di&eacute;vales du Pontias";
	
	//inclure le fichier header
	include("include/headerFilm.php");
	
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
		$message="Utilisez le bouton lecture pour visionner le film des M&eacute;di&eacute;vales du Pontias &eacute;dition 2009.";
	}
	else
	{
		$message="Use the Play button to watch the movie of the 2009 M&eacute;di&eacute;vales du Pontias.";
	}
	echo '<p class="mainText">'.GetLetter($message,false).'</p>';
	?>
    <table width="528px" border="0" cellspacing="0" cellpadding="5" class="photo">
  <tr>
    <td align="center">
<script language="JavaScript" type="text/javascript">
	AC_FL_RunContent(
		'codebase', 'http://download.macromedia.com/pub/shockwave/cabs/flash/swflash.cab#version=9,0,0,0',
		'width', '500',
		'height', '420',
		'src', 'manuPlayer',
		'quality', 'high',
		'pluginspage', 'http://www.adobe.com/go/getflashplayer',
		'align', 'middle',
		'play', 'true',
		'loop', 'true',
		'scale', 'showall',
		'wmode', 'window',
		'devicefont', 'false',
		'id', 'manuPlayer',
		'bgcolor', '#33221c',
		'name', 'manuPlayer',
		'menu', 'true',
		'allowFullScreen', 'false',
		'allowScriptAccess','sameDomain',
		'movie', 'manuPlayer',
		'salign', ''
		); //end AC code
</script>
<noscript>
	<object classid="clsid:d27cdb6e-ae6d-11cf-96b8-444553540000" codebase="http://download.macromedia.com/pub/shockwave/cabs/flash/swflash.cab#version=9,0,0,0" width="500" height="420" id="manuPlayer" align="middle">
	<param name="allowScriptAccess" value="sameDomain" />
	<param name="allowFullScreen" value="false" />
	<param name="movie" value="manuPlayer.swf" /><param name="quality" value="high" /><param name="bgcolor" value="#33221c" />	<embed src="manuPlayer.swf" quality="high" bgcolor="#33221c" width="500" height="420" name="manuPlayer" align="middle" allowScriptAccess="sameDomain" allowFullScreen="false" type="application/x-shockwave-flash" pluginspage="http://www.adobe.com/go/getflashplayer" />
	</object>
</noscript>



</td>
</tr>
</table>
    
	<?php
	echo '</div>';
	
	include("include/footer.php");
		
	ob_end_flush();
?>