<html>

<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8">
    <title>ctk_print_skl</title>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no">
    <meta name="apple-mobile-web-app-capable" content="yes">
    <link rel="stylesheet" type="text/css" href="style.css">
    <link rel="icon" type="image/png" href="../images/logo_sekolah.png">
    <style type="text/css">
        @import "style.css";

        .tab1 td {
            border: 1px solid darkgray;
            border-collapse: collapse;
            padding: 0 10px;
            margin-left: auto;
            margin-right: auto;
        }

        .tab2 {
            border: none;
        }
    </style>
    </style>

</head>

<body style="background: url('../images/bg.png') repeat;">
    <div class="container">
        <div class="row" style="margin-top: 5px;">
            <div class="col-sm-2"></div>
            <div class="col-sm-8">
                <div class="wellprint">
                    <table width='100%' class="tab2">
                        <tr>
                            <!-- Awal pengaturan KOP Surat Kelulusan Siswa -->
                            <td width='10%'>
                                <p align='left'><img src='../images/logo_prov.png' height='100' /></p>
                            </td>
                            <td>
                                <h4 align='center'><b>PEMERINTAH DAERAH PROVINSI JAWA BARAT</br>DINAS PENDIDIKAN</br>CABANG DINAS PENDIDIKAN WILAYAH IV</b></h4>
                                <h3 align='center' style="margin-top: -10px;"><b>SMK NEGERI 1 CIBATU PURWAKARTA</b></h3>
                                <h6 align='center' style="margin-top: -10px;">Jl. Raya Sadang-Subang Desa Cipinang Kecamatan Cibatu Purwakarta Jawa Barat 41182</h6>
                                <h6 align='center' style="margin-top: -10px;">Telp. (0264) 8396042 Website: www.smkn1cibatu.sch.id Email: smkn1cibatu@yahoo.co.id</h6>
                                <h5 align='center' style="margin-top: -10px;"><b>Teknik Pemesinan - Teknik Kendaraan Ringan Otomotif - Teknik Komputer dan Jaringan</br>Otomatisasi dan Tata Kelola Perkantoran - Akuntansi dan Keuangan Lembaga</b></h5>
                            </td>
                            <!-- Akhir pengaturan KOP Surat Kelulusan Siswa -->
                        </tr>
                    </table>
                    <hr style="margin-top: -5px;">
                    <?php
                    function tgl_indo($tanggal)
                    {
                        $bulan = array(
                            1 =>   'Januari',
                            'Februari',
                            'Maret',
                            'April',
                            'Mei',
                            'Juni',
                            'Juli',
                            'Agustus',
                            'September',
                            'Oktober',
                            'November',
                            'Desember'
                        );
                        $pecahkan = explode('/', $tanggal);
                        // variabel pecahkan 0 = tanggal
                        // variabel pecahkan 1 = bulan
                        // variabel pecahkan 2 = tahun
                        return $pecahkan[0] . ' ' . $bulan[(int)$pecahkan[1]] . ' ' . $pecahkan[2];
                    }
                    include('config.php');
                    $no = $_GET['no'];
                    $q = mysqli_query($koneksi, "SELECT * FROM tbl_siswa INNER JOIN tbl_jurusan ON tbl_siswa.kd_jurusan = tbl_jurusan.kd_jurusan WHERE no = '$no'");
                    $arr = array(1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27);
                    $aa = mysqli_query($koneksi, "SELECT * FROM tbl_mapel WHERE no_urut IN ('" . implode("','", $arr) . "') ORDER BY no_urut ASC");
                    while ($data = mysqli_fetch_array($q)) {
                        echo "  <table width='100%' class='tab2'>";
                        echo "  <tr class='success'>
                                    <td colspan='4' align='center'><font color='#000000' size='5' style='font-weight: bold;';><b><u>SURAT KETERANGAN LULUS</u></b></td>
                                </tr>
                                <tr class='nomorsurat'>
                                    <td colspan='4' align='center'><font color='#000000' size='2' style='font-weight: bold;';>Nomor   : 423.7/234/SMKN1Cibatu.Cadisdik.Wil.IV<br></td>
                                </tr>
                                <tr class='sambutan'>
                                    <td colspan='4' align='justify'>
                                        <p>Kepala " . $data['sekolah'] . ", selaku Ketua Penyelenggara Ujian Sekolah Tahun Pelajaran 2021/2022 berdasarkan :</br>1. Ketuntasan dari seluruh program pembelajaran pada kurikulum 2013;</br>2. Kriteria kelulusan dari satuan pendidikan sesuai dengan peraturan perundang-undangan;</br>3. Rapat Pleno Dewan Guru tentang Kelulusan pada tanggal 02 Juni 2022</p>.
                                    </td>
                                </tr>
                                <tr class='sambutan'>
                                    <td colspan='4' align='justify'>
                                        <p>Menerangkan bahwa :</p>.
                                    </td>
                                </tr>
                                <tr style='text-indent: 40px;'>
                                    <td>Nama </td>
                                    <td colspan='3'><font style='text-transform: capitalize;'><strong>:  " . $data['name'] . "</strong></font></td>
                                </tr>
                                <tr class='secondary' style='text-indent: 40px;'><td>Tempat dan Tanggal Lahir </td>
                                    <td colspan='3'><font style='text-transform: uppercase;'><strong>:  " . $data['addresse'] . ", " . tgl_indo($data['tgllhr']) . "</strong></font></td>
                                </tr>
                                <tr class='secondary' style='text-indent: 40px;'><td width='250'>Nama Orang Tua </td>
                                    <td><strong>:  " . $data['noujian'] . "</strong></td>
                                </tr>
                                <tr class='secondary' style='text-indent: 40px;'><td width='250'>Nomor Induk Siswa </td>
                                    <td><strong>:  " . $data['nis'] . "</strong></td>
                                </tr>
                                <tr class='secondary' style='text-indent: 40px;'><td width='250'>Nomor Induk Siswa Nasional </td>
                                    <td><strong>:  " . $data['nisn'] . "</strong></td>
                                </tr>
                                
                                <tr style='text-indent: 40px;'><td>Kompetensi Keahlian </td>
                                    <td colspan='3'><strong>:  " . $data['nm_jurusan'] . "</strong></td>
                                </tr>
                                
                                <tr style='text-indent: 40px;'><td>Dinyatakan </td>
                                    <td colspan='3'><font style='text-transform: capitalize;'><strong>: </strong></font></td>
                                </tr>
                                
                                <tr class='warning'>
                                    <td colspan='4' align='center'><font color='#0066FF' size='5' style='text-transform: uppercase;'><b>" . $data['ket'] . "</b></td>
                                </tr>
                                <tr class='danger'>
                                    <td colspan='4' align='left'>
                                        <p>Dengan nilai sebagai berikut :</p>.
                                    </td>
                                </tr>
                                </table>";
                                // <tr class='danger'>
                                //     <td colspan='4' align='left'>
                                //         <p style='text-indent: 40px;'><b>Catatan:</b> Jika ada perbedaan data pengumuman online dan manual, maka yang menjadi acuan 
                                //         adalah dokumen asli Kelulusan yang telah disahkan, ditandatangani oleh Kepala Sekolah <b>" . $data['sekolah'] . "</b> dan 
                                //         diberi cap basah sekolah</p>.
                                //     </td>
                                // </tr>
                        // echo "<div class='page_break_after'></div>";
                        echo "  <table width='100%' class='tab1'>
                                <tr class='success'>
                                    <td colspan='3' align='center'><font color='#000000' size='4' style='font-weight: bold;'>DAFTAR NILAI SEKOLAH</td>
                                </tr>
                                <tr class='danger'>
                                    <td width='20' align='center'><strong>No</strong></td>
                                    <td width='460' align='center'><strong>Mata Pelajaran</strong></td>
                                    <td width='100' align='center'><strong>Nilai Ujian Sekolah</strong></td>
                                </tr>
                                <tr class='warning'>
                                    <td colspan='3' align='center'><b>A. Muatan Nasional</b></td>
                                </tr> ";
                        while ($data1 = mysqli_fetch_array($aa)) {
                            if ($data1['no_urut'] == 1) {
                                echo "  <tr>
                                            <td>1.</td>
                                            <td>$data1[nm_mapel]</td>
                                            <td colspan='3' align='center'><strong> " . $data['1'] . "</strong></td>
                                        </tr>";
                            }
                            if ($data1['no_urut'] == 2) {
                                echo "  <tr>
                                            <td>2.</td>
                                            <td>$data1[nm_mapel] </td>
                                            <td colspan='3' align='center'><strong> " . $data['2'] . "</strong></td>
                                        </tr>";
                            }
                            if ($data1['no_urut'] == 3) {
                                echo "  <tr>
                                            <td>3.</td>
                                            <td>$data1[nm_mapel] </td>
                                            <td colspan='3' align='center'><strong> " . $data['3'] . "</strong></td>
                                        </tr>";
                            }
                            if ($data1['no_urut'] == 4) {
                                echo "  <tr><td>4.</td>
                                            <td>$data1[nm_mapel] </td>
                                            <td colspan='3' align='center'><strong> " . $data['4'] . "</strong></td>
                                        </tr>";;
                            }
                            if ($data1['no_urut'] == 5) {
                                echo "  <tr><td>5.</td>
                                            <td>$data1[nm_mapel] </td>
                                            <td colspan='3' align='center'><strong> " . $data['5'] . "</strong></td>
                                        </tr>";;
                            }
                            if ($data1['no_urut'] == 6) {
                                echo "  <tr><td>6.</td>
                                            <td>$data1[nm_mapel] </td>
                                            <td colspan='3' align='center'><strong> " . $data['6'] . "</strong></td>
                                        </tr>";;
                            }
                            if ($data1['no_urut'] == 7) {
                                echo "  <tr class='warning'>
                                            <td colspan='3' align='center'><b>Muatan Kewilayahan</b></td>
                                        </tr>";
                                echo "  <tr><td>1.</td>
                                            <td>$data1[nm_mapel] </td>
                                            <td colspan='3' align='center'><strong> " . $data['7'] . "</strong></td>
                                        </tr>";
                            }
                            if ($data1['no_urut'] == 8) {
                                echo "  <tr><td>2.</td>
                                            <td>$data1[nm_mapel] </td>
                                            <td colspan='3' align='center'><strong> " . $data['8'] . "</strong></td>
                                        </tr>";
                            }
                            if ($data1['no_urut'] == 9) {
                                echo "  <tr><td>3.</td>
                                            <td>$data1[nm_mapel] </td>
                                            <td colspan='3' align='center'><strong> " . $data['9'] . "</strong></td>
                                        </tr>";
                            }

                            // Untuk Jurusan TKJ
                            if ($data['nm_jurusan'] == "TEKNIK KOMPUTER DAN JARINGAN") {
                                if ($data1['no_urut'] == 10) {
                                    echo "  <tr class='warning'>
                                                <td colspan='3' align='center'><b>C. Kompetensi Keahlian</b></td>
                                            </tr>";
                                    echo "  <tr><td>1.</td>
                                                <td>$data1[nm_mapel] </td>
                                                <td colspan='3' align='center'><strong> " . $data['10'] . "</strong></td>
                                            </tr>";
                                }
                                if ($data1['no_urut'] == 11) {
                                    echo "  <tr><td>2.</td>
                                                <td>$data1[nm_mapel] </td>
                                                <td colspan='3' align='center'><strong> " . $data['11'] . "</strong></td>
                                            </tr>";
                                }
                                if ($data1['no_urut'] == 12) {
                                    echo "  <tr><td>3.</td>
                                                <td>$data1[nm_mapel] </td>
                                                <td colspan='3' align='center'><strong> " . $data['12'] . "</strong></td>
                                            </tr>";
                                }
                                if ($data1['no_urut'] == 13) {
                                    echo "  <tr><td>4.</td>
                                                <td>$data1[nm_mapel] </td>
                                                <td colspan='3' align='center'><strong> " . $data['13'] . "</strong></td>
                                            </tr>";
                                }
                                if ($data1['no_urut'] == 14) {
                                    echo "  <tr><td>5.</td>
                                                <td>$data1[nm_mapel] </td>
                                                <td colspan='3' align='center'><strong> " . $data['14'] . "</strong></td>
                                            </tr>";
                                }
                            }
                            // Untuk TKRO
                            if ($data['nm_jurusan'] == "TEKNIK KENDARAAN RINGAN OTOMOTIF") {
                                if ($data1['no_urut'] == 15) {
                                    echo "  <tr class='warning'>
                                                <td colspan='3' align='center'><b>C. Kompetensi Keahlian</b></td>
                                            </tr>";
                                    echo "  <tr><td>1.</td>
                                                <td>$data1[nm_mapel] </td>
                                                <td colspan='3' align='center'><strong> " . $data['15'] . "</strong></td>
                                            </tr>";
                                }
                                if ($data1['no_urut'] == 16) {
                                    echo "  <tr><td>2.</td>
                                                <td>$data1[nm_mapel] </td>
                                                <td colspan='3' align='center'><strong> " . $data['16'] . "</strong></td>
                                            </tr>";
                                }
                                if ($data1['no_urut'] == 17) {
                                    echo "  <tr><td>3.</td>
                                                <td>$data1[nm_mapel] </td>
                                                <td colspan='3' align='center'><strong> " . $data['17'] . "</strong></td>
                                            </tr>";
                                }
                                if ($data1['no_urut'] == 18) {
                                    echo "  <tr><td>4.</td>
                                                <td>$data1[nm_mapel] </td>
                                                <td colspan='3' align='center'><strong> " . $data['18'] . "</strong></td>
                                            </tr>";
                                }
                                if ($data1['no_urut'] == 19) {
                                    echo "  <tr><td>5.</td>
                                                <td>$data1[nm_mapel] </td>
                                                <td colspan='3' align='center'><strong> " . $data['19'] . "</strong></td>
                                            </tr>";
                                            echo "  <tr class='warning'>
                                            <td colspan='2' align='center'><b>Rata-Rata</b></td>
                                            <td colspan='3' align='center'><strong> " . $data['35'] . "</strong></td>
                                        </tr>";
                                }
                            }

                            // Untuk TPM
                            if ($data['nm_jurusan'] == "TEKNIK PEMESINAN") {
                                if ($data1['no_urut'] == 20) {
                                    echo "  <tr class='warning'>
                                                <td colspan='3' align='center'><b>C. Kompetensi Keahlian</b></td>
                                            </tr>";
                                    echo "  <tr><td>1.</td>
                                                <td>$data1[nm_mapel] </td>
                                                <td colspan='3' align='center'><strong> " . $data['20'] . "</strong></td>
                                            </tr>";
                                }
                                if ($data1['no_urut'] == 21) {
                                    echo "  <tr><td>2.</td>
                                                <td>$data1[nm_mapel] </td>
                                                <td colspan='3' align='center'><strong> " . $data['21'] . "</strong></td>
                                            </tr>";
                                }
                                if ($data1['no_urut'] == 22) {
                                    echo "  <tr><td>3.</td>
                                                <td>$data1[nm_mapel] </td>
                                                <td colspan='3' align='center'><strong> " . $data['22'] . "</strong></td>
                                            </tr>";
                                }
                                if ($data1['no_urut'] == 23) {
                                    echo "  <tr><td>4.</td>
                                                <td>$data1[nm_mapel] </td>
                                                <td colspan='3' align='center'><strong> " . $data['23'] . "</strong></td>
                                            </tr>";
                                }
                                if ($data1['no_urut'] == 24) {
                                    echo "  <tr><td>5.</td>
                                                <td>$data1[nm_mapel] </td>
                                                <td colspan='3' align='center'><strong> " . $data['24'] . "</strong></td>
                                            </tr>";
                                }
                            }

                            // Untuk AKL
                            if ($data['nm_jurusan'] == "AKUNTANSI DAN KEUANGAN LEMBAGA") {
                                if ($data1['no_urut'] == 25) {
                                    echo "  <tr class='warning'>
                                                <td colspan='3' align='center'><b>C. Kompetensi Keahlian</b></td>
                                            </tr>";
                                    echo "  <tr><td>1.</td>
                                                <td>$data1[nm_mapel] </td>
                                                <td colspan='3' align='center'><strong> " . $data['25'] . "</strong></td>
                                            </tr>";
                                }
                                if ($data1['no_urut'] == 26) {
                                    echo "  <tr><td>2.</td>
                                                <td>$data1[nm_mapel] </td>
                                                <td colspan='3' align='center'><strong> " . $data['26'] . "</strong></td>
                                            </tr>";
                                }
                                if ($data1['no_urut'] == 27) {
                                    echo "  <tr><td>3.</td>
                                                <td>$data1[nm_mapel] </td>
                                                <td colspan='3' align='center'><strong> " . $data['27'] . "</strong></td>
                                            </tr>";
                                }
                                if ($data1['no_urut'] == 28) {
                                    echo "  <tr><td>4.</td>
                                                <td>$data1[nm_mapel] </td>
                                                <td colspan='3' align='center'><strong> " . $data['28'] . "</strong></td>
                                            </tr>";
                                }
                                if ($data1['no_urut'] == 29) {
                                    echo "  <tr><td>5.</td>
                                                <td>$data1[nm_mapel] </td>
                                                <td colspan='3' align='center'><strong> " . $data['29'] . "</strong></td>
                                            </tr>";
                                }
                            }

                            // Untuk OTKP
                            if ($data['nm_jurusan'] == "OTOMATISASI DAN TATA KELOLA PERKANTORAN") {
                                if ($data1['no_urut'] == 30) {
                                    echo "  <tr class='warning'>
                                                <td colspan='3' align='center'><b>C. Kompetensi Keahlian</b></td>
                                            </tr>";
                                    echo "  <tr><td>1.</td>
                                                <td>$data1[nm_mapel] </td>
                                                <td colspan='3' align='center'><strong> " . $data['30'] . "</strong></td>
                                            </tr>";
                                }
                                if ($data1['no_urut'] == 31) {
                                    echo "  <tr><td>2.</td>
                                                <td>$data1[nm_mapel] </td>
                                                <td colspan='3' align='center'><strong> " . $data['31'] . "</strong></td>
                                            </tr>";
                                }
                                if ($data1['no_urut'] == 32) {
                                    echo "  <tr><td>3.</td>
                                                <td>$data1[nm_mapel] </td>
                                                <td colspan='3' align='center'><strong> " . $data['32'] . "</strong></td>
                                            </tr>";
                                }
                                if ($data1['no_urut'] == 33) {
                                    echo "  <tr><td>4.</td>
                                                <td>$data1[nm_mapel] </td>
                                                <td colspan='3' align='center'><strong> " . $data['33'] . "</strong></td>
                                            </tr>";
                                }
                                if ($data1['no_urut'] == 34) {
                                    echo "  <tr><td>5.</td>
                                                <td>$data1[nm_mapel] </td>
                                                <td colspan='3' align='center'><strong> " . $data['34'] . "</strong></td>
                                            </tr>";
                                            echo "  <tr class='warning'>
                                            <td colspan='2' align='center'><b>C. Kompetensi Keahlian</b></td>
                                        </tr>";
                                }
                            }
                            
                            // else {
                            //     if ($data1['no_urut'] == 19) {
                            //         echo "  <tr class='warning'>
                            //                 <td colspan='3' align='center'><b>Kelompok C (Peminatan)</b></td>
                            //             </tr>";
                            //         echo "  <tr><td>1.&nbsp;$data1[nm_mapel] </td>
                            //                 <td colspan='3' align='center'><strong> " . $data['15'] . "</strong></td>
                            //             </tr>";
                            //     }
                            //     if ($data1['no_urut'] == 20) {
                            //         echo "  <tr><td>2.&nbsp;$data1[nm_mapel] </td>
                            //                     <td colspan='3' align='center'><strong> " . $data['14'] . "</strong></td>
                            //                 </tr>";
                            //     }
                            //     if ($data1['no_urut'] == 21) {
                            //         echo "  <tr><td>3.&nbsp;$data1[nm_mapel] </td>
                            //                     <td colspan='3' align='center'><strong> " . $data['14'] . "</strong></td>
                            //                 </tr>";
                            //     }
                            //     if ($data1['no_urut'] == 22) {
                            //         echo "  <tr><td>4.&nbsp;$data1[nm_mapel] </td>
                            //                     <td colspan='3' align='center'><strong> " . $data['14'] . "</strong></td>
                            //                 </tr>";
                            //     }
                            //     if ($data1['no_urut'] == 25) {
                            //         echo "  <tr class='warning'>
                            //                     <td colspan='3'>5. Pilihan Lintas Minat/Pendalaman Minat</td>
                            //                 </tr>";
                            //         echo "  <tr><td>&nbsp;&nbsp;&nbsp;&nbsp; a. $data1[nm_mapel] </td>
                            //                     <td colspan='3' align='center'><strong> " . $data['23'] . "</strong></td>
                            //                 </tr>";
                            //     }
                            //     if ($data1['no_urut'] == 26) {
                            //         echo "  <tr><td>&nbsp;&nbsp;&nbsp;&nbsp; b. $data1[nm_mapel] </td>
                            //                     <td colspan='3' align='center'><strong> " . $data['24'] . "</strong></td>
                            //                 </tr>";
                            //     }
                            // }
                        }
                        echo "</table>";
                    }
                    ?>
                </div>
            </div>
            <div class="col-sm-2"></div>
        </div>
    </div>
    <script>
        window.print();
    </script>
</body>

</html>