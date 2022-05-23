<div class="navbar navbar-inverse navbar-fixed-top">
    <div class="container">
        <div class="navbar-header">
            <?php
            require "config.php";
            $p = mysqli_query($koneksi, "SELECT * FROM tbl_profil WHERE  id_profil='1'");
            while ($data = mysqli_fetch_array($p)) {
                echo '<a href="" class="navbar-brand"><img src="images/home.png" height="100%"><b>&nbsp&nbsp ' . $data['nm_aplikasi'] . '</b> </a>';
            } ?>
            <button class="navbar-toggle" type="button" data-toggle="collapse" data-target="#navbar-main">
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
            </button>
        </div>
        <div class="navbar-collapse collapse" id="navbar-main">
            <ul class="nav navbar-nav navbar-right">
            <li><a href="https://www.smkn1cibatu.sch.id/" target="_blank"><span class='glyphicon glyphicon-home' aria-hidden='true'></span>&nbsp;<b> KUNJUNGI WEB SEKOLAH</b></a></li>
            <li><a href="carino"><span class='glyphicon glyphicon-search' aria-hidden='true'></span>&nbsp;<b> CARI NOMOR UJIAN</b></a></li>
            <li><a href="../caridata"><span class='glyphicon glyphicon-qrcode' aria-hidden='true'></span>&nbsp;<b> CEK KELULUSAN</b></a></li>
            <li><a href="login"><span class='glyphicon glyphicon-lock' aria-hidden='true'></span>&nbsp;<b> LOGIN</b></a></li>
            </ul>
        </div>
    </div>
</div>