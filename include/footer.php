<p class="mainBottom"></p>
	<p class="copyright" style="font-size:0.9em;">&spades;&nbsp;&nbsp;&nbsp;
    <?php	#  	script footer.php
			//ce script termine la page principale et affiche egalement les copyrights, mention legales et plan du site
			
			//creation de la requête
			$q="SELECT $nom AS nom, $lien AS lien, nomFichier, position FROM menus INNER JOIN  fichiers ON menus.fichierID=fichiers.fichierID ";
			$q.="WHERE sousMenuID=55555 AND $active=1 ORDER BY position";
			$r=@mysqli_query($dbc,$q);
			$nombre=@mysqli_num_rows($r);
			$count=1;
			while ($row=mysqli_fetch_array($r,MYSQL_ASSOC))
			{
				echo '<a href="'.$row['nomFichier'].'.php" title="'.$row['lien'].'" class="copy">'.$row['nom'].'</a>';
				if ($count!=$nombre)
				{
					echo '&nbsp;&nbsp;&nbsp;&spades;&nbsp;&nbsp;&nbsp;';
				}
				$count++;
			}
			 if ($lang=='fr') {
				 $site = 'Site cr&eacute;&eacute; par <a href="http://www.iiidees.com/" title="Lien vers le cr&eacute;ateur de ce site internet" class="copy" target="_new">';
			 }else {
				 $site ='Web site design by <a href="http://www.iiidees.com/" title="Link to this web site designer" class="copy" target="_new">';
			 }
		?>
		&nbsp;&nbsp;&nbsp;&spades;</p>
    <p class="copyright"><?php echo $site; ?>iiidees.com</a>.</p>
    <p class="copyright">Copyright &copy; <a href="http://www.vieuxnyons.com" title="lien vers le site de l'association Vie et Travail dans le vieux Nyons" class="copy" target="_blank">VTVN</a> MMX</p>
  </div>
</div>
</body>
</html>