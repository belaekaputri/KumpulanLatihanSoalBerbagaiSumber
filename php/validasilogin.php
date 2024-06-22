<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Pendaftaran</title>
    <style>
     @import url('https://fonts.googleapis.com/css2?family=Merriweather:wght@700&family=Roboto:wght@500&display=swap');
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
    .noteInput input[type=text] , 
    .noteInput input[type=password] ,
    .noteInput input[type=checkbox] ,
    button[type=submit]
    {
    margin:5px;
    padding:5px;
    font-size: 12px;
    font-family: "Merriweather", serif;
    font-weight: 700;
    font-style: normal;
    }
    p{
    font-family: "Merriweather", serif;
    font-weight: 700;
    font-style: normal;
    font-size:12px;
    }
    
    .noteInput button{
        background-color:#3c42c1;
        color:white;
        border-radius: 5px;
      
    }
    .v5{
        display:flex;
    }
 
    .noteInput input[type=text], .noteInput input[type=password]{
        outline:none;
        border-radius: 3px;
    }
    .noteInput input[type=text]:focus,.noteInput input[type=checkbox]:focus,.noteInput input[type=password]:focus{
        border: 2px solid #3c42c1b0;
    }
    </style>
</head>
<body>
        <form method="POST" class="noteInput">
            <input type="text"  name="nm" placeholder="Name">
            <input type="password"  name="pw"  id="pw" placeholder="password">
            <div class="v5">
            <input type="checkbox" onclick="myFunction()">
            <p>Tampilkan Password</p>
            </div>
            <button type="submit" name="log">Log In</button>
        </form>
        <script>
            function myFunction() {
                var x = document.getElementById("pw");
                if (x.type === "password") {
                    x.type = "text";
                } else {
                    x.type = "password";
                }
            }
        </script>
</body>
</html>
<?php
/* syarat passwordnya adalah kebalikan dari kata yang diinputkan selain itu gagal login */
function kata($str){
    $newString="";
    for ($i = strlen($str) - 1; $i >= 0; $i--) { 
        $newString .= $str[$i]; // or newString = newString + str[i];
    }
    return $newString;
}
 if(isset($_POST['log']))
 {
    $nm =$_POST['nm'];
    $pw =$_POST['pw'];

    if($nm  && $pw==kata($nm)) {
        echo " <script>
        alert('Berhasil Login ... !! ');
    </script>";
    } 
     else if($nm && $pw=!kata($pw)) {
        echo " <script>
        alert('Gagal Login ... !! ');
    </script>";
    } else{
      echo " <script>
        alert('Gagal Login ... !! ');
    </script>";
    }

 }
?>

