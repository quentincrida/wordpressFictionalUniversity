<?php
/**
 * The base configuration for WordPress
 *
 * The wp-config.php creation script uses this file during the
 * installation. You don't have to use the web site, you can
 * copy this file to "wp-config.php" and fill in the values.
 *
 * This file contains the following configurations:
 *
 * * MySQL settings
 * * Secret keys
 * * Database table prefix
 * * ABSPATH
 *
 * @link https://codex.wordpress.org/Editing_wp-config.php
 *
 * @package WordPress
 */

// ** MySQL settings - You can get this info from your web host ** //
/** The name of the database for WordPress */
define( 'DB_NAME', 'local' );

/** MySQL database username */
define( 'DB_USER', 'root' );

/** MySQL database password */
define( 'DB_PASSWORD', 'root' );

/** MySQL hostname */
define( 'DB_HOST', 'localhost' );

/** Database Charset to use in creating database tables. */
define( 'DB_CHARSET', 'utf8' );

/** The Database Collate type. Don't change this if in doubt. */
define( 'DB_COLLATE', '' );

/**
 * Authentication Unique Keys and Salts.
 *
 * Change these to different unique phrases!
 * You can generate these using the {@link https://api.wordpress.org/secret-key/1.1/salt/ WordPress.org secret-key service}
 * You can change these at any point in time to invalidate all existing cookies. This will force all users to have to log in again.
 *
 * @since 2.6.0
 */
define('AUTH_KEY',         'fHnBH4Cfw2lpIm4/G9uGs8lNgAu1xoG1+N+wtPyj2wlD4jalP9iT6Zx2kbOq7horeH74ZLElfkG3zR8ewT2mhQ==');
define('SECURE_AUTH_KEY',  '3GrHr/aCUgRY5FvuwrfyLd0CclhIt6gwB3WzttQhOMkjDAviLt7ZNtEA5WKz4hRKlr+SRyovlcUFi2nU6296sw==');
define('LOGGED_IN_KEY',    '+PnJBbLP1WeRdJDL5pzVs3BtH5I0BqvsZLt2ySXKf9F1rSCh3GgXWDWbVgPKLMf5PgRgPt6VM3AgrwXmbJo8XA==');
define('NONCE_KEY',        'x1wVZM+VGbndfQnPGAnfBsJLmxwb2KcHZ0EDO3vDJBeoCIv46D9IXy3nL/8OwJ7Gm3sZ+IVOL42Ks33ku/rLiA==');
define('AUTH_SALT',        '6/mM1AXotAWw2E27D3W3EhZJcnMfBnF1gg0AypQaISjcAo8XDlZiHOnxSCxUhV24oXwiEhPYZIRHGUF4TFyrJg==');
define('SECURE_AUTH_SALT', 'NkRssoBgLeM7Hkv4m6+iJuNjRTcZHruzzXXN9aOKukfifloamzFUlG3LAMSRvd5caThf0mEl/f6zuOE4b/p1LQ==');
define('LOGGED_IN_SALT',   'DiVtmmwIo4JmiUTWDNwHJFCJIPUBqyMTra1cKRfhv4B5nk86AOM6AZqPleaRnETcl0ltHkV61QbxjPhArRYqWw==');
define('NONCE_SALT',       '/UjRwZkuwAiHUjNRGlgN1XviCgK1SkuOLutfGbhiy7tdfT+nugAsPjpWz/W2VWTmyZnvTxTBPq1SAMg1SWe6pg==');

/**
 * WordPress Database Table prefix.
 *
 * You can have multiple installations in one database if you give each
 * a unique prefix. Only numbers, letters, and underscores please!
 */
$table_prefix = 'wp_';




/* That's all, stop editing! Happy publishing. */

/** Absolute path to the WordPress directory. */
if ( ! defined( 'ABSPATH' ) ) {
	define( 'ABSPATH', dirname( __FILE__ ) . '/' );
}

/** Sets up WordPress vars and included files. */
require_once ABSPATH . 'wp-settings.php';
