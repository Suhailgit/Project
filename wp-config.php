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
define('DB_NAME', 'education');

/** MySQL database username */
define('DB_USER', 'root');

/** MySQL database password */
define('DB_PASSWORD', '');

/** MySQL hostname */
define('DB_HOST', 'localhost');

/** Database Charset to use in creating database tables. */
define('DB_CHARSET', 'utf8mb4');

/** The Database Collate type. Don't change this if in doubt. */
define('DB_COLLATE', '');

/**#@+
 * Authentication Unique Keys and Salts.
 *
 * Change these to different unique phrases!
 * You can generate these using the {@link https://api.wordpress.org/secret-key/1.1/salt/ WordPress.org secret-key service}
 * You can change these at any point in time to invalidate all existing cookies. This will force all users to have to log in again.
 *
 * @since 2.6.0
 */
define('AUTH_KEY',         'J;5T>Z|/S}WPK6+uTG21TP-*B&)n7.$L3<*_H+r{^dX#a! ~1m%E/734[~6EM;lr');
define('SECURE_AUTH_KEY',  '-VIZN*Ti<so|s< o?I<aOe|*xP[sM_E3w%gw).T&?P2+ T`9uM=eeEcJXJUU1$_~');
define('LOGGED_IN_KEY',    'R2i+QQnD+e&![.15TEPDE+SLENc8h+g(2C3.x+YG.bd2iR[i8(|t-1xG=M@*wHz7');
define('NONCE_KEY',        '3R#F-IBFDwV-mq,x>1i i+>.d9{)R;qt,rzV&H?*MZUJv=OF`h&U#*Y?!NRaH#&;');
define('AUTH_SALT',        'BSOc[V3h6DdFj$PoRD77Yfuhe=L4`H.(2)%F,8{<jKQ}eGs< ~Pt%y@dXf(]LWwa');
define('SECURE_AUTH_SALT', 'Dz,5`ln0I+qP-t9|Y*Psd4VQO-]AvF#mH5t19lN7E{!B;5x_MU$+[Psx.yzL?DkH');
define('LOGGED_IN_SALT',   ',s7nh.T+p-R.*]Of3@Nas-*%~:|{1<zhhf#a-ukI=K)Q6B;#;-^DfpAPSPO`$=lr');
define('NONCE_SALT',       '=h#+niO-qucY$K/R/-SP*Jwvot+naCr>%=*F<ZTP{+A8P1MHRjQ.HjZ?Xa++]CDJ');

/**#@-*/

/**
 * WordPress Database Table prefix.
 *
 * You can have multiple installations in one database if you give each
 * a unique prefix. Only numbers, letters, and underscores please!
 */
$table_prefix  = 'wp_';

/**
 * For developers: WordPress debugging mode.
 *
 * Change this to true to enable the display of notices during development.
 * It is strongly recommended that plugin and theme developers use WP_DEBUG
 * in their development environments.
 *
 * For information on other constants that can be used for debugging,
 * visit the Codex.
 *
 * @link https://codex.wordpress.org/Debugging_in_WordPress
 */
define('WP_DEBUG', false);

/* That's all, stop editing! Happy blogging. */

/** Absolute path to the WordPress directory. */
if ( !defined('ABSPATH') )
	define('ABSPATH', dirname(__FILE__) . '/');

/** Sets up WordPress vars and included files. */
require_once(ABSPATH . 'wp-settings.php');
