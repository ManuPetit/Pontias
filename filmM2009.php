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
		$message="Visionnez le film des M&eacute;di&eacute;vales du Pontias &eacute;dition 2009. Selon la vitesse de votre connexion, le film peut prendre quelques minutes avant de commencer...";
		$message2="Film&eacute; par Jean-Yves et Marie-H&eacute;l&egrave;ne SIESS";
	}
	else
	{
		$message="Watch the movie of the 2009 M&eacute;di&eacute;vales du Pontias. Depending of your connection speed, the movie may takes a few minutes before to start...";
		$message2="Filmed by Jean-Yves and Marie-H&eacute;l&egrave;ne SIESS";
	}
	echo '<p class="mainText">'.GetLetter($message,false).'</p>';
	echo '<p class="mainText">'.GetLetter($message2,false).'</p>';
	?>
    <table width="528px" border="0" cellspacing="0" cellpadding="5" class="photo">
  <tr>
    <td align="center">
 <object classid="clsid:D27CDB6E-AE6D-11cf-96B8-444553540000" width="422" height="371" id="FLVPlayer">
        <param name="movie" value="FLVPlayer_Progressive.swf" />
        <param name="quality" value="high" />
        <param name="wmode" value="opaque" />
        <param name="scale" value="noscale" />
        <param name="salign" value="lt" />
        <param name="FlashVars" value="&amp;MM_ComponentVersion=1&amp;skinName=Halo_Skin_3&amp;streamName=video2009/inteMedWeb&amp;autoPlay=true&amp;autoRewind=false" />
        <param name="swfversion" value="8,0,0,0" />
        <!-- This param tag prompts users with Flash Player 6.0 r65 and higher to download the latest version of Flash Player. Delete it if you don’t want users to see the prompt. -->
        <param name="expressinstall" value="Scripts/expressInstall.swf" />
        <!-- Next object tag is for non-IE browsers. So hide it from IE using IECC. -->
        <!--[if !IE]>-->
        <object type="application/x-shockwave-flash" data="FLVPlayer_Progressive.swf" width="422" height="371">
          <!--<![endif]-->
          <param name="quality" value="high" />
          <param name="wmode" value="opaque" />
          <param name="scale" value="noscale" />
          <param name="salign" value="lt" />
          <param name="FlashVars" value="&amp;MM_ComponentVersion=1&amp;skinName=Halo_Skin_3&amp;streamName=video2009/inteMedWeb&amp;autoPlay=true&amp;autoRewind=false" />
          <param name="swfversion" value="8,0,0,0" />
          <param name="expressinstall" value="Scripts/expressInstall.swf" />
          <!-- The browser displays the following alternative content for users with Flash Player 6.0 and older. -->
          <div>
            <h4>Content on this page requires a newer version of Adobe Flash Player.</h4>
            <p><a href="http://www.adobe.com/go/getflashplayer"><img src="http://www.adobe.com/images/shared/download_buttons/get_flash_player.gif" alt="Get Adobe Flash player" /></a></p>
          </div>
          <!--[if !IE]>-->
        </object>
        <!--<![endif]-->
    </object>
</td>
</tr>
</table>
    
	<?php
	echo '</div>';
	
	include("include/footer.php");
		
	ob_end_flush();
?>