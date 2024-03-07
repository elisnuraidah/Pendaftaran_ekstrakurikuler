<?php
// Assuming you want to delete a file
$id = $_GET['id'];
include "koneksi.php";

// Assuming you have a table named "records" with an ID coloum

$sql= "DELETE FROM Admin WHERE id =$id";

if ($koneksi ->query($sql) === TRUE) {
    header('location: tables.php');
} else {
    echo "Error deleting record : " . $koneksi->error;
}

$koneksi->close();
?>
