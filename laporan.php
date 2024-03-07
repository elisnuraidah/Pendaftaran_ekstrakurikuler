<button class="btn" onclick="printDiv('div1')"><i class="bi bi-printer-fill
fs-1"></i></button>
<div id="div1">
    <!--yang di print-->
    <?php
include "koneksi.php";
$tampil=$konek ->query("select*from siswa");
?>
<table class="table table-bordered border-warning">
<tr>
<th scope="col">no</th>
<th scope="col">nama</th>
<th scope="col">kelas</th>
<th scope="col">jurusan</th>
<th scope="col">jk</th>
<th scope="col">tgl_daftar</th>
<th scope="col">Eskul</th>
<th scope="col">Aksi</th>
</tr>


<?php
while($s=$tampil->fetch_array()){
    @$no++;
    echo "<tr>";
    echo "<td>$no</td>";
    echo "<td>$s[nama]</td>";
    echo "<td>$s[kelas]</td>";
    echo "<td>$s[jurusan]</td>";
    echo "<td>$s[jk]</td>";
    echo "<td>$s[tgl_daftar]</td>";
    echo "<td>$s[Eskul]</td>";
    ?>
    
<?php
    echo "</tr>";

}
?>
</table>

<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.11.3/font/bootstrap-icons.min.css">
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN" crossorigin="anonymous">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-C6RzsynM9kWDrMNeT87bh95OGNyZPhcTNXj1NW7RuBCsyN/o0jlpcV8Qyq46cDfL" crossorigin="anonymous"></script>




    <!--tutup halaman yang di print-->
</div>

<script>
    function printDiv(el) {
        var a = document.body.innerHTML;
        var b = document.getElementById(el).innerHTML;
        document.body.innerHTML = b;
        window.print();
        document.body.innerHTML = b;
        window.print();
        document.body.innerHTML = a;
       
    }

</script>
    
