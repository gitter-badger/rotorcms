<?php
#---------------------------------------------#
#      ********* RotorCMS *********           #
#           Author  :  Vantuz                 #
#            Email  :  visavi.net@mail.ru     #
#             Site  :  http://visavi.net      #
#              ICQ  :  36-44-66               #
#            Skype  :  vantuzilla             #
#---------------------------------------------#
require_once ('../includes/start.php');
require_once ('../includes/functions.php');
require_once ('../includes/header.php');
include_once ('../themes/header.php');

echo '<img src="/images/img/site.png" alt="image" /> <b>FAQ по сайту</b><br /><br />';

echo '<b>Для чего регистрироваться</b><br />';
echo 'Регистрация предназначена для тех, кто намерен часто заходить на сайт и иметь полный доступ ко все разделам сайта<br />';
echo 'После регистрации у вас появятся новые возможности:<br />';

echo '<b>1</b>. Повышать свой статус (после 6 месяцев пребывания на сайте, вы сможете изменить статус на персональный)<br />';
echo '<b>2</b>. Выбирать, покупать, загружать аватары (Загрузка своего аватара стоит '.moneys($config['avatarupload']).') Аватар будет отображаться возле каждого вашего сообщения<br />';
echo '<b>3</b>. Добавлять свои фотографии в галерею и анкету (Вес картинки не должен превышать '.formatsize($config['filesize']).')<br />';
echo '<b>4</b>. Изменять авторитет другим  пользователям сайта положительными или отрицательным голосом (При активе '.points($config['editratingpoint']).')<br />';
echo '<b>5</b>. Иметь свой собственный контакт и игнор-листы<br />';
echo '<b>6</b>. Изменять темы/скины по своему желанию, которая будет включаться автоматически при авторизации (Большой выбор скинов)<br />';
echo '<b>7</b>. Общаться по внутренней почте сайта с пользователями сайта, писать под своим ником в гостевой, комментариях, форуме<br />';
echo '<b>8</b>. Играть в игры на деньги. Копить их в банке, брать кредит, перечислять, принимать, покупать виртуальные товары<br />';
echo '<b>9</b>. Участвовать в голосованиях на различные темы<br />';
echo '<b>10</b>. Добавлять свои объявления, на определенный срок (Купля,продажа,вакансии,услуги,обмен и т.д.)<br />';
echo '<b>11</b>. Изменять под себя настройки сайта, в частности количество показываемых сообщений в любых сервисах (гостевая, форум и пр.) Чем можно снизить трафик передаваемой информации<br />';

echo '<br />При наборе определенного количества актива, пользователю открываются новые возможности:<br />';

if (!empty($config['addofferspoint'])) {
	echo '<b>'.points($config['addofferspoint']).'</b> - создание тем в "Предложенияx и проблемах"<br />';
}
if (!empty($config['avatarpoints'])) {
	echo '<b>'.points($config['avatarpoints']).'</b> - загрузка персонального аватара<br />';
}
if (!empty($config['creditpoint'])) {
	echo '<b>'.points($config['creditpoint']).'</b> - получение кредита в банке<br />';
}
if (!empty($config['forumloadpoints'])) {
	echo '<b>'.points($config['forumloadpoints']).'</b> - Прикрепление файлов в форуме<br />';
}
if (!empty($config['sendmoneypoint'])) {
	echo '<b>'.points($config['sendmoneypoint']).'</b> - перечисление игровых денег<br />';
}
if (!empty($config['editratingpoint'])) {
	echo '<b>'.points($config['editratingpoint']).'</b> - изменение авторитета пользователям<br />';
}
if (!empty($config['editnickpoint'])) {
	echo '<b>'.points($config['editnickpoint']).'</b> - изменения своего ника<br />';
}
if (!empty($config['editforumpoint'])) {
	echo '<b>'.points($config['editforumpoint']).'</b> - изменение и закрытие своих тем на форуме<br />';
}
if (!empty($config['advertpoint'])) {
	echo '<b>'.points($config['advertpoint']).'</b> - исчезает вся реклама на главной странице сайта<br />';
}
echo '<br />';

echo '<b>Как проходит регистрация</b><br />';
echo '<b>1</b>. Вводите желаемый ник и пароль<br />';
echo '<b>2</b>. Указываете свой email и проверочный код<br />';
echo '<b>3</b>. Нажимаете кнопку регистрации и создается ваш профиль<br />';
echo '<b>4</b>. Теперь если включена функция подтверждения регистрации, то вам на email будет выслан мастер-ключ, который необходим для подтверждения регистрации<br />';
echo '<b>5</b>. Если подтверждение регистрации выключено, то после входа на сайт вы становитесь полноправным пользователем сайта<br />';
echo '<b>6</b>. Теперь вы можете добавить побольше информации о себе в профиле, а также изменить свои настройки<br />';
echo '<b>7</b>. Для пользователей сайта существует функция автологина. Вы можете автоматически входить на сайт. Для этого необходимо сделать закладку '.$config['home'].'/pages/login.php?login=ЛОГИН&amp;password=ПАРОЛЬ<br />';

echo '<br /><b>Зачем нужен статус и авторитет</b><br />';
echo 'Статус нужен для того, чтобы оценить вашу активность на сайте. За каждое сообщение в гостевой, форуме, комментариях начисляется актив. Чем больше актива, тем выше статус.<br />';
echo 'Авторитет нужен для того, чтобы показать ваше значение на сайте. Чем больше у вас положительных голосов, тем больше доверия к вам<br />';

echo '<br /><b>Что мне даст высокий статус</b><br />';
echo 'Самых активных, инициативных и старающихся пользователей могут взять в команду администрации сайта (конечно если у вас есть желание). Но войти в команду не так легко, так как вакансии ограничены. Старайтесь не нарушать правила и у вас будет возможность. Самые активные пользователи всегда находятся на первых местах рейтингах.<br />';

echo '<br /><b>Как я могу повлиять на дальнейшее развитие сайта</b><br />';
echo 'Активно участвуйте во всем, чаще заходите на сайт, советуйте сайт одноклассникам, одногруппникам, друзьям, знакомым и всем тем кто знает что такое интернет. К нам можно легко зайти как с компьютера так и с мобильного телефона или КПК, так как сайт имеет Wap и Web форматы<br />';

echo '<br /><b>Не нашли ответа на интересующий себя вопрос?</b><br />';
echo 'Напишите об этом <a href="/mail">администратору</a>, <a href="/pages/adminlist.php">старшим сайта</a> через внутреннюю почту или создавайте тему на форуме где будем вместе обсуждать вопрос, делиться опытом и знаниями<br /><br />';

include_once ('../themes/footer.php');
?>
