<?php
#---------------------------------------------#
#      ********* RotorCMS *********           #
#           Author  :  Vantuz                 #
#            Email  :  visavi.net@mail.ru     #
#             Site  :  http://visavi.net      #
#              ICQ  :  36-44-66               #
#            Skype  :  vantuzilla             #
#---------------------------------------------#
if (!defined('BASEDIR')) {
	header('Location: /index.php');
	exit;
}

// ------------------------ Отключение кеширования -----------------------------//
if (!empty($config['cache'])){
	header("Cache-Control: public");
	header("Expires: ".date("r", time() + 600));
} else {
	header("Cache-Control: no-store, no-cache, must-revalidate");
	header("Expires: ".date("r"));
}

include_once BASEDIR.'/includes/mobile_detect.php';
$browser_detect = new Mobile_Detect();

// ------------------------ Автоопределение системы -----------------------------//
if (empty($config['themes']) && !empty($config['touchthemes'])) {
	if ($browser_detect->isTablet()) {
		$config['themes'] = $config['touchthemes'];
	}
}

if (empty($config['themes']) && !empty($config['webthemes'])) {
	if (!$browser_detect->isMobile() && !$browser_detect->isTablet()) {
		$config['themes'] = $config['webthemes'];
	}
}


if ($config['closedsite'] == 2 && !is_admin() && !strsearch($php_self, array('pages/closed.php', 'input.php'))) {
	redirect($config['home'].'/pages/closed.php');
}

if ($config['closedsite'] == 1 && !is_user() && !strsearch($php_self, array('pages/login.php', 'pages/registration.php', 'mail/lostpassword.php', 'input.php'))) {
	notice('Для входа на сайт необходимо авторизоваться!');
	redirect($config['home'].'/pages/login.php');
}

if (empty($config['themes']) || !file_exists(BASEDIR.'/themes/'.$config['themes'].'/index.php')) {
	$config['themes'] = 'default';
}

include_once (BASEDIR.'/themes/'.$config['themes'].'/index.php');
?>