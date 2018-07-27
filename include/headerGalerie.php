<?php  # script - header.php
				//Commun à toutes les pages du site
	

	//Verifier le titre de la page
	if (!isset($titre_page)) {
		$titre_page='Les M&eacute;di&eacute;vales du Pontias';
	}
?>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" />
<meta name="keywords" content="nyons, médiéval, drôme, pontias, france" />
<link rel="SHORTCUT ICON" href="http://www.medievalesdupontias.com/images/favicon.ico" />
<title><?php echo $titre_page; ?></title>
<link href="css/maincssTable.css" rel="stylesheet" type="text/css" />
<?php
	$css=$lang.'lightbox.css';
	echo'<script type="text/javascript" src="js/'.$_SESSION['lang'].'/prototype.js"></script>
<script type="text/javascript" src="js/'.$_SESSION['lang'].'/scriptaculous.js?load=effects,builder"></script>
<script type="text/javascript" src="js/'.$_SESSION['lang'].'/lightbox.js"></script>
<link rel="stylesheet" href="css/'.$css.'" type="text/css" media="screen" />';
?>
</head>
<body>
<div id="global">
  <div id="header">
  <?php
  if ($lang=='fr')
  {
	  $image="frHeader.jpg";
	  $texte="Lien vers le site de l'association Vie et Travail dans le vieux Nyons";
  }
  else
  {
	  $image="gbHeader.jpg";
	  $texte="Link to the site of the association Vie et Travail dans le vieux Nyons";
  }
  echo '<img src="css/temp102/'.$image.'" width="830" height="271" border="0" usemap="#Map" />
    <map name="Map" id="Map">
      <area shape="rect" coords="13,37,62,89" href="';
	  echo $_SESSION['fichier'].'lan=1&'.$_SESSION['extension']. '" alt="Version Française" title="Version Française" />
      <area shape="rect" coords="13,101,62,153" href="';
	  echo $_SESSION['fichier'].'lan=2&'.$_SESSION['extension']. '" alt="English version" title="English version" />
      <area shape="rect" coords="282,166,576,201" href="http://www.vieuxnyons.com" target="_blank" alt="'. $texte .'" title="'. $texte .'"/>
    </map>
  </div>';
  include("createMenu.php");
  ?>
  