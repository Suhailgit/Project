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
define('AUTH_KEY',         '@Mjc{lj-OZ>{YUY/hY}S[l.-CKL[S&8r< %P:{=@+le2_y?m}b>JPOa]FE+_N-G5');
define('SECURE_AUTH_KEY',  'u1_}:k,W;u3=+OPkQt|-@E2*r#pcb:yEw2#jaQekOvQ`OGQaA+@SR^f}4>:|U_qY');
define('LOGGED_IN_KEY',    'k|pE+QYNyI<YOhH>)2rBF9f)uf-|oKORma-OGMSCFi@E>L9n>YtV$ag;?e7)HW4W');
define('NONCE_KEY',        'Zk]!5~ZugIv^HN|K-$Nmwc]1VgVx/{xoeMG`(-Ot$RdSaSfy[%@>{5LD-ix-c-AO');
define('AUTH_SALT',        'R%~[`~:B,NA8$#M&JN8:^>:@Bi]$}7fr73qP>-OMV6]?xHD7Ubd 1I!Mmj.[SOjN');
define('SECURE_AUTH_SALT', '9u* mal+q,8d2hGRd,pH3LBA`=LvnXfFb*9oH]oa+u)^Ss[ssT79.By.T38C%HKc');
define('LOGGED_IN_SALT',   'pkw[+|,|z|8RIV%|b7g)pIzut)+)$x;3aHX-E>o`AM:aTb!-`X,SSUD&-5qf?DrX');
define('NONCE_SALT',       ')[1-:FOxqiqxy $ejUfO@0sTH!GxB6Ycp4g2o!Z)saKq~*wL1e4S?(J|bJn;+@,>');

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