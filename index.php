<?php
	@session_start();
	require_once 'modules/functions.php';
	$page = '';
	require_once 'config/connection.php';
	require_once 'views/fixed/head.php';
	require_once 'views/fixed/nav.php';
	
	if (isset($_GET['page'])) {
		$page = $_GET['page'];
	
		switch ($page) {
			case 'naslovna':
				require_once "views/pages/home.php";
				break;
			case 'login':
				require_once "views/pages/login.php";
				break;
			case 'post':
				require_once 'views/pages/post.php';
				break;
			case 'register':
				require_once "views/pages/register.php";
				break;
			case 'kontakt':
				require_once "views/pages/contact.php";
				break;
			case 'o autoru':
				require_once "views/pages/about.php";
				break;
			case 'activate':
				require_once "views/pages/activate.php";
				break;
				case '403':
				require_once "views/pages/403.php";
				break;
			default:
				require_once 'views/pages/404.php';
				break;
		}
 
	} else {
		require_once "views/pages/home.php";

	}

		
	require_once 'views/fixed/footer.php';

?>


