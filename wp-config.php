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
define( 'DB_NAME', 'maverick_db' );

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

define( 'WP_DEBUG', false );

/**#@+
 * Уникальные ключи и соли для аутентификации.
 *
 * Смените значение каждой константы на уникальную фразу.
 * Можно сгенерировать их с помощью {@link https://api.wordpress.org/secret-key/1.1/salt/ сервиса ключей на WordPress.org}
 * Можно изменить их, чтобы сделать существующие файлы cookies недействительными. Пользователям потребуется авторизоваться снова.
 *
 * @since 2.6.0
 */
define( 'AUTH_KEY',         'w6px]ir4%AId|t,F|ARQ7cGnluEPQR8GE>|fX3SP`R>4+P{[T?|I$=9e^*bdqWYP' );
define( 'SECURE_AUTH_KEY',  '$W>bi`d|Py6sE{U*$pSi#Y@w%Y_5h,mYcVl;2Bc?@?i~j=((:fm#T^pEgW}Hk{Tc' );
define( 'LOGGED_IN_KEY',    'JvHy%E_LU0D%3hj|MN0:1K8)A1o^*{Kd~y}ZIHdtw]m8l<!o PFC3KZKeaDVF0K>' );
define( 'NONCE_KEY',        '}>|0D+Or[WbTaB/Za!]MbFVrWi&B|YRLDe%Y&(!3otl41e^.ONvFbEN@dYC]lQ<[' );
define( 'AUTH_SALT',        '?Y+0VfLuSjoEtkkiFv{~+#[I&eL+w]W5539`)Xy<hq*e[{ho}k7qT)+g?E(Rj}AF' );
define( 'SECURE_AUTH_SALT', ':)ErgBQTu&5haz<H5*l$r_YYP6lG3qf4x&{w3xr>G49XZa~=/vC:niMg$b4}n@]?' );
define( 'LOGGED_IN_SALT',   '4zSOv3(qOfch-e,G mca7xDb~Y*J4p3v5}X(?h[R.!Q{>9 UPJXy<;E#=|Km14Ir' );
define( 'NONCE_SALT',       'i>$(xP*H3_2B;W&6-W7s@ kuiZVk>WziI1fw5Ayjf`Kriqv&E!;XX/>dhM-k, cW' );

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
