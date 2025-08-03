<?php
require_once "../Classes/Dbh.php";
require_once "../Classes/Products.php";
$productsobj = new Products();
// Require once will include this php file in every page on the website.
// Config file for security.

// start the session before any html.
if (session_status() === PHP_SESSION_NONE) {
    include_once "../config.php";
}
?>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">

    <title>Project</title>
    <link rel="stylesheet" href="/Project/styles/main.css">
    <link rel="stylesheet" href="/Project/styles/products.css">
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Inter:ital,opsz,wght@0,14..32,100..900;1,14..32,100..900&display=swap" rel="stylesheet">
</head>

<body class="darkmode">
    <?php include '../navbar.php'; ?>
    <div class="products-background">
        <div class="center">
            <main>
                <div class="products">
                    <?php $productsobj->display_products("Nissan") ?>
                </div>
            </main>
        </div>
    </div>
    <?php include '../footer.php'; ?>

</body>

</html>