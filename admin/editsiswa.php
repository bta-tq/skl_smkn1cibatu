<?php
session_start();
if (isset($_SESSION['username']) and $_SESSION['pass']) {
?>
    <?php
    include "adm-header.php";
    ?>
    <div class="container">
        <div class="row" style="margin-top: 30px;">
            <div class="col-sm-3">
                <?php
                include "adm-menu.php";
                ?>
            </div>
            <div class="col-sm-9">
                <div id="rightPan">
                    <div class="well">
                        <div class="cleaner_h5"></div>
                        <div id="hasil"></div>
                        <div class="cleaner_h5"></div>
                        <fieldset>
                            <div class=" alert alert-dismissable alert-success">
                                <h4 align="center"><b>SISTEM INFORMASI KELULUSAN</br>UPDATE DATA SISWA</b></h4>
                            </div>
                            <?php
                            include "../controller/config.php";
                            $no = $_GET['no'];
                            $q = mysqli_query($koneksi, "SELECT * from tbl_siswa where no='$no'");
                            while ($r = mysqli_fetch_array($q)) {
                            ?>
                                <form class="form-horizontal" method="post" action="updatesiswa.php">
                                    <input type="hidden" class="form-control" name="no" value="<?php echo $r['no']; ?>" size="50" style="text-align: left;">
                                    <div class="input-group">
                                        <span class="input-group-addon" id="basic-addon1" style="min-width: 170px; text-align: left;"><b>NISN</b></span>
                                        <input type="text" class="form-control" name="nisn" value="<?php echo $r['nisn']; ?>" size="50" style="text-align: left;">
                                    </div>
                                    </br>
                                    <div class="input-group">
                                        <span class="input-group-addon" id="basic-addon1" style="min-width: 170px; text-align: left;"><b>NAMA SISWA</b></span>
                                        <input type="text" class="form-control" name="name" value="<?php echo $r['name']; ?>" size="50" style="text-align: left;">
                                    </div>
                                    </br>
                                    <div class="input-group">
                                        <span class="input-group-addon" id="basic-addon1" style="min-width: 170px; text-align: left;"><b>TEMPAT LAHIR</b></span>
                                        <input type="text" class="form-control" name="addresse" value="<?php echo $r['addresse']; ?>" size="50" style="text-align: left;">
                                    </div>
                                    </br>
                                    <div class="input-group">
                                        <span class="input-group-addon" id="basic-addon1" style="min-width: 170px; text-align: left;"><b>TANGGAL LAHIR</b></span>
                                        <input type="text" class="form-control" name="tgllhr" value="<?php echo $r['tgllhr']; ?>" size="50" style="text-align: left;">
                                    </div>
                                    </br>
                                    <div class="input-group">
                                        <span class="input-group-addon" id="basic-addon1" style="min-width: 170px; text-align: left;"><b>KELAS</b></span>
                                        <input type="text" class="form-control" name="kelas" value="<?php echo $r['kelas']; ?>" size="50" style="text-align: left;">
                                    </div>
                                    </br>
                                    <div class="input-group">
                                        <span class="input-group-addon" id="basic-addon1" style="min-width: 170px; text-align: left;"><b>STATUS KELULUSAN</b></span>
                                        <input type="text" class="form-control" name="ket" value="<?php echo $r['ket']; ?>" size="50" style="text-align: left;">
                                    </div>
                                    </br>
                                    <div class="form-group" style="margin-bottom: -10px;">
                                        <p align="left">
                                            <input type="submit" value="UPDATE" name="simpan" class="btn btn-danger" />
                                            <a class="btn btn-info" href="siswa" value=""><b>KEMBALI</b></a>
                                        </p>
                                    </div>
                                <?php
                            }
                                ?>
                                </form>
                        </fieldset>
                    </div>
                </div>
            </div>
        </div>
        <?php
        include "../controller/footer.php";
        ?>
        </body>

        </html>
    <?php
} else { ?>
    <?php
    echo "<meta http-equiv='refresh' content='0; url=../login'>";
}
    ?>