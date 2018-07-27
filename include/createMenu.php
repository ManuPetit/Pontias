<?php	#	script	createMenu.php
		// ce script crée le menu des catégories
		
		//creation de la requete		
		$lien=$lang.'LienTitle';
		$active=$lang.'Active';
		$q="SELECT menuID, $nom AS nom, $lien AS lien, nomFichier, position FROM menus INNER JOIN  fichiers ON menus.fichierID=fichiers.fichierID ";
		$q.="WHERE sousMenuID=0 AND $active=1 ORDER BY position";
		$r=@mysqli_query($dbc,$q);
		$nombre=@mysqli_num_rows($r);
		//variable counter
		$count=1;
		if ($nombre>0)
		{
			//creation de la table du menu
			echo '<div id="left">
    <table width="202" border="0" cellpadding="0" cellspacing="0" class="menu">';
			//retouver les menus
	  		while($row=mysqli_fetch_array($r,MYSQL_ASSOC))
			{
				if (($count%2)==0)
				{
					$classMenu='menu1';
					$classLien='menu2H">&nbsp;';
				}
				else
				{
					$classMenu='menu2';
					$classLien='menu1H">&nbsp;';
				}
				if ($count==$nombre)
				{
					$classLien='menuBas">';
				}
				$leMenuID=$row['menuID'];
				$leNom=$row['nom'];
				$leLien=$row['lien'];
				$leFichier=$row['nomFichier'].'.php';
				//mise en page
				echo '<tr><td class="'.$classMenu.'"><a href="'.$leFichier.'?menu='.$leMenuID.'" title="'.$leLien.'"';
				if ($_SESSION['menuCat']==$leMenuID)
				{
					echo ' class="selected"';
				}
				echo '>'.$leNom.'</a></td></tr>';
				echo '<tr><td class="'.$classLien.'</td></tr>';
				$count++;
			}
			echo '</table>
			<br /><br />
			</div>';
		}
?>		
	  		