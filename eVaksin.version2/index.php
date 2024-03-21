<!--membuat sambungan ke db-->
<?php
	include('config.php');
?>

<html>
	<head>
	<title>Senarai Pelajar Vaksinasi</title>
	</head>
	<style>
	h2 {
		text-align: center;
		padding-top: 20px;
	}
	body {
		background-color: #FFE4E1;
	}
	</style>
   

	<body>
	<h2>REKOD VAKSINASI PELAJAR</h2>
	<center>
	<table border=1 cellpadding=5 cellspacing=0 bgcolor=white>
		<tr>
		<th>ID PELAJAR</th>
		<th>NAMA PELAJAR</th>
		<th>KELAS</th>
		<th>JENIS VAKSIN</th>
		<th>TARIKH VAKSIN</th>
		<th>PADAM</th>
		
		</tr>
	  
		<!--memaparkan rekod pelajar-->
		<?php
	    
		include 'config.php';
		$result = mysqli_query($conn,"SELECT * FROM maklumat")
		or die(mysqli_error($conn));

		while($res = mysqli_fetch_array($result)) {

		
		echo "
		<tr>
			<td>".$res["id_pelajar"]."</td>
			<td>".$res["nama_pelajar"]."</td>
			<td>".$res["kelas"]."</td>
			<td>".$res["jenis_vaksin"]."</td>
			<td>".$res["tarikh_vaksin"]."</td>
			<td><a href='padam.php?id_pelajar=".$res['id_pelajar']."' onclick='myHapus()'> Hapus </a></td>

				
		</tr>";
		}
		
		?>		  
	</table>
	<p><a href="tambah.php"><button name='tambah'type="submit">&#43; TAMBAH PELAJAR</button></a></p>
	
	</center>
	</body>
</html>