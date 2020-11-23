<?php

include('koneksi.php');

if (isset($_GET['id'])) {
    $id = $_GET['id'];


    // $result = mysqli_query($konek, $sql);
    // $show = mysqli_fetch_array($result);


} else {
    echo "<p>error<p/>";
}
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
            <div class="row mt-5 d-flex justify-content-center">
                <?php
            $sql = "SELECT * FROM buku WHERE id=$id";
            $result = mysqli_query($konek, $sql);
            $status;
            while ($row = mysqli_fetch_array($result)) {
                $status = $row['status'];
                echo "<div class='col-md-6 pl-5'>" .
                    " <img src='{$row['image']} ' alt='' srcset=''>" .
                    "</div>" .
                    "<div class='col-md-6 pt-3'>" .
                    "<h5 class='card-title'>{$row['judul']}</h5>" .
                    " <h6 class='card-text'>Genre: {$row['genre']}</h6>" .
                    " <h6 class='card-text'>Author: {$row['penulis']}</h6>" .
                    " <p class='card-text pt-2'>{$row['deskripsi']}</p>";
            }
            ?>

                <form action='pengembalian.php' method='get'>
                    <label for=''> <strong>Tanggal Pinjam</strong> </label> <br>
                    <input type='date' name='awal' id='' value="<?php echo date("Y-m-d"); ?>">
                    <br>
                    <label for=''> <strong>Tanggal Kembali</strong> </label> <br>
                    <input type='date' name='akhir' id='' value="<?php echo date("Y-m-d"); ?>"> <br>
                    <?php
                if ($status == 1) {
                    echo " <button type='submit' name='add' class='btn btn-success'>Pinjam Buku</button>";
                } else {
                    echo
                        "<button type='submit' name='add' class='btn btn-danger' disabled>Tidak Tersedia</button>";
                }
                ?>

                    <input type="hidden" name="id" value="<?= $id; ?>">
                    <a class='btn btn-primary mt-3 mb-3' href='index.php'>Back to Home</a>
                </form>
            </div>


        </div>
        </div>


        <!-- Option 1: jQuery and Bootstrap Bundle (includes Popper) -->
        <script src=" https://code.jquery.com/jquery-3.5.1.slim.min.js"
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
