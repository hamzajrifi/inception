<?php
/**
 * The base configuration for WordPress
 *
 * The wp-config.php creation script uses this file during the installation.
 * You don't have to use the web site, you can copy this file to "wp-config.php"
 * and fill in the values.
 *
 * This file contains the following configurations:
 *
 * * Database settings
 * * Secret keys
 * * Database table prefix
 * * Localized language
 * * ABSPATH
 *
 * @link https://wordpress.org/support/article/editing-wp-config-php/
 *
 * @package WordPress
 */


// ** Database settings - You can get this info from your web host ** //
/** The name of the database for WordPress */
define( 'DB_NAME', 'wordpress' );

/** Database username */
define( 'DB_USER', 'hjrifi' );

/** Database password */
define( 'DB_PASSWORD', 'lcom' );

/** Database hostname */
define( 'DB_HOST', 'localhost' );

/** Database charset to use in creating database tables. */
define( 'DB_CHARSET', 'utf8' );

/** The database collate type. Don't change this if in doubt. */
define( 'DB_COLLATE', '' );

/**#@+
 * Authentication unique keys and salts.
 *
 * Change these to different unique phrases! You can generate these using
 * the {@link https://api.wordpress.org/secret-key/1.1/salt/ WordPress.org secret-key service}.
 *
 * You can change these at any point in time to invalidate all existing cookies.
 * This will force all users to have to log in again.
 *
 * @since 2.6.0
 */
define( 'AUTH_KEY',          'YbqBs!ih#({$RS1LLI55)@V/f5Iwev0>|C9^x!CuyfGGxE$QawT`GWgF#tj5HCE4' );
define( 'SECURE_AUTH_KEY',   '6Q;?4CnjS,)qtu-ZEN8hG.jYZcG5Y#MpZ)h]p7,nJMoT?2q+sOKXPIr->bUxr]3<' );
define( 'LOGGED_IN_KEY',     'x~WeIF%w<B.?8W?d~DzTS+24D{IO$?:DbA-}S=IneUwjX,62I-(TZ~d%7K;z*{$p' );
define( 'NONCE_KEY',         'L%uHGH#9f>gZT4Fq1>)$[~95u~:.rcQ$_6r-v&p$<t[*oMTLgAok]jICW>T:V~<Y' );
define( 'AUTH_SALT',         '5JEP.>I-DIXjnCNNj`P1:G`k|mV,g|O<:^t(K9k}OLUH#60~AiOMvf3kxqw16;}u' );
define( 'SECURE_AUTH_SALT',  'W;v>>4,2!uJfx(83KpHKW43<<uYr:Oxx.6x5?rFTkUbg0M q[]sO^/b)p-O2$R~2' );
define( 'LOGGED_IN_SALT',    '^r{/}yAD>jdZL]}1Q VZ1Dhw.~}*6^MYUoy65R/W`>;PR!doxUp5T4=vqy3koE|+' );
define( 'NONCE_SALT',        '?a47nr^jgHb|Jg0sb/8_XS;5v%* /b9QmVjCy0%S3]X_27g<AfK}MM8Ww6.P_6uU' );
define( 'WP_CACHE_KEY_SALT', 'oQma))!AS_+_Dy_yVXrd-5sE/:ej4+lt=?pF:C^fqj`XQJN)F[O&y-nIQHvWFF/T' );


/**#@-*/

/**
 * WordPress database table prefix.
 *
 * You can have multiple installations in one database if you give each
 * a unique prefix. Only numbers, letters, and underscores please!
 */
$table_prefix = 'wp_';


/* Add any custom values between this line and the "stop editing" line. */



/**
 * For developers: WordPress debugging mode.
 *
 * Change this to true to enable the display of notices during development.
 * It is strongly recommended that plugin and theme developers use WP_DEBUG
 * in their development environments.
 *
 * For information on other constants that can be used for debugging,
 * visit the documentation.
 *
 * @link https://wordpress.org/support/article/debugging-in-wordpress/
 */
if ( ! defined( 'WP_DEBUG' ) ) {
	define( 'WP_DEBUG', false );
}

/* That's all, stop editing! Happy publishing. */

/** Absolute path to the WordPress directory. */
if ( ! defined( 'ABSPATH' ) ) {
	define( 'ABSPATH', __DIR__ . '/' );
}

/** Sets up WordPress vars and included files. */
require_once ABSPATH . 'wp-settings.php';
