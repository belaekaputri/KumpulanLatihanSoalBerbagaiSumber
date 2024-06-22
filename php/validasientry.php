<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Pendaftaran</title>
    <style>
     body{
        height:100vh;
        display:flex;
        justify-content:center;
        align-items:center;
    }
    .noteInput{
        display:flex;
        flex-direction:column;
        justify-content:space-between;
        border: 2px solid black;
        border-radius: 15px;
        width:300px;
        margin:3px;
        padding:15px;
        background-color: #c9cbf8b0;
        box-shadow: 8px 8px #3c42c1b0;
    }
    .noteInput .v1,.v2,.v3,.v4{
        display:flex;
        align-items:center;
        justify-content:space-between;
    }
    .noteInput h1{
        text-align:center;
        margin-bottom:10px;
    }
    .noteInput input[type=text] ,
    button[type=submit],.noteInput .v4 > select
    {
    margin:5px;
    padding:5px;
    font-size: 12px;
    font-family: "Merriweather", serif;
    font-weight: 700;
    font-style: normal;
    }
    
    .noteInput button{
        background-color:#3c42c1;
        color:white;
        border-radius: 5px;
        width:155px;
    }
    .v5{
        display:flex;
        justify-content:end;
        margin-top:4px;
    }
 
    .noteInput input[type=text],.noteInput select{
        outline:none;
        border-radius: 3px;
    }
    .noteInput input[type=text]:focus,.noteInput input[type=email]:focus,.noteInput select:focus{
        border: 2px solid #3c42c1b0;
    }
    </style>
</head>
<body>
    <div class="container">
        <form method="POST" class="noteInput">
            <div class="v1">
            <label for="nama">Nama</label>
            <input type="text" id="nama" name="nm">
            </div>
            <div class="v2">
            <label for="alamat">Alamat</label>
            <input type="text" id="alamat" name="almt" >
            </div>
            <div class="v3">
            <label for="telepon">Nomor Telepon</label>
            <input type="text" id="telepon" name="tlpn">
            </div>
            <div class="v4">
            <label for="jk">Jenis Kelamin</label>
            <select name="jk" selected >
                <option value="Laki-Laki">Laki-Laki</option>
                <option value="Perempuan">Perempuan</option>
            </select>
            </div>
            <div class="v5">
            <button type="submit" name="log">Submit</button>
            </div>
           
        </form>
    </div>
</body>
</html>
<?php
 if(isset($_POST['log']))
 {
     return validasi();
 }
 //ditunggu kalau ada saran. terimakasih
 function validasi(){

    $nm =$_POST['nm'];
    $almt =$_POST['almt'];
    $tlpn =$_POST['tlpn'];
    $jk =$_POST['jk'];
    $dt=true;

    if(empty($nm)){
        echo "<script> alert(' Nama Tidak Boleh Kosong') </script>";
    }else{
        if(!preg_match("/^[a-zA-z]*$/", $nm))
        {
           
            echo "<script> alert(' Nama Hanya Boleh Berisi Huruf') </script>";
            $dt=false;
        } 
    }
    if(empty($almt)){
        echo "<script> alert(' Alamat Tidak Boleh Kosong') </script>";
    }

    if(empty($tlpn)){
        echo "<script> alert(' Telepon Tidak Boleh Kosong') </script>";
    }else{
        if (!preg_match("/^[0-9]*$/", $tlpn)){
            echo "<script> alert(' Nomor Telopon Hanya Boleh Angka') </script>";
              
              $dt=false;
         
           }
    }

    if( !empty($nm) and !empty($almt)  and !empty($tlpn)  and !empty($jk) and $dt )
    {
        echo "<script>alert('Berhasil')</script>";
        echo "\n \n \n";
        echo "<p>$nm </p>";
        echo "<p>$almt </p>";
        echo "<p>$tlpn </p>";
        echo "<p>$jk </p>";
    }

 }
?>
