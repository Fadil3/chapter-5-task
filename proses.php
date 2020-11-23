<?php
include('koneksi.php');


if (isset($_GET['id'])) {
    echo "mausk";
    $id = $_GET['id'];
    $sql = "UPDATE buku
    SET pinjam = '0000-00-00', kembali = '0000-00-00' ,status = 1, denda='0'
    WHERE id=$id";
    $update = mysqli_query($konek, $sql);

    header("location:pengembalian.php");
}
