<!DOCTYPE html>
<html>
<link rel="stylesheet" href="header2.css" />

<head>
    <meta name=”viewport” content=”width=device-width, initial-scale=1 ″>
    <title>FlashBrain</title>
</head>

<body>
    <header>
        <div class="logo-container">
            <h1>FlashBrain</h1>
    </header>

    <nav>
        <?php
        if (@$_SESSION["uye_id"]) {
            echo '<a href="index.php">Main Page</a>';
            echo '<a href="profil.php?kadi=' . @$_SESSION["uye_kadi"] . '">Profile</a>';
            echo '<a href="uyelik.php?p=cikis">Log Out</a>';
            echo '<a href="whoarewe.html">Who Are We</a>';
            echo '<a href="packages.html">Packages</a>';
            echo '<a href="comminication.html">Comunication</a>';
        } else {
            echo '<a href="index.php">Main Page</a>';
            echo '<a href="uyelik.php?p=kayit">Sign Up</a>
             <a href="uyelik.php">Sign İn</a>
             <a href="whoAreWe.html">Who Are We</a>
             <a href="packages.html">Packages</a>
             <a href="comminication.html">Comunication</a>';
        }
        ?>

    </nav>
</body>

</html>