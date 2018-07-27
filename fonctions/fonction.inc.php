<?php		#	script	fonction.inc.php
		//ce fichier regroupe plusieurs fonction nécessaire pour le système
		
		//Retrouve la première lettre d'un texte et la remplace par La lettre necessaire
		//$unTexte = string texte original
		//$unTitre = bool si Vrai c'est une titre, sinon un Texte Original
		//return $maString = string avec le texte et la lettre
		function GetLetter($unTexte,$unTitre)
		{
			$laLettre=strtoupper(substr($unTexte,0,1));
			if ($unTitre == true)
			{
				$monImage = "images/lettres/titre".$laLettre.".gif";
			}
			else
			{
				$monImage = "images/lettres/lettre".$laLettre.".gif";
			}
			//trouver la taille de l'image
			$imgSize = getimagesize ($monImage);
			$maString = '<img src="'.$monImage.'" border="0" width="'.$imgSize[0].'" height="'.$imgSize[1].'" />'.substr($unTexte,1);
			return $maString;
		}//	FIN de GetLetter
		
		/*
		//Cette fonction check la valeur que l'on veut ajouter au breadcrumb, pour voir si elle existe déjà, ce qui veut dire que l'on est revenu en arriere
		//$leMenuIDBread = int la valeur du menu que l'on veut rajouter
		function CheckBreadcrumb($leMenuIDBread)
		{
			$temp=explode("b",$_SESSION['breadcrumb']);
			$flag=0;
			$newBread="";
			$count=count($temp);
			for ($i=0; $i<$count-1;$i++)
			{
				if ($flag==0)
				{
					if ($temp[$i]==$leMenuIDBread)	//le menu est déja dans le fil d'ariane donc on est revenu en arriere
					{
						$flag=1;
					}
					$newBread.=$temp[$i]."b";
				}
			}
			if ($flag==0)
			{
				$newBread.=$leMenuIDBread."b";
			}
			$_SESSION['breadcrumb']=$newBread;
		}//	FIN de CheckBreadcrumb
		
		
		//Cette fonction check la valeur que l'on veut ajouter au breadcrumb, pour voir si elle existe déjà, ce qui veut dire que l'on est revenu en arriere
		//$leMenuIDBread = int la valeur du menu que l'on veut rajouter
		function CheckBreadcrumbAutre($lIDBread,$dbc)
		{
			if (substr($_SESSION['extension'],0,3)=="art")
			{
				$q="SELECT menuID FROM menus WHERE articleID=".$lIDBread;
			}
			else
			{
				$q="SELECT menuID FROM menus WHERE galerieID=".$lIDBread;
			}
			$r=@mysqli_query($dbc,$q);
			$nombre=mysqli_num_rows($r);
			if ($nombre==1)
			{
				$row=mysqli_fetch_array($r,MYSQL_ASSOC);
				CheckBreadcrumb($row['menuID']);
			}
		}//	FIN de CheckBreadcrumbAutre
		
		
		//cette fonction crée le fil d'ariane(ou breadcrumb)
		//return $newBread = string représentant le bread crumb de la page
		function CreateBreadCrumb($nomBread, $lien, $dbc)
		{
			
			$temp=explode("b",$_SESSION['breadcrumb']);
			$newBread="";
			$count=count($temp);
			for ($i=0; $i<$count-1;$i++)
			{
				$q="SELECT $nomBread AS nom, $lien AS lien, nomFichier, articleID, galerieID FROM menus INNER JOIN fichiers ON menus.fichierID=fichiers.fichierID WHERE menuID=".$temp[$i];
				$r=@mysqli_query($dbc,$q);
				$nombres=mysqli_num_rows($r);
				if ($nombres==1)
				{
					$row=mysqli_fetch_array($r,MYSQL_ASSOC);
					if ($row['nomFichier']=='articles')
					{
						$ceLien="articles.php?art=".$row['articleID'];
					}
					elseif ($row['nomFichier']=='galerie')
					{
						$ceLien="galerie.php?gal=".$row['galerieID'];
					}
					elseif ($row['nomFichier']=='principal')
					{
						$ceLien="principal.php?menu=".$temp[$i];
					}
								 
					
					$newBread.='<a href="'.$ceLien.'" title="'.$row['lien'].'" class="breadcrumb">'.$row['nom'].'</a>';
				}
				if ($i<($count-2))
				{
					$newBread.="&nbsp;>>&nbsp;";
				}
			}
			return $newBread;
		}//	FIN de CreateBreadCrumb
		*/
		
		// $parent is the parent of the children we want to see
		// $level is increased when we go deeper into the tree,
		//        used to display a nice indented tree
		function CreateLinkFR($ssMenuID, $level,$dbc) 
		{
		   // retrieve all children of $parent
		   $q= 'SELECT menuID, frNom, frLienTitle, nomFichier, articleID, galerieID FROM menus INNER JOIN fichiers';
		   $q.=' ON fichiers.fichierID=menus.fichierID WHERE sousMenuID='.$ssMenuID.' AND frActive=1';
		   $result=mysqli_query($dbc,$q);
		   
		   // display each child
		   while ($row = mysqli_fetch_array($result,MYSQL_ASSOC)) 
		   {
			   //create the link
			   if ($row['nomFichier']=='principal')
			   {
				   $file='principal.php?menu='.$row['menuID'];
			   }
				elseif ($row['nomFichier']=='articles')
				{
					$file='articles.php?art='.$row['articleID'];
				}
				elseif ($row['nomFichier']=='galerie')
				{
					$file='galerie.php?gal='.$row['galerieID'];
				}
				else
				{
					$file=$row['nomFichier'].'.php';
				}
				if ($level==0)
				{
					echo '<br />';
				}
				$textMap='<a href="'.$file.'" title="'.$row['frLienTitle'].'" class="niveau'.$level.'">'.$row['frNom'].'</a><br />';
				echo $textMap;
			   
			   // call this function again to display this
			   // child's children
			   CreateLinkFR($row['menuID'], $level+1,$dbc);
		   }
		}//	FIN de CreateLinkFR
		
		
		function CreateLinkGB($ssMenuID, $level,$dbc) 
		{
		   // retrieve all children of $parent
		   $q= 'SELECT menuID, gbNom, gbLienTitle, nomFichier, articleID, galerieID FROM menus INNER JOIN fichiers';
		   $q.=' ON fichiers.fichierID=menus.fichierID WHERE sousMenuID='.$ssMenuID.' AND gbActive=1';
		   $result=mysqli_query($dbc,$q);
		   
		   // display each child
		   while ($row = mysqli_fetch_array($result,MYSQL_ASSOC)) 
		   {
			   //create the link
			   if ($row['nomFichier']=='principal')
			   {
				   $file='principal.php?menu='.$row['menuID'];
			   }
				elseif ($row['nomFichier']=='articles')
				{
					$file='articles.php?art='.$row['articleID'];
				}
				elseif ($row['nomFichier']=='galerie')
				{
					$file='galerie.php?gal='.$row['galerieID'];
				}
				else
				{
					$file=$row['nomFichier'].'.php';
				}
				if ($level==0)
				{
					echo '<br />';
				}
				$textMap='<a href="'.$file.'" title="'.$row['gbLienTitle'].'" class="niveau'.$level.'">'.$row['gbNom'].'</a><br />';
				echo $textMap;
			   
			   // call this function again to display this
			   // child's children
			   CreateLinkGB($row['menuID'], $level+1,$dbc);
		   }
		}//	FIN de CreateLinkGB
		
		
		//function  pour creer le fil d'ariane basée sur le menuid
		function CreationBreadCrumb($mID,$level,$dbc)
		{
			$_SESSION['breadcrumb']='';
			GenererBreadCrumb($mID,$level,$dbc);
			echo '<p class="mainText">'.$_SESSION['breadcrumb'].'</p>';
		}//FIN de CreationBreadCrumb($mID,$level,$dbc)
		
		
		function GenererBreadCrumb($mID,$level,$dbc)
		{
		 	$Nom=$_SESSION['lang'].'NomBread';
			$Lien=$_SESSION['lang'].'LienTitle';
		   
		   $q= 'SELECT menuID, sousMenuID, '.$Nom.' AS nom, '.$Lien.' AS lien, nomFichier, articleID, galerieID FROM menus INNER JOIN fichiers';
		   $q.=' ON fichiers.fichierID=menus.fichierID WHERE menuID='.$mID;
		   $result=mysqli_query($dbc,$q);
		   
		   // display each child
		   while ($row = mysqli_fetch_array($result,MYSQL_ASSOC)) 
		   {
			   //create the link
			   if ($row['nomFichier']=='principal')
			   {
				   $file='principal.php?menu='.$row['menuID'];
			   }
				elseif ($row['nomFichier']=='articles')
				{
					$file='articles.php?art='.$row['articleID'];
				}
				elseif ($row['nomFichier']=='galerie')
				{
					$file='galerie.php?gal='.$row['galerieID'];
				}
				else
				{
					$file=$row['nomFichier'].'.php';
				}
			   $myString ='<a href="'.$file.'" title="'.$row['lien'].'" class="breadcrumb">'.$row['nom'].'</a>';
			   if ($level==0)
			   {
			   		$_SESSION['breadcrumb']=$myString.$_SESSION['breadcrumb'];
			   }
			   else
			   {
				   $_SESSION['breadcrumb']=$myString.' <b>>></b> '.$_SESSION['breadcrumb'];
			   }
			   GenererBreadCrumb($row['sousMenuID'],$level+1,$dbc);
		   }
		}
		
		//function pour retrouver la categorie mère
		function GetCategorie($mID,$level,$dbc)
		{
			$q= 'SELECT menuID, sousMenuID FROM menus WHERE menuID='.$mID;
		    $result=mysqli_query($dbc,$q);
		   
		    // display each child
		    while ($row = mysqli_fetch_array($result,MYSQL_ASSOC)) 
			{
				$_SESSION['menuCat']=$row['menuID'];
				getCategorie($row['sousMenuID'],$level+1,$dbc);
			}
		}
		
?>
