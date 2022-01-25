<?php

require 'fungsional.php';

if(isset($_POST["login"])){

    $Username = $_POST['username'];
    $Password= $_POST['password'];

    $result = mysqli_query($conn, "SELECT * FROM users WHERE username = '$Username'");


    if(mysqli_num_rows($result) == 1){


        $row = mysqli_fetch_assoc($result);
        if(password_verify($Password, $row['password'])){
            header("Location:index.php");
            exit;
        }
    }

}
    $error = true;

?>

<!DOCTYPE html>
<html lang="en">

<head>

    <title>Halaman Login</title>
</head>

<body>

    <h1>Halaman Login</h1>

    <?php if (isset ($error)) : ?>
    <p style="color:red; font-style : italic;">Username/Password Salah !</p>

    <?php endif; ?>



    <form action="" method="post">

        <div>
            <label for="username"> Username : </label>
            <input type="text" name="username" id="username" placeholder="masukan username">
        </div>

        <div>
            <label for="password"> Password : </label>
            <input type="password" name="password" id="password" placeholder="masukan password">
        </div>


        <button type="submit" name="login">Login</button>





    </form>

    <p>Gaada akun kah ?</p>

    <button><a href="tambahadmin.php">Register</a></button>

</body>

</html>