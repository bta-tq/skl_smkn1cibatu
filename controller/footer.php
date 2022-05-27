<div class="navbar navbar-inverse navbar-fixed-bottom">
    <?php
    require "config.php";
    $p = mysqli_query($koneksi, "SELECT * FROM tbl_profil WHERE  id_profil='1'");
    while ($data = mysqli_fetch_array($p)) {

        
        

        echo '<h5 align="center" style="color:#ffff;">Copyright &copy ' . $data['tahun'] . ' . ' . $data['nm_aplikasi'] . ' . All Rights Reserved.</h5>';
    }
    ?>
    <li align='center'><a href="https://linktr.ee/bartaq" target="_blank" style="color:#ffff; size='5';"><b>Ahmad Bari Taqiyyah</b></a></li>
</div>