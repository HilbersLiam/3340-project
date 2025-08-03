<?php
require_once "Classes/Dbh.php";
require_once "Classes/Products.php";
$productsobj = new Products();

// start the session before any html.
if (session_status() === PHP_SESSION_NONE) {
    include_once "config.php";
}

?>
<!DOCTYPE html>
<html lang="en">

<head>
    <title>Wheelspire | Premium Toy-Sized Model Cars for Collectors & Enthusiasts </title>
    <meta name="description" content="Discover high-quality toy-sized model cars at Wheelspire. Perfect for collectors, hobbyists, and car lovers of all ages. 
    Shop detailed replicas of your favorite vehicles today.">
    <link rel="stylesheet" href="styles/main.css">
    <link rel="stylesheet" href="styles/products.css">
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Inter:ital,opsz,wght@0,14..32,100..900;1,14..32,100..900&display=swap" rel="stylesheet">
</head>

<body class="darkmode">
    <?php include 'navbar.php'; ?>
    <section class="hero">
        <div class="center">
            <div class="hero-content">
                <div class="hero-text">
                    <h2>
                        Built for Collectors.</span>
                        <br>
                        Designed to Impress.</span>
                    </h2>
                    <p class="hero-subheading">Discover detailed replicas of the cars you love.</p>
                    <div class="hero-cta">
                        <a href="Categories/all-products.php"class="products-link">Products</a>
                        <a href="signupform.php" class="signup-link">Signup</a>
                    </div>
                </div>
                <img src="Assets/Hero-car.png" class="hero-car" alt="Blue Car" />
            </div>
        </div>
        <svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 1440 320">
            <path fill="var(--bg-primary)" fill-opacity="1" d="M0,224L80,202.7C160,181,320,139,480,149.3C640,160,800,224,960,218.7C1120,213,1280,139,1360,101.3L1440,64L1440,320L1360,320C1280,320,1120,320,960,320C800,320,640,320,480,320C320,320,160,320,80,320L0,320Z"></path>
        </svg>
    </section>
    <main>
        <div class="center">
            <div class="best-selling">
                <h3 class="section-headers">Best Selling Products</h3>
                <div class="products">
                    <?php $productsobj->display_products("Ferrari") ?>
                </div>
            </div>
        </div>
    </main>

    <?php include 'footer.php'; ?>
</body>

</html>