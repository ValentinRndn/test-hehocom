<?php
/**
 * The base configuration for WordPress
 *
 * The wp-config.php creation script uses this file during the installation.
 * You don't have to use the website, you can copy this file to "wp-config.php"
 * and fill in the values.
 *
 * This file contains the following configurations:
 *
 * * Database settings
 * * Secret keys
 * * Database table prefix
 * * ABSPATH
 *
 * @link https://developer.wordpress.org/advanced-administration/wordpress/wp-config/
 *
 * @package WordPress
 */

// ** Database settings - You can get this info from your web host ** //
/** The name of the database for WordPress */
define( 'DB_NAME', 'wordpress_hehocom' );

/** Database username */
define( 'DB_USER', 'root' );

/** Database password */
define( 'DB_PASSWORD', '' );

/** Database hostname */
define( 'DB_HOST', 'localhost' );

/** Database charset to use in creating database tables. */
define( 'DB_CHARSET', 'utf8mb4' );

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
define( 'AUTH_KEY',         '- ShJ#rwy_j;L+wXwtDLx- MNUkFsRs4Y;iv8K4w}XN2QqHH^yd4NkSd{Y@k,E:]' );
define( 'SECURE_AUTH_KEY',  'L2JEeO4orm[:*PIuzfqjSFokZ (L<gX^tp-}@oXQ@8w5QX(rxI|tNxF=jGDODBIK' );
define( 'LOGGED_IN_KEY',    '2uqrS6OZCKvhL{EuGSfj>2Wro&Bx8>h%[I{|luay.m{-K=pnVYIGK!^5;7iX~-*u' );
define( 'NONCE_KEY',        'I;qsffkIe}hEdA(cu.R*l8w@v}{1nMDI5=)rU(BQ?CML^k7SZzAUv}7v|WB_Q{d3' );
define( 'AUTH_SALT',        'ztW0su.V_2(f8%9.K7fbtcntJeBEMLb[4:EZEe@)MI<7^5KWmjTl=,SWv+~LV;+&' );
define( 'SECURE_AUTH_SALT', '|{H}]=czmk{BLrK#xJ/je/8dVBo?(N%BzJgpt/(^Q)~0FpNB1(_^4zMMK]dfsw1]' );
define( 'LOGGED_IN_SALT',   'm)/[5E4Cz8W zBK_2R|k!((ZAChAjrQ*$5ikmV{Hc%9x4TbIM4XX/nLV0W,e}8Wv' );
define( 'NONCE_SALT',       'UH!jYLoi$^6Um]-hk);uxM=YtPhD+/iiU2aW$|bQ?$Y}3S7OHnd(Z:WaEHVx1%|&' );

/**#@-*/

/**
 * WordPress database table prefix.
 *
 * You can have multiple installations in one database if you give each
 * a unique prefix. Only numbers, letters, and underscores please!
 */
$table_prefix = 'wp_';

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
 * @link https://developer.wordpress.org/advanced-administration/debug/debug-wordpress/
 */
define( 'WP_DEBUG', false );

/* Add any custom values between this line and the "stop editing" line. */



/* That's all, stop editing! Happy publishing. */

/** Absolute path to the WordPress directory. */
if ( ! defined( 'ABSPATH' ) ) {
	define( 'ABSPATH', __DIR__ . '/' );
}

/** Sets up WordPress vars and included files. */
require_once ABSPATH . 'wp-settings.php';
