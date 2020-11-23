<?php
$servername = "localhost";
$username = "root";
$password = "";
$database = "buku_ostric";

// Create connection
$konek =  mysqli_connect($servername, $username, $password, $database);

// Check connection
if (!$konek) {
    die("Connection failed ");
}
// echo "Connected successfully <br/>";

//mysqli_close($konek);
