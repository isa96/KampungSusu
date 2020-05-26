<?php
include 'conf.php';
 
// jalankan query
$result = mysqli_query($link, "SELECT * FROM sensing ORDER BY id desc LIMIT 1");
 
// tampilkan query
while ($row=mysqli_fetch_array($result,MYSQLI_ASSOC))
{
   echo $row['gasvalue'];
}
?>