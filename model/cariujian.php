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

include "../config.php";
$nis = $_POST['nis']; //get the nama value from form
$q = "SELECT * from tbl_siswa where nis = '$nis' "; //query to get the search result
$result = mysqli_query($koneksi, $q); //execute the query $q
$num_rows = mysqli_num_rows($result);

if ($num_rows == 0)
  include "no-result.php";
else
  echo "
    <div class='well' style='margin-bottom: 50px;'>";
echo "<table min-width='100' class='table table-striped table-bordered'>";
while ($data = mysqli_fetch_array($result)) {  //fetch the result from query into an array
  echo "
  <tr class='success'>
    <td colspan='4' align='center'><font color='#000000' size='4' style='font-weight: bold;';><b>IDENTITAS PESERTA DIDIK</b></td>
  </tr>

  <tr class='first'><td width='250'>No Ujian </td>
    <td width='480'><strong>:  " . $data['noujian'] . "</strong></td>
  </tr>

  <tr><td>Nama Lengkap</td>
    <td colspan='3'><font style='text-transform: capitalize;'><strong>:  " . $data['name'] . "</strong></font></td>
  </tr>

  <tr class='secondary'><td width='250'>NISN </td>
    <td width='480'><strong>:  " . $data['nisn'] . "</strong></td>
  </tr>

  <tr class='third'><td width='250'>NIS </td>
    <td width='480'><strong>:  " . $data['nis'] . "</strong></td>
  </tr>
  
  <tr><td>Kelas</td>
    <td colspan='3'><strong>:  " . $data['kelas'] . "</strong></td>
  </tr>
  
  </table>";

  }