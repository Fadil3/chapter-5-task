<?php
include('koneksi.php');

if (isset($_GET['add'])) {
    $id = $_GET['id'];

    $date = date('Y-m-d', strtotime($_GET['awal']));
    $date_akhir = date('Y-m-d', strtotime($_GET['akhir']));
    //echo "pinjam is $date kembali $date_akhir";
    date_default_timezone_set("America/New_York");
    $pinjam = new DateTime();
    $kembali = new DateTime($date_akhir);

    $perbedaan = $kembali->diff($pinjam);
    $hari = $perbedaan->format("%a");
    $denda = $hari * 1000;



    $sql = "UPDATE buku
    SET pinjam = '$date', kembali = '$date_akhir' ,status = 0, denda='$denda'
    WHERE id=$id";
    $update = mysqli_query($konek, $sql);
    if (!$update) {
        die(mysqli_error($konek));
    }
}

$sql = "SELECT * FROM buku WHERE status = 0";
$result = mysqli_query($konek, $sql);
?>


<!doctype html>
<html lang="en">

    <head>
        <!-- Required meta tags -->
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

        <!-- Bootstrap CSS -->
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/css/bootstrap.min.css"
            integrity="sha384-TX8t27EcRE3e/ihU7zmQxVncDAy5uIKz4rEkgIXeMed4M0jlfIDPvg6uqKI2xXr2" crossorigin="anonymous">

        <title>Hello, world!</title>
    </head>

    <body>
        <nav class="navbar navbar-expand-lg navbar-light bg-light">
            <a class="navbar-brand" href="index.php">BukaBuku</a>
            <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNav"
                aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
            </button>
            <div class="collapse navbar-collapse" id="navbarNav">
                <ul class="navbar-nav">
                    <li class="nav-item ">
                        <a class="nav-link" href="index.php">Peminjaman </a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="pengembalian.php">Pengembalian</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="pembayaran.php">Pembayaran</a>
                    </li>
                </ul>
            </div>
        </nav>

        <div class="container">
            <h1>Pengembalian</h1>
            <div class="row mt-5">
                <table class="table">
                    <thead>
                        <tr>
                            <th scope="col">No</th>
                            <th scope="col">Judul</th>
                            <th scope="col">Penulis</th>
                            <th scope="col">Tanggal Pinjam</th>
                            <th scope="col">Tanggal Kembali</th>
                            <th scope="col">Denda</th>
                            <th scope="col">Action</th>
                        </tr>
                    </thead>
                    <tbody>
                        <?php
                    $i = 1;
                    $j = 1;
                    while ($row = mysqli_fetch_array($result, MYSQLI_ASSOC)) {
                        if ($row['denda'] == 0) {
                            echo "<tr>";
                            echo "<td>$i</td>";
                            echo "<td>{$row['judul']}</td>";
                            echo "<td>{$row['penulis']}</td>";
                            echo "<td>{$row['pinjam']}</td>";
                            echo "<td>{$row['kembali']}</td>";
                            echo "<td>{$row['denda']}</td>";
                            echo "<td><a class='btn btn-primary' name='kembali' href='proses.php?id={$row['id']}'>Kembalikan<a/></td>";
                            $i++;
                        } else {
                            $j++;
                        }
                    }

                    ?>
                    </tbody>
                </table>
            </div>
            <?php
        if ($j > 1) {
            echo "<h1>Ada buku yang terlambat dikembalikan. Periksa halaman pembayaran<h1/>";
        } else if ($j == 1 && $i == 1) {
            echo "<h1>tidak ada buku yang dipinjam<h1/>";
        }
        ?>
        </div>

        <!-- Optional JavaScript; choose one of the two! -->

        <!-- Option 1: jQuery and Bootstrap Bundle (includes Popper) -->
        <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"
            integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous">
        </script>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/js/bootstrap.bundle.min.js"
            integrity="sha384-ho+j7jyWK8fNQe+A12Hb8AhRq26LrZ/JpcUGGOn+Y7RsweNrtN/tE3MoK7ZeZDyx" crossorigin="anonymous">
        </script>
    </body>

</html>
<?php

mysqli_close($konek);
?>
