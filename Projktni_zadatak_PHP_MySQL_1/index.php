<?php
print '
<!DOCTYPE HTML>
<html>
	<head>
		<title>Hidrosense</title>
		<meta http-equiv="content-type" content="text/html; charset=UTF-8">
		<meta name="description" content="Prvi zadatak">
		<meta name="keywords" content="Hidrosens, navodnjavenje, biljke, voda, portal, moje biljke">
		<meta name="author" content="Ivan Merkaš">
		<meta name="viewport" content="width=device-width, initial-scale=1">
		<link rel="shortcut icon" type="image/x-icon" href="favicon.ico">
		<link rel="stylesheet" href="style.css">
	</head>
<body>
	<header>
		<div class="hero-image">
			<div class="hero-text">Hidrosense</div>
		</div>
		<nav>
			<ul>
			  <li><a href="index.php?menu=1">Home</a></li>
			  <li><a href="index.php?menu=2">News</a></li>
			  <li><a href="index.php?menu=3">Contact</a></li>
			  <li><a href="index.php?menu=4">About</a></li>
			  <li><a href="index.php?menu=5">Gallery</a></li>
			</ul>
		</nav>
	</header>
	<main>';
	// Homepage
    if (!isset($_GET['menu']) || $_GET['menu'] == 1) {
      include 'home.php';
    }
    // News
    else if ($_GET['menu'] == 2) { 
      include("news.php"); 
    }
    // Contact
    else if ($_GET['menu'] == 3) { 
      include("contact.php"); 
    }
    // About us
    else if ($_GET['menu'] == 4) { 
      include("aboutus.php"); 
    }
    // Gallery
    else if ($_GET['menu'] == 5) { 
      include("gallery.php"); 
    }	
	print '
	</main>';
	print '
	<footer>
		<p>Copyright &copy; 2023 Ivan Merkaš. <a href="https://github.com/nekiuser/ntpws"><img src="img/GitHub-Mark.png" title="Github" alt="Github"></a></p>
	</footer>
</body>
</html>';
?>
//http://localhost/ntpws_merkas/Projktni_zadatak_PHP_MySQL_2/index.php?menu=1

