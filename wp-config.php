<?php
/**
 * Основные параметры WordPress.
 *
 * Скрипт для создания wp-config.php использует этот файл в процессе
 * установки. Необязательно использовать веб-интерфейс, можно
 * скопировать файл в "wp-config.php" и заполнить значения вручную.
 *
 * Этот файл содержит следующие параметры:
 *
 * * Настройки MySQL
 * * Секретные ключи
 * * Префикс таблиц базы данных
 * * ABSPATH
 *
 * @link https://codex.wordpress.org/Editing_wp-config.php
 *
 * @package WordPress
 */

// ** Параметры MySQL: Эту информацию можно получить у вашего хостинг-провайдера ** //
/** Имя базы данных для WordPress */
define( 'DB_NAME', 'netclickswp' );

/** Имя пользователя MySQL */
define( 'DB_USER', 'root' );

/** Пароль к базе данных MySQL */
define( 'DB_PASSWORD', '' );

/** Имя сервера MySQL */
define( 'DB_HOST', 'localhost' );

/** Кодировка базы данных для создания таблиц. */
define( 'DB_CHARSET', 'utf8mb4' );

/** Схема сопоставления. Не меняйте, если не уверены. */
define( 'DB_COLLATE', '' );

/**#@+
 * Уникальные ключи и соли для аутентификации.
 *
 * Смените значение каждой константы на уникальную фразу.
 * Можно сгенерировать их с помощью {@link https://api.wordpress.org/secret-key/1.1/salt/ сервиса ключей на WordPress.org}
 * Можно изменить их, чтобы сделать существующие файлы cookies недействительными. Пользователям потребуется авторизоваться снова.
 *
 * @since 2.6.0
 */
define( 'AUTH_KEY',         'd;.i9$im~rHtI.N!&.H3HJq=}Qz@EtaGP-xu,5s?,.=NG1l,02YP=B}<R|41/w{<' );
define( 'SECURE_AUTH_KEY',  '5<n~^rqGuX,}$@dWRf$<06gfT*4Z@@z4IBigni-N<<|zBUcO}ATku`>%,GZ)agNY' );
define( 'LOGGED_IN_KEY',    ';>%{]sFYdw*:tpiQ  gjHr3(Q&m:,:KicWm>_T0py&OFx@hF:pJq0ck=O9xb@tB{' );
define( 'NONCE_KEY',        '!27Hvnl{Z2@o&+RVVe8|$ecA&V=|@@L_UJzP zJ%X;.5d5*cI(~zJs~hQ)>S3fA[' );
define( 'AUTH_SALT',        'cX/NWG@+oV)N,Aq][XQ5OEXn)%DoX 0`6&ev@w6IUa/kmx{eO}2]iVV0z^FJ+2t>' );
define( 'SECURE_AUTH_SALT', 'CAK}k5R))AonG]=[KA~^Ua: nO[6TC[rwdJwp^^]r`yCmJ`Lwb;iqvJNSbrQZ~y+' );
define( 'LOGGED_IN_SALT',   ';yML;A!bV`uUI1l9p^:vjY[#v4-?Jqm+w=]`=!54pi!dzx2#1r:zJBE?Z|[4MK^E' );
define( 'NONCE_SALT',       '1Z-^w;pS~H0Was|*]-xh3h3m%GcLF6VpW#`IavS,!W66>?]oW(aXNkF]k0]SBs;9' );

/**#@-*/

/**
 * Префикс таблиц в базе данных WordPress.
 *
 * Можно установить несколько сайтов в одну базу данных, если использовать
 * разные префиксы. Пожалуйста, указывайте только цифры, буквы и знак подчеркивания.
 */
$table_prefix = 'wp_';

/**
 * Для разработчиков: Режим отладки WordPress.
 *
 * Измените это значение на true, чтобы включить отображение уведомлений при разработке.
 * Разработчикам плагинов и тем настоятельно рекомендуется использовать WP_DEBUG
 * в своём рабочем окружении.
 *
 * Информацию о других отладочных константах можно найти в Кодексе.
 *
 * @link https://codex.wordpress.org/Debugging_in_WordPress
 */
define( 'WP_DEBUG', false );

/* Это всё, дальше не редактируем. Успехов! */

/** Абсолютный путь к директории WordPress. */
if ( ! defined( 'ABSPATH' ) ) {
	define( 'ABSPATH', dirname( __FILE__ ) . '/' );
}

/** Инициализирует переменные WordPress и подключает файлы. */
require_once( ABSPATH . 'wp-settings.php' );
