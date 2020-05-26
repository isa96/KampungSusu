<?php
// Parameter untuk database MySQL
$host = "localhost"; // Nama host atau IP server
$user = "root";      // Username MySQL
$pass = "root";          // Password MySQL
$name = "kampungsusu";      // Nama database MySQL
 
// Baca parameter get  /simpandata.php?suhu=x <===
$flamevalue   = $_POST["flamevalue"];
$gasvalue 	  = $_POST["gasvalue"];
$suhu 	  	  = $_POST["suhu"];

// Buat koneksi ke database MySQL
$conn = new mysqli($host, $user, $pass, $name);
 
// Periksa apakah koneksi sudah berhasil
if ($conn->connect_error) {
    die("Koneksi gagal: " . $conn->connect_error);
}
 
// Perintah SQL untuk menyimpan data suhu ke tabel sensor
$sql = "INSERT INTO sensing (flamevalue,gasvalue,suhu) VALUES ('$flamevalue','$gasvalue','$suhu')";
 
// Jalankan dan periksa apakah perintah berhasil dijalankan
if ($conn->query($sql) === TRUE) {
	echo "Sukses - Tersimpan: ".$flamevalue;
	echo "Sukses - Tersimpan: ".$gasvalue;
	echo "Sukses - Tersimpan: ".$suhu;
} else {
    echo "Error: ". $conn->error;
}
 
$conn->close();
?>