<?php 
    include  "boot.php";
    ?>
    <div class="container col-5">
<form class="form from-control" action="" method="POST" >
  <div class="mb-3">
    <label for="exampleInputEmail1" class="form-label">Nama : </label>
    <input type="text" class="form-control" id="exampleInputEmail1" aria-describedby="" name="nama"required>

    <label for="exampleInputEmail1" class="form-label">Kelas : </label>
    <input type="text" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp" name="kelas"required>
  

    <label for="exampleInputEmail1" class="form-label">Jurusan : </label>
    <input type="text" class="form-control" id="exampleInputEmail1" aria-describedby="" name="jurusan"required>

    <label for="exampleInputEmail1" class="form-label">jk : </label>
    <input type="text" class="form-control" id="exampleInputEmail1" aria-describedby="" name="jk"required>

    <label for="exampleInputEmail1" class="form-label">tgl_daftar : </label>
    <input type="date" class="form-control" id="exampleInputEmail1" aria-describedby="" name="tgl"required>

     
    <label for="exampleInputEmail1" class="form-label">Eskul : </label>
    <input type="text" class="form-control" id="exampleInputEmail1" aria-describedby="" name="Eskul"required>

     
    <label for="exampleInputEmail1" class="form-label">setatus : </label>
    <input type="text" class="form-control" id="exampleInputEmail1" aria-describedby="" name="status"required>


<div class="text-end">
  <button type="submit" class="btn btn-primary mt-3">Simpan</button>

</div>

</form>
</div>

<?php
include "koneksi.php";

if ($_SERVER["REQUEST_METHOD"] == "POST") {
    // Mengambil data dari form
    $nama = $_POST["nama"];
    $kelas = $_POST["kelas"];
    $jurusan = $_POST["jurusan"];
    $jk = $_POST["jk"];
    $tgl = $_POST["tgl"];
    $Eskul = $_POST["Eskul"];
    $status = $_POST["status"];

    // Memastikan tidak ada data yang kosong
    if ($nama == "") {
        echo "Maaf, nama wajib diisi.";
    } else {
        // Eksekusi query untuk menyimpan data
        $query = "INSERT INTO siswa (nama, kelas, jurusan, jk, tgl_daftar, Eskul, status) VALUES ('$nama', '$kelas', '$jurusan', '$jk', '$tgl', '$Eskul', '$status')";
        if ($konek->query($query) === TRUE) {
            echo "Data berhasil disimpan.";
        } else {
            echo "Error: " . $query . "<br>" . $konek->error;
        }
    }
}
?>
