<h1>
<?php echo $titolo ?>
</h1>
<?php 
if (!empty($staff)){
	echo "<ul>";
	foreach($staff as $persona){
		echo "<li>{$persona['nome']} {$persona['cognome']}</li>";
	}
	echo "</ul>";
}
?>
