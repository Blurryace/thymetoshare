<?php
// INFINITYFREE DATABASE CONNECTION

$servername = "sql312.infinityfree.com";
$username   = "if0_41090188";
$password   = "rkrSU5bVlIv";
$dbname     = "if0_41090188_db_tts";

// Create connection
$conn = new mysqli($servername, $username, $password, $dbname);

// Check connection
if ($conn->connect_error) {
    die("Connection failed: " . $conn->connect_error);
}
?>