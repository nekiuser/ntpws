<?php
	 # Stop Hacking attempt
	 define('__APP__', TRUE);
    
	 ini_set('display_errors', 1);
	 ini_set('display_startup_errors', 1);
	 error_reporting(E_ALL);
   
	 # Start session
	 session_start();
	//db connect
	include ("dbconnect.php");
    # Variables MUST BE INTEGERS
     if(isset($_GET['menu'])) { $menu   = (int)$_GET['menu']; }
     if(isset($_GET['action'])) { $action   = (int)$_GET['action']; }

    # Variables MUST BE STRINGS A-Z
    if(!isset($_POST['_action_']))  { $_POST['_action_'] = FALSE;  }

    if (!isset($menu)) { $menu = 1; }
	include_once("functions.php");

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
		<link
		href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/css/bootstrap.min.css"
		rel="stylesheet"
		integrity="sha384-Zenh87qX5JnK2Jl0vWa8Ck2rdkQ2Bzep5IDxbcnCeuOxjzrPF/et3URy9Bv1WTRi"
		crossorigin="anonymous"
		/>
		<link rel="stylesheet" href="style.css">
	</head>
  <body class="d-flex flex-column">
  <header>
    <div class="hero-image">
	<div class="hero-text">Hidrosense</div>
    </div>
	<nav>';
			include "menu.php";
		print '</nav>
    </header>';
	print'
	<main'; 
    if ($menu == 2) { 
      print ' class="d-flex flex-column"'; 
    }
    print'>';

	if (isset($_SESSION['message'])) {
		print $_SESSION['message'];
		unset($_SESSION['message']);
	}

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
    // Register
    else if ($menu == 5) { 
		include("register.php"); 
	  }
	  // Sign In
	  else if ($menu == 6) { 
		include("signin.php"); 
	  }
	  // Sign In
	  else if ($menu == 7 || $menu == 8 || $menu == 9) { 
		include("admin.php"); 
	  }
	  // Gallery
	  else if ($_GET['menu'] == 10) { 
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


