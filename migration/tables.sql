CREATE TABLE IF NOT EXISTS `migrations` (
  `migration` varchar(255) NOT NULL,
  `created_at` timestamp NOT NULL,
   UNIQUE KEY `migration` (`migration`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

CREATE TABLE IF NOT EXISTS `status` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `point` mediumint(8) unsigned NOT NULL,
  `topoint` mediumint(8) unsigned NOT NULL,
  `name` varchar(50) NOT NULL,
  `color` varchar(10) NOT NULL DEFAULT '',
   PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO `status` (`id`, `point`, `topoint`, `name`, `color`) VALUES
(1, 0, 249, 'Новичок', ''),
(2, 250, 499, 'Местный', ''),
(3, 500, 999, 'Продвинутый', ''),
(4, 1000, 1999, 'Бывалый', ''),
(5, 2000, 3999, 'Специалист', '#FF8800'),
(6, 4000, 5999, 'Знаток', '#DC143C'),
(7, 6000, 7999, 'Мастер', '#0080FF'),
(8, 8000, 9999, 'Профессионал', '#000000'),
(9, 10000, 14999, 'Гуру', '#32608A'),
(10, 15000, 100000, 'Легенда', '#ff0000');


CREATE TABLE IF NOT EXISTS `guest` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(11) unsigned NOT NULL,
  `text` text NOT NULL,
  `ip` varchar(15) NOT NULL,
  `brow` varchar(25) NOT NULL,
  `reply` text NOT NULL,
  `updated_at` timestamp NOT NULL,
  `created_at` timestamp NOT NULL,
  PRIMARY KEY (`id`),
  KEY `created_at` (`created_at`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


CREATE TABLE IF NOT EXISTS `users` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `login` varchar(20) NOT NULL,
  `password` varchar(40) NOT NULL,
  `email` varchar(50) NOT NULL,
  `gender` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `level` enum('user', 'moder', 'supermoder', 'admin', 'superamdin') NOT NULL DEFAULT 'user',
  `name` varchar(20) NOT NULL DEFAULT '',
  `country` varchar(30) NOT NULL DEFAULT '',
  `city` varchar(50) NOT NULL DEFAULT '',
  `info` text NOT NULL,
  `site` varchar(50) NOT NULL DEFAULT '',
  `icq` varchar(10) NOT NULL DEFAULT '',
  `skype` varchar(32) NOT NULL DEFAULT '',
  `jabber` varchar(50) NOT NULL DEFAULT '',
  `birthday` varchar(10) NOT NULL DEFAULT '',
  `newprivat` smallint(4) unsigned NOT NULL DEFAULT '0',
  `allforum` int(11) unsigned NOT NULL DEFAULT '0',
  `allguest` int(11) unsigned NOT NULL DEFAULT '0',
  `allcomments` int(11) unsigned NOT NULL DEFAULT '0',
  `themes` varchar(20) NOT NULL DEFAULT '',
  `postguest` smallint(4) unsigned NOT NULL DEFAULT '0',
  `postnews` smallint(4) unsigned NOT NULL DEFAULT '0',
  `postprivat` smallint(4) unsigned NOT NULL DEFAULT '0',
  `postforum` smallint(4) unsigned NOT NULL DEFAULT '0',
  `themesforum` smallint(4) unsigned NOT NULL DEFAULT '0',
  `timezone` varchar(3) NOT NULL DEFAULT '0',
  `point` int(11) unsigned NOT NULL DEFAULT '0',
  `money` int(11) unsigned NOT NULL DEFAULT '0',
  `ban` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `timeban` datetime NULL DEFAULT NULL,
  `timelastban` datetime NULL DEFAULT NULL,
  `reasonban` text NOT NULL,
  `loginsendban` varchar(20) NOT NULL DEFAULT '',
  `totalban` tinyint(2) unsigned NOT NULL DEFAULT '0',
  `explainban` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `status` varchar(50) NOT NULL DEFAULT '',
  `avatar` varchar(50) NULL DEFAULT NULL,
  `picture` varchar(50) NOT NULL DEFAULT '',
  `rating` mediumint(8) NOT NULL DEFAULT '0',
  `posrating` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `negrating` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `keypasswd` varchar(20) NOT NULL DEFAULT '',
  `timepasswd` datetime NULL DEFAULT NULL,
  `timebonus` datetime NULL DEFAULT NULL,
  `confirmreg` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `confirmregkey` varchar(30) NOT NULL DEFAULT '',
  `secquest` varchar(50) NOT NULL DEFAULT '',
  `secanswer` varchar(40) NOT NULL DEFAULT '',
  `ipbinding` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `newchat` int(11) unsigned NOT NULL DEFAULT '0',
  `privacy` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `apikey` varchar(32) NOT NULL DEFAULT '',
  `updated_at` timestamp NOT NULL,
  `created_at` timestamp NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `login` (`login`),
  UNIQUE KEY `email` (`email`),
  KEY `level` (`level`),
  KEY `point` (`point`),
  KEY `money` (`money`),
  KEY `rating` (`rating`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

CREATE TABLE IF NOT EXISTS `setting` (
  `name` varchar(25) NOT NULL,
  `value` varchar(255) NOT NULL,
  PRIMARY KEY (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


INSERT INTO `setting` (`name`, `value`) VALUES
('addbansend', '1'),
('advertpoint', '2000'),
('allowextload', 'zip,rar,txt,jpg,jpeg,gif,png,mp3,mp4,3gp,wav,mmf,mid,midi,sis,jar,jad'),
('avatarpoints', '150'),
('avatarsize', '32'),
('avatarupload', '1000'),
('avatarweight', '1024'),
('avlist', '10'),
('avtorlist', '10'),
('banlist', '10'),
('blacklist', '10'),
('blogcomm', '10'),
('blogexprated', '72'),
('blogexpread', '72'),
('bloggroup', '10'),
('blogpost', '10'),
('blogvotepoint', '50'),
('boarddays', '30'),
('boardspost', '5'),
('bonusmoney', '500'),
('bookadds', '1'),
('bookpost', '10'),
('cache', '1'),
('captcha_amplitude', '4'),
('captcha_credits', '0'),
('captcha_maxlength', '5'),
('captcha_noise', '1'),
('captcha_spaces', '0'),
('captcha_symbols', '0123456789'),
('chatpost', '10'),
('closedsite', '0'),
('copy', '© RotorCMS'),
('copyfoto', '1'),
('description', 'Краткое описани вашего сайта на движке RotorCMS'),
('downcomm', '10'),
('downlist', '10'),
('downupload', '1'),
('editfiles', '10'),
('editforumpoint', '500'),
('editnickpoint', '300'),
('editratingpoint', '150'),
('editstatus', '0'),
('editstatusmoney', '3000'),
('editstatuspoint', '1000'),
('emails', ''),
('errorlog', '1'),
('expiresloads', '72'),
('expiresmail', '3'),
('expiresrated', '72'),
('filesize', '5242880'),
('fileupfoto', '3000'),
('fileupload', '5242880'),
('floodstime', '30'),
('forumextload', 'zip,rar,txt,jpg,jpeg,gif,png,mp3,mp4,3gp,wav,pdf'),
('forumloadpoints', '150'),
('forumloadsize', '1048576'),
('forumpost', '10'),
('forumtem', '10'),
('forumtextlength', '3000'),
('fotolist', '5'),
('guestsuser', 'Гость'),
('guesttextlength', '1000'),
('gzip', '0'),
('headlines', '20'),
('home', 'rotorcms.ll'),
('includenick', '1'),
('incount', '5'),
('invite', '0'),
('ipbanlist', '10'),
('keypass', ''),
('keywords', 'Ключевые слова вашего сайта на движке RotorCMS'),
('lastnews', '1'),
('lastusers', '100'),
('lifelist', '10'),
('limitmail', '300'),
('limitoutmail', '100'),
('loglist', '10'),
('logos', 'Сайт на движке RotorCMS'),
('logotip', ''),
('maxbantime', '43200'),
('maxblogcomm', '300'),
('maxblogpost', '50000'),
('maxdowncomm', '300'),
('maxkommnews', '500'),
('maxlogdat', '100'),
('maxpostbook', '500'),
('maxpostchat', '500'),
('maxpostgallery', '100'),
('moneyname', 'рублей,рубля,рубль'),
('nickname', ''),
('nocheck', 'txt,dat,gif,jpg,jpeg,png,zip'),
('onlinelist', '10'),
('onlines', '1'),
('openreg', '1'),
('performance', '0'),
('photoexprated', '72'),
('photogroup', '10'),
('postchanges', '10'),
('postgallery', '10'),
('postnews', '10'),
('previewsize', '150'),
('privatpost', '10'),
('privatprotect', '50'),
('proxy', ''),
('referer', '300'),
('registermoney', '1000'),
('regkeys', '0'),
('reglist', '10'),
('regmail', '1'),
('rekuseroptprice', '100'),
('rekuserpost', '10'),
('rekuserprice', '1000'),
('rekusershow', '1'),
('rekusertime', '12'),
('rekusertotal', '50'),
('rotorversion', '5.0.0'),
('scorename', 'баллов,балла,балл'),
('screensize', '500'),
('screenupload', '2097152'),
('screenupsize', '5000'),
('sendmail', '0'),
('sendmoneypoint', '150'),
('session', '1'),
('showlink', '10'),
('showref', '10'),
('showuser', '10'),
('smilelist', '10'),
('statusdef', 'Дух'),
('statusname', 'Суперадмин,Админ,Старший модер,Модератор,Пользователь'),
('themes', 'default'),
('timezone', 'Europe/Moscow'),
('title', 'RotorCMS 5.0'),
('touchthemes', '0'),
('userlist', '10'),
('webthemes', 'default'),
('ziplist', '20');

CREATE TABLE IF NOT EXISTS `blacklist` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `type` tinyint(1) unsigned NOT NULL,
  `value` varchar(100) NOT NULL,
  `user_id` int(11) unsigned NOT NULL,
  `updated_at` timestamp NOT NULL,
  `created_at` timestamp NOT NULL,
  PRIMARY KEY (`id`),
  KEY `type` (`type`,`value`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


CREATE TABLE IF NOT EXISTS `invite` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `invite` varchar(20) NOT NULL,
  `user_id` int(11) unsigned NOT NULL,
  `invited_user_id` int(11) unsigned DEFAULT NULL,
  `used` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `updated_at` timestamp NOT NULL,
  `created_at` timestamp NOT NULL,
  PRIMARY KEY (`id`),
  KEY `user_id` (`user_id`),
  KEY `used` (`used`),
  KEY `created_at` (`created_at`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

CREATE TABLE IF NOT EXISTS `logs` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(11) unsigned NOT NULL,
  `request` varchar(255) NOT NULL DEFAULT '',
  `referer` varchar(255) NOT NULL DEFAULT '',
  `ip` varchar(15) NOT NULL DEFAULT '',
  `brow` varchar(25) NOT NULL DEFAULT '',
  `created_at` timestamp NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


CREATE TABLE IF NOT EXISTS `news` (
  `id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(11) unsigned NOT NULL,
  `title` varchar(100) NOT NULL,
  `text` text NOT NULL,
  `image` varchar(30) NOT NULL DEFAULT '',
  `comments` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `closed` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `top` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `updated_at` timestamp NOT NULL,
  `created_at` timestamp NOT NULL,
  PRIMARY KEY (`id`),
  KEY `created_at` (`created_at`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


CREATE TABLE IF NOT EXISTS `photo` (
  `id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(11) unsigned NOT NULL,
  `title` varchar(50) NOT NULL,
  `text` text NOT NULL,
  `link` varchar(30) NOT NULL,
  `rating` mediumint(8) NOT NULL DEFAULT '0',
  `closed` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `comments` int(11) unsigned NOT NULL DEFAULT '0',
  `updated_at` timestamp NOT NULL,
  `created_at` timestamp NOT NULL,
  PRIMARY KEY (`id`),
  KEY `user_id` (`user_id`),
  KEY `created_at` (`created_at`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


CREATE TABLE IF NOT EXISTS `forums` (
  `id` smallint(4) unsigned NOT NULL AUTO_INCREMENT,
  `sort` smallint(4) unsigned NOT NULL DEFAULT '0',
  `parent_id` smallint(4) unsigned NOT NULL DEFAULT '0',
  `title` varchar(50) NOT NULL,
  `description` varchar(100) NOT NULL DEFAULT '',
  `closed` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `updated_at` timestamp NOT NULL,
  `created_at` timestamp NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


CREATE TABLE IF NOT EXISTS `topics` (
  `id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `forum_id` smallint(4) unsigned NOT NULL,
  `title` varchar(50) NOT NULL,
  `user_id` int(11) unsigned NOT NULL,
  `closed` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `locked` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `mods` varchar(100) NOT NULL DEFAULT '',
  `note` varchar(255) NOT NULL DEFAULT '',
  `updated_at` timestamp NOT NULL,
  `created_at` timestamp NOT NULL,
  PRIMARY KEY (`id`),
  KEY `forum_id` (`forum_id`),
  KEY `locked` (`locked`),
  KEY `created_at` (`created_at`),
  FULLTEXT KEY `title` (`title`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


CREATE TABLE IF NOT EXISTS `posts` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `forum_id` smallint(4) unsigned NOT NULL,
  `topic_id` mediumint(8) unsigned NOT NULL,
  `user_id` int(11) unsigned NOT NULL,
  `text` text NOT NULL,
  `ip` varchar(15) NOT NULL,
  `brow` varchar(25) NOT NULL,
  `updated_at` timestamp NOT NULL,
  `created_at` timestamp NOT NULL,
  PRIMARY KEY (`id`),
  KEY `forum_id` (`forum_id`),
  KEY `user_id` (`user_id`),
  KEY `topic_id` (`topic_id`,`created_at`),
  FULLTEXT KEY `text` (`text`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;



CREATE TABLE IF NOT EXISTS `downs` (
  `id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `cats_id` smallint(4) unsigned NOT NULL DEFAULT '0',
  `title` varchar(100) NOT NULL,
  `text` text NOT NULL,
  `link` varchar(50) NOT NULL,
  `user_id` int(11) unsigned NOT NULL,
  `author` varchar(50) NOT NULL,
  `site` varchar(50) NOT NULL DEFAULT '',
  `screen` varchar(50) NOT NULL DEFAULT '',
  `comments` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `raiting` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `rated` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `load` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `loaded_at` datetime NULL DEFAULT NULL,
  `app` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `notice` text NOT NULL,
  `active` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `updated_at` timestamp NOT NULL,
  `created_at` timestamp NOT NULL,
  PRIMARY KEY (`id`),
  KEY `cats_id` (`cats_id`),
  KEY `created_at` (`created_at`),
  FULLTEXT KEY `text` (`text`),
  FULLTEXT KEY `title` (`title`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


CREATE TABLE IF NOT EXISTS `blogs_categories` (
  `id` smallint(4) unsigned NOT NULL AUTO_INCREMENT,
  `order` smallint(4) unsigned NOT NULL DEFAULT '0',
  `name` varchar(100) NOT NULL,
  `count` mediumint(8) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


CREATE TABLE IF NOT EXISTS `blogs` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `cats_id` smallint(4) unsigned NOT NULL DEFAULT '0',
  `user_id` int(11) unsigned NOT NULL,
  `title` varchar(50) NOT NULL,
  `text` text NOT NULL,
  `tags` varchar(100) NOT NULL,
  `rating` mediumint(8) NOT NULL DEFAULT '0',
  `read` int(11) unsigned NOT NULL DEFAULT '0',
  `comments` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `updated_at` timestamp NOT NULL,
  `created_at` timestamp NOT NULL,
  PRIMARY KEY (`id`),
  KEY `cats_id` (`cats_id`),
  KEY `user_id` (`user_id`),
  KEY `created_at` (`created_at`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

CREATE TABLE IF NOT EXISTS `chat` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(11) unsigned NOT NULL,
  `text` text NOT NULL,
  `ip` varchar(15) NOT NULL,
  `brow` varchar(25) NOT NULL,
  `edit_user_id` int(11) DEFAULT NULL,
  `updated_at` timestamp NOT NULL,
  `created_at` timestamp NOT NULL,
  PRIMARY KEY (`id`),
  KEY `created_at` (`created_at`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

CREATE TABLE IF NOT EXISTS `visit` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(11) unsigned NOT NULL,
  `self` varchar(100) NOT NULL DEFAULT '',
  `page` varchar(100) NOT NULL DEFAULT '',
  `ip` varchar(15) NOT NULL DEFAULT '',
  `count` int(11) unsigned NOT NULL DEFAULT '0',
  `created_at` timestamp NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `user_id` (`user_id`),
  KEY `created_at` (`created_at`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

CREATE TABLE IF NOT EXISTS `spam` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `section` enum('guest', 'forum') NOT NULL,
  `post_id` int(11) unsigned NOT NULL,
  `user_id` int(11) unsigned NOT NULL,
  `created_at` timestamp NOT NULL,
  PRIMARY KEY (`id`),
  KEY `section` (`section`),
  KEY `created_at` (`created_at`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

CREATE TABLE IF NOT EXISTS `ban` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `ip` varchar(15) NOT NULL,
  `user_id` int(11) unsigned NULL DEFAULT NULL,
  `created_at` timestamp NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `ip` (`ip`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

CREATE TABLE IF NOT EXISTS `smiles` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(25) NOT NULL,
  `code` varchar(20) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `code` (`code`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

TRUNCATE TABLE `smiles`;
INSERT INTO `smiles` (`id`, `name`, `code`) VALUES
(1, ').gif', ':)'),
(2, '(.gif', ':('),
(3, '4moks.gif', ':4moks'),
(4, 'D.gif', ':D'),
(5, 'E.gif', ':E'),
(6, 'aaa.gif', ':aaa'),
(7, 'agree.gif', ':agree'),
(8, 'airkiss.gif', ':airkiss'),
(9, 'atlet.gif', ':atlet'),
(10, 'baby.gif', ':baby'),
(11, 'bant.gif', ':bant'),
(12, 'be.gif', ':be'),
(13, 'blin.gif', ':blin'),
(14, 'blum.gif', ':blum'),
(15, 'bomba.gif', ':bomba'),
(16, 'bounce.gif', ':bounce'),
(17, 'bugaga.gif', ':bugaga'),
(18, 'buhoj.gif', ':buhoj'),
(19, 'bwink.gif', ':bwink'),
(20, 'cold.gif', ':cold'),
(21, 'cool.gif', ':cool'),
(22, 'cry.gif', ':cry'),
(23, 'ded.gif', ':ded'),
(24, 'derisive.gif', ':derisive'),
(25, 'drool.gif', ':drool'),
(26, 'duma.gif', ':duma'),
(27, 'exercise.gif', ':exercise'),
(28, 'faq.gif', ':faq'),
(29, 'fermer.gif', ':fermer'),
(30, 'fingal.gif', ':fingal'),
(31, 'flirt.gif', ':flirt'),
(32, 'fuck.gif', ':fuck'),
(33, 'girl_blum.gif', ':girl_blum'),
(34, 'girl_bye.gif', ':girl_bye'),
(35, 'girl_cry.gif', ':girl_cry'),
(36, 'girl_hide.gif', ':girl_hide'),
(37, 'girl_wink.gif', ':girl_wink'),
(38, 'girls.gif', ':girls'),
(39, 'happy.gif', ':happy'),
(40, 'heart.gif', ':heart'),
(41, 'hello.gif', ':hello'),
(42, 'help.gif', ':help'),
(43, 'help2.gif', ':help2'),
(44, 'hi.gif', ':hi'),
(45, 'infat.gif', ':infat'),
(46, 'kiss.gif', ':kiss'),
(47, 'kiss2.gif', ':kiss2'),
(48, 'klass.gif', ':klass'),
(49, 'krut.gif', ':krut'),
(50, 'krutoy.gif', ':krutoy'),
(51, 'ku.gif', ':ku'),
(52, 'kuku.gif', ':kuku'),
(53, 'kulak.gif', ':kulak'),
(54, 'lamer.gif', ':lamer'),
(55, 'love.gif', ':love'),
(56, 'love2.gif', ':love2'),
(58, 'mail.gif', ':mail'),
(59, 'mister.gif', ':mister'),
(60, 'money.gif', ':money'),
(61, 'moped.gif', ':moped'),
(62, 'musik.gif', ':musik'),
(63, 'nea.gif', ':nea'),
(64, 'net.gif', ':net'),
(65, 'neznaju.gif', ':neznaju'),
(66, 'ninja.gif', ':ninja'),
(67, 'no.gif', ':no'),
(68, 'nono.gif', ':nono'),
(69, 'nozh.gif', ':nozh'),
(70, 'nyam.gif', ':nyam'),
(71, 'nyam2.gif', ':icecream'),
(72, 'obana.gif', ':obana'),
(73, 'ogogo.gif', ':ogogo'),
(74, 'oops.gif', ':oops'),
(75, 'opa.gif', ':opa'),
(76, 'otstoy.gif', ':otstoy'),
(77, 'oy.gif', ':oy'),
(78, 'pirat.gif', ':pirat'),
(79, 'pirat2.gif', ':pirat2'),
(80, 'pistolet.gif', ':pistolet'),
(81, 'pistolet2.gif', ':pistolet2'),
(82, 'pizdec.gif', ':shok3'),
(83, 'poisk.gif', ':poisk'),
(84, 'proud.gif', ':proud'),
(85, 'puls.gif', ':puls'),
(86, 'queen.gif', ':queen'),
(87, 'rap.gif', ':rap'),
(88, 'read.gif', ':read'),
(89, 'respekt.gif', ':respekt'),
(90, 'rok.gif', ':rok'),
(91, 'rok2.gif', ':rok2'),
(92, 'senjor.gif', ':senjor'),
(93, 'shok.gif', ':shok'),
(94, 'shok2.gif', ':shok2'),
(95, 'skull.gif', ':skull'),
(96, 'smert.gif', ':smert'),
(97, 'smoke.gif', ':smoke'),
(98, 'spy.gif', ':spy'),
(99, 'strela.gif', ':strela'),
(100, 'svist.gif', ':svist'),
(101, 'tiho.gif', ':tiho'),
(102, 'vau.gif', ':vau'),
(103, 'victory.gif', ':victory'),
(104, 'visavi.gif', ':visavi'),
(105, 'visavi2.gif', ':visavi2'),
(106, 'vtopku.gif', ':vtopku'),
(107, 'wackogirl.gif', ':wackogirl'),
(108, 'xaxa.gif', ':xaxa'),
(109, 'xmm.gif', ':xmm'),
(110, 'yu.gif', ':yu'),
(111, 'zlo.gif', ':zlo'),
(112, 'ban.gif', ':ban'),
(113, 'ban2.gif', ':ban2'),
(114, 'banned.gif', ':banned'),
(115, 'closed.gif', ':closed'),
(116, 'closed2.gif', ':closed2'),
(117, 'devil.gif', ':devil'),
(118, 'flood.gif', ':flood'),
(119, 'flood2.gif', ':flood2'),
(120, 'huligan.gif', ':huligan'),
(121, 'ment.gif', ':ment'),
(122, 'ment2.gif', ':ment2'),
(123, 'moder.gif', ':moder'),
(124, 'nika.gif', ':girlmoder'),
(125, 'offtop.gif', ':offtop'),
(126, 'pravila.gif', ':pravila'),
(127, 'zona.gif', ':zona'),
(128, 'zub.gif', ':zub'),
(129, 'crazy.gif', ':crazy'),
(130, 'paratrooper.gif', ':moder2'),
(131, 'bug.gif', ':bug'),
(132, 'facepalm.gif', ':facepalm'),
(133, 'wall.gif', ':wall'),
(134, 'boss.gif', ':boss');

CREATE TABLE IF NOT EXISTS `online` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `ip` varchar(15) NOT NULL,
  `brow` varchar(25) NOT NULL,
  `user_id` int(11) unsigned NULL DEFAULT NULL,
  `created_at` timestamp NOT NULL,
  PRIMARY KEY (`id`),
  KEY `ip` (`ip`),
  KEY `user_id` (`user_id`),
  KEY `created_at` (`created_at`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

CREATE TABLE IF NOT EXISTS `counter` (
  `id` tinyint(1) unsigned NOT NULL AUTO_INCREMENT,
  `hours` mediumint(8) unsigned NOT NULL,
  `days` mediumint(8) unsigned NOT NULL,
  `allhosts` int(11) unsigned NOT NULL,
  `allhits` int(11) unsigned NOT NULL,
  `dayhosts` mediumint(8) unsigned NOT NULL,
  `dayhits` mediumint(8) unsigned NOT NULL,
  `hosts24` mediumint(8) unsigned NOT NULL,
  `hits24` mediumint(8) unsigned NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

REPLACE INTO `counter` (`id`, `hours`, `days`, `allhosts`, `allhits`, `dayhosts`, `dayhits`, `hosts24`, `hits24`) VALUES (1, '0', '0', '0', '0', '0', '0', '0', '0');


CREATE TABLE IF NOT EXISTS `counter24` (
  `id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `hour` mediumint(8) unsigned NOT NULL,
  `hosts` mediumint(8) unsigned NOT NULL,
  `hits` mediumint(8) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `hour` (`hour`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

CREATE TABLE IF NOT EXISTS `counter31` (
  `id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `day` mediumint(8) unsigned NOT NULL,
  `hosts` mediumint(8) unsigned NOT NULL,
  `hits` mediumint(8) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `day` (`day`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


CREATE TABLE IF NOT EXISTS `antimat` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `string` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

CREATE TABLE IF NOT EXISTS `avatars` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(20) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO `avatars` (`id`, `name`) VALUES
(1, '1.gif'),
(2, '2.gif'),
(3, '3.gif'),
(4, '4.gif'),
(5, '5.gif'),
(6, '6.gif'),
(7, '7.gif'),
(8, '8.gif'),
(9, '9.gif'),
(10, '10.gif'),
(11, '11.gif'),
(12, '12.gif'),
(13, '13.gif'),
(14, '14.gif'),
(15, '15.gif'),
(16, '16.gif'),
(17, '17.gif'),
(18, '18.gif'),
(19, '19.gif'),
(20, '20.gif'),
(21, '21.gif'),
(22, '22.gif'),
(23, '23.gif'),
(24, '24.gif'),
(25, '25.gif'),
(26, '26.gif'),
(27, '27.gif'),
(28, '28.gif'),
(29, '29.gif'),
(30, '30.gif'),
(31, '31.gif'),
(32, '32.gif'),
(33, '33.gif'),
(34, '34.gif'),
(35, '35.gif'),
(36, '36.gif'),
(37, '37.gif'),
(38, '38.gif'),
(39, '39.gif'),
(40, '40.gif'),
(41, '41.gif'),
(42, '42.gif'),
(43, '43.gif'),
(44, '44.gif'),
(45, '45.gif'),
(46, '46.gif'),
(47, '47.gif'),
(48, '48.gif'),
(49, '49.gif'),
(50, '50.gif'),
(51, '51.gif'),
(52, '52.gif'),
(53, '53.gif'),
(54, '54.gif'),
(55, '55.gif'),
(56, '56.gif'),
(57, '57.gif'),
(58, '58.gif'),
(59, '59.gif'),
(60, '60.gif'),
(61, '61.gif'),
(62, '62.gif'),
(63, '63.gif'),
(64, '64.gif'),
(65, '65.gif'),
(66, '66.gif'),
(67, '67.gif'),
(68, '68.gif'),
(69, '69.gif'),
(70, '70.gif'),
(71, '71.gif'),
(72, '72.gif'),
(73, '73.gif'),
(74, '74.gif'),
(75, '75.gif'),
(76, '76.gif'),
(77, '77.gif'),
(78, '78.gif'),
(79, '79.gif'),
(80, '80.gif'),
(81, '81.gif'),
(82, '82.gif'),
(83, '83.gif'),
(84, '84.gif'),
(85, '85.gif'),
(86, '86.gif'),
(87, '87.gif'),
(88, '88.gif'),
(89, '89.gif'),
(90, '90.gif'),
(91, '91.gif'),
(92, '92.gif'),
(93, '93.gif'),
(94, '94.gif'),
(95, '95.gif'),
(96, '96.gif'),
(97, '97.gif'),
(98, '98.gif'),
(99, '99.gif'),
(100, '100.gif'),
(101, '101.gif'),
(102, '102.gif'),
(103, '103.gif'),
(104, '104.gif'),
(105, '105.gif'),
(106, '106.gif'),
(107, '107.gif'),
(108, '108.gif'),
(109, '109.gif'),
(110, '110.gif'),
(111, '111.gif'),
(112, '112.gif'),
(113, '113.gif'),
(114, '114.gif'),
(115, '115.gif'),
(116, '116.gif'),
(117, '117.gif'),
(118, '118.gif'),
(119, '119.gif'),
(120, '120.gif'),
(121, '121.gif'),
(122, '122.gif'),
(123, '123.gif'),
(124, '124.gif'),
(125, '125.gif'),
(126, '126.gif'),
(127, '127.gif'),
(128, '128.gif'),
(129, '129.gif'),
(130, '130.gif'),
(131, '131.gif'),
(132, '132.gif'),
(133, '133.gif'),
(134, '134.gif'),
(135, '135.gif'),
(136, '136.gif'),
(137, '137.gif'),
(138, '138.gif'),
(139, '139.gif'),
(140, '140.gif'),
(141, '141.gif'),
(142, '142.gif'),
(143, '143.gif'),
(144, '144.gif'),
(145, '145.gif'),
(146, '146.gif'),
(147, '147.gif'),
(148, '148.gif'),
(149, '149.gif'),
(150, '150.gif'),
(151, '151.gif'),
(152, '152.gif'),
(153, '153.gif'),
(154, '154.gif'),
(155, '155.gif'),
(156, '156.gif'),
(157, '157.gif'),
(158, '158.gif'),
(159, '159.gif'),
(160, '160.gif'),
(161, '161.gif'),
(162, '162.gif'),
(163, '163.gif'),
(164, '164.gif'),
(165, '165.gif'),
(166, '166.gif'),
(167, '167.gif'),
(168, '168.gif'),
(169, '169.gif'),
(170, '170.gif'),
(171, '171.gif'),
(172, '172.gif'),
(173, '173.gif'),
(174, '174.gif'),
(175, '175.gif'),
(176, '176.gif'),
(177, '177.gif'),
(178, '178.gif'),
(179, '179.gif'),
(180, '180.gif'),
(181, '181.gif'),
(182, '182.gif'),
(183, '183.gif'),
(184, '184.gif'),
(185, '185.gif'),
(186, '186.gif'),
(187, '187.gif'),
(188, '188.gif'),
(189, '189.gif'),
(190, '190.gif'),
(191, '191.gif'),
(192, '192.gif'),
(193, '193.gif'),
(194, '194.gif'),
(195, '195.gif'),
(196, '196.gif'),
(197, '197.gif'),
(198, '198.gif'),
(199, '199.gif'),
(200, '200.gif'),
(201, '201.gif'),
(202, '202.gif'),
(203, '203.gif'),
(204, '204.gif'),
(205, '205.gif'),
(206, '206.gif'),
(207, '207.gif'),
(208, '208.gif'),
(209, '209.gif'),
(210, '210.gif'),
(211, '211.gif'),
(212, '212.gif'),
(213, '213.gif'),
(214, '214.gif'),
(215, '215.gif'),
(216, '216.gif'),
(217, '217.gif'),
(218, '218.gif'),
(219, '219.gif'),
(220, '220.gif'),
(221, '221.gif'),
(222, '222.gif'),
(223, '223.gif'),
(224, '224.gif'),
(225, '225.gif'),
(226, '226.gif'),
(227, '227.gif'),
(228, '228.gif'),
(229, '229.gif'),
(230, '230.gif'),
(231, '231.gif'),
(232, '232.gif'),
(233, '233.gif'),
(234, '234.gif'),
(235, '235.gif'),
(236, '236.gif'),
(237, '237.gif'),
(238, '238.gif'),
(239, '239.gif'),
(240, '240.gif'),
(241, '241.gif'),
(242, '242.gif'),
(243, '243.gif'),
(244, '244.gif'),
(245, '245.gif'),
(246, '246.gif'),
(247, '247.gif'),
(248, '248.gif'),
(249, '249.gif'),
(250, '250.gif'),
(251, '251.gif'),
(252, '252.gif'),
(253, '253.gif'),
(254, '254.gif'),
(255, '255.gif'),
(256, '256.gif'),
(257, '257.gif'),
(258, '258.gif'),
(259, '259.gif'),
(260, '260.gif'),
(261, '261.gif'),
(262, '262.gif'),
(263, '263.gif'),
(264, '264.gif'),
(265, '265.gif'),
(266, '266.gif'),
(267, '267.gif'),
(268, '268.gif'),
(269, '269.gif'),
(270, '270.gif'),
(271, '271.gif'),
(272, '272.gif'),
(273, '273.gif'),
(274, '274.gif'),
(275, '275.gif'),
(276, '276.gif'),
(277, '277.gif'),
(278, '278.gif'),
(279, '279.gif'),
(280, '280.gif'),
(281, '281.gif'),
(282, '282.gif'),
(283, '283.gif'),
(284, '284.gif'),
(285, '285.gif'),
(286, '286.gif'),
(287, '287.gif'),
(288, '288.gif'),
(289, '289.gif'),
(290, '290.gif'),
(291, '291.gif'),
(292, '292.gif'),
(293, '293.gif'),
(294, '294.gif'),
(295, '295.gif'),
(296, '296.gif'),
(297, '297.gif'),
(298, '298.gif'),
(299, '299.gif'),
(300, '300.gif'),
(301, '301.gif'),
(302, '302.gif'),
(303, '303.gif'),
(304, '304.gif'),
(305, '305.gif'),
(306, '306.gif'),
(307, '307.gif'),
(308, '308.gif'),
(309, '309.gif'),
(310, '310.gif'),
(311, '311.gif'),
(312, '312.gif'),
(313, '313.gif'),
(314, '314.gif'),
(315, '315.gif'),
(316, '316.gif'),
(317, '317.gif'),
(318, '318.gif'),
(319, '319.gif'),
(320, '320.gif'),
(321, '321.gif'),
(322, '322.gif'),
(323, '323.gif'),
(324, '324.gif'),
(325, '325.gif'),
(326, '326.gif'),
(327, '327.gif'),
(328, '328.gif'),
(329, '329.gif'),
(330, '330.gif'),
(331, '331.gif'),
(332, '332.gif'),
(333, '333.gif'),
(334, '334.gif'),
(335, '335.gif'),
(336, '336.gif'),
(337, '337.gif'),
(338, '338.gif'),
(339, '339.gif'),
(340, '340.gif'),
(341, '341.gif'),
(342, '342.gif'),
(343, '343.gif'),
(344, '344.gif'),
(345, '345.gif'),
(346, '346.gif'),
(347, '347.gif'),
(348, '348.gif'),
(349, '349.gif'),
(350, '350.gif'),
(351, '351.gif'),
(352, '352.gif'),
(353, '353.gif'),
(354, '354.gif'),
(355, '355.gif'),
(356, '356.gif'),
(357, '357.gif'),
(358, '358.gif'),
(359, '359.gif'),
(360, '360.gif'),
(361, '361.gif'),
(362, '362.gif'),
(363, '363.gif'),
(364, '364.gif'),
(365, '365.gif'),
(366, '366.gif'),
(367, '367.gif'),
(368, '368.gif'),
(369, '369.gif'),
(370, '370.gif'),
(371, '371.gif'),
(372, '372.gif'),
(373, '373.gif'),
(374, '374.gif'),
(375, '375.gif'),
(376, '376.gif'),
(377, '377.gif'),
(378, '378.gif'),
(379, '379.gif'),
(380, '380.gif'),
(381, '381.gif'),
(382, '382.gif'),
(383, '383.gif'),
(384, '384.gif'),
(385, '385.gif'),
(386, '386.gif'),
(387, '387.gif'),
(388, '388.gif'),
(389, '389.gif'),
(390, '390.gif'),
(391, '391.gif'),
(392, '392.gif'),
(393, '393.gif'),
(394, '394.gif'),
(395, '395.gif'),
(396, '396.gif'),
(397, '397.gif'),
(398, '398.gif'),
(399, '399.gif'),
(400, '400.gif'),
(401, '401.gif'),
(402, '402.gif'),
(403, '403.gif'),
(404, '404.gif'),
(405, '405.gif'),
(406, '406.gif'),
(407, '407.gif'),
(408, '408.gif'),
(409, '409.gif'),
(410, '410.gif'),
(411, '411.gif'),
(412, '412.gif'),
(413, '413.gif'),
(414, '414.gif'),
(415, '415.gif'),
(416, '416.gif'),
(417, '417.gif'),
(418, '418.gif'),
(419, '419.gif'),
(420, '420.gif'),
(421, '421.gif'),
(422, '422.gif'),
(423, '423.gif'),
(424, '424.gif'),
(425, '425.gif'),
(426, '426.gif'),
(427, '427.gif'),
(428, '428.gif'),
(429, '429.gif'),
(430, '430.gif'),
(431, '431.gif'),
(432, '432.gif'),
(433, '433.gif'),
(434, '434.gif'),
(435, '435.gif'),
(436, '436.gif'),
(437, '437.gif'),
(438, '438.gif'),
(439, '439.gif'),
(440, '440.gif'),
(441, '441.gif'),
(442, '442.gif'),
(443, '443.gif'),
(444, '444.gif'),
(445, '445.gif'),
(446, '446.gif'),
(447, '447.gif'),
(448, '448.gif'),
(449, '449.gif'),
(450, '450.gif'),
(451, '451.gif'),
(452, '452.gif'),
(453, '453.gif'),
(454, '454.gif'),
(455, '455.gif'),
(456, '456.gif'),
(457, '457.gif'),
(458, '458.gif'),
(459, '459.gif'),
(460, '460.gif'),
(461, '461.gif'),
(462, '462.gif'),
(463, '463.gif'),
(464, '464.gif'),
(465, '465.gif'),
(466, '466.gif'),
(467, '467.gif'),
(468, '468.gif'),
(469, '469.gif'),
(470, '470.gif'),
(471, '471.gif'),
(472, '472.gif'),
(473, '473.gif'),
(474, '474.gif'),
(475, '475.gif'),
(476, '476.gif'),
(477, '477.gif'),
(478, '478.gif'),
(479, '479.gif'),
(480, '480.gif'),
(481, '481.gif'),
(482, '482.gif'),
(483, '483.gif'),
(484, '484.gif'),
(485, '485.gif'),
(486, '486.gif'),
(487, '487.gif'),
(488, '488.gif'),
(489, '489.gif'),
(490, '490.gif'),
(491, '491.gif'),
(492, '492.gif'),
(493, '493.gif'),
(494, '494.gif'),
(495, '495.gif'),
(496, '496.gif'),
(497, '497.gif'),
(498, '498.gif'),
(499, '499.gif'),
(500, '500.gif'),
(501, '501.gif'),
(502, '502.gif'),
(503, '503.gif'),
(504, '504.gif'),
(505, '505.gif'),
(506, '506.gif'),
(507, '507.gif'),
(508, '508.gif'),
(509, '509.gif'),
(510, '510.gif'),
(511, '511.gif'),
(512, '512.gif'),
(513, '513.gif'),
(514, '514.gif'),
(515, '515.gif'),
(516, '516.gif'),
(517, '517.gif'),
(518, '518.gif'),
(519, '519.gif'),
(520, '520.gif'),
(521, '521.gif'),
(522, '522.gif'),
(523, '523.gif'),
(524, '524.gif'),
(525, '525.gif'),
(526, '526.gif'),
(527, '527.gif'),
(528, '528.gif'),
(529, '529.gif'),
(530, '530.gif'),
(531, '531.gif'),
(532, '532.gif'),
(533, '533.gif'),
(534, '534.gif'),
(535, '535.gif'),
(536, '536.gif'),
(537, '537.gif'),
(538, '538.gif'),
(539, '539.gif'),
(540, '540.gif'),
(541, '541.gif'),
(542, '542.gif'),
(543, '543.gif'),
(544, '544.gif'),
(545, '545.gif'),
(546, '546.gif'),
(547, '547.gif'),
(548, '548.gif');



CREATE TABLE IF NOT EXISTS `inbox` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(11) unsigned NOT NULL,
  `author_id` int(11) unsigned NOT NULL,
  `text` text NOT NULL,
  `created_at` timestamp NOT NULL,
  PRIMARY KEY (`id`),
  KEY `user_id` (`user_id`),
  KEY `created_at` (`created_at`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

CREATE TABLE IF NOT EXISTS `error` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `num` smallint(4) unsigned NOT NULL,
  `request` varchar(255) NOT NULL DEFAULT '',
  `referer` varchar(255) NOT NULL DEFAULT '',
  `user_id` int(11) unsigned NOT NULL,
  `ip` varchar(15) NOT NULL DEFAULT '',
  `brow` varchar(25) NOT NULL DEFAULT '',
  `created_at` timestamp NOT NULL,
  PRIMARY KEY (`id`),
  KEY `num` (`num`,`created_at`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

CREATE TABLE IF NOT EXISTS `notice` (
  `id` smallint(4) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `text` text NOT NULL,
  `user_id` int(11) unsigned NOT NULL,
  `protect` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `created_at` timestamp NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


INSERT INTO `notice` (`id`, `name`, `text`, `user_id`, `protect`) VALUES
(1, 'Приветствие при регистрации в приват', 'Добро пожаловать, %USERNAME%!<br />Теперь Вы полноправный пользователь сайта, сохраните ваш пароль и логин в надежном месте, они пригодятся вам для входа на наш сайт.<br />Перед посещением сайта рекомендуем вам ознакомиться с [url=%SITENAME%/pages/rules.php]правилами сайта[/url], это поможет Вам избежать неприятных ситуаций.<br />Желаем приятно провести время.<br />С уважением, администрация сайта!', 1, 1);


CREATE TABLE IF NOT EXISTS `bookmarks` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(11) unsigned NOT NULL,
  `topic_id` mediumint(8) unsigned NOT NULL,
  `forum_id` smallint(4) unsigned NOT NULL,
  `posts` mediumint(8) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `user_id` (`user_id`),
  KEY `forum_id` (`forum_id`),
  KEY `topic_id` (`topic_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

CREATE TABLE IF NOT EXISTS `socials` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(11) unsigned NOT NULL,
  `network` varchar(255) NOT NULL,
  `uid` varchar(255) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `user_id` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
