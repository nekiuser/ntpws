<?php

	//db connect
	include ("dbconnect.php");
    # Variables MUST BE INTEGERS
     if(isset($_GET['menu'])) { $menu   = (int)$_GET['menu']; }
     if(isset($_GET['action'])) { $action   = (int)$_GET['action']; }

    # Variables MUST BE STRINGS A-Z
    if(!isset($_POST['_action_']))  { $_POST['_action_'] = FALSE;  }

    if (!isset($menu)) { $menu = 1; }

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
	<nav>';
			include "menu.php";
		print '</nav>
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
	 // Register
	 else if ($_GET['menu'] == 6) { 
		include("register.php"); 
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


