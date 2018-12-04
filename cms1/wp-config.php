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
define('DB_NAME', 'database name');

/** MySQL database username */
define('DB_USER', 'username');

/** MySQL database password */
define('DB_PASSWORD', 'password');

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
define('AUTH_KEY',         '))sq>%n^lc/!a{ewG-F<7|=P^&D%U&?XP4bO=sW1@.(DTr}?(:t_er6=?Y>+6n];');
define('SECURE_AUTH_KEY',  '&w&iw$3K(}u^1#n_C&D.#$4Q!{WMNCBi-h5[fw*pk[,1<Fs;Qj$X_tMBjB</uOpc');
define('LOGGED_IN_KEY',    'Qe!uAnao7(#8Y.jPAxgnxD|loL[hMj5Iv:y,}*A/Hjh)F;bMbd1QD1u^@a,2oZ6y');
define('NONCE_KEY',        '<#3oO?v2rYK<7mRIQ:Tj+%:/k^R@Cin:^e46MN#wR7T=<uf`&5`*Q7v/TWnKz$jT');
define('AUTH_SALT',        'bGBM3H@XxSXYxDp);3@?,{@#Ko9}J`4UDggZ}BaXt*%WIxSd(L4c!oe/ugtcQ*_B');
define('SECURE_AUTH_SALT', 'fme-Nnfb[tzZQd# ghP({Wa`fbCE 9J8`Eb>|bn;8ZHqsrF`78Is%VNR/I|6}:[y');
define('LOGGED_IN_SALT',   'o73.SR-{)#PdhdeUslH@BmbRE#l`4c*b4qsp4[MJ(O4la=)yr%h<$cMxqW|;79ZH');
define('NONCE_SALT',       'z`xNv@IR,3yvBL<XBF(JPE>v4WXo3z){PK$3VKKGgU[d01j.O0Q<:<P7kbeUU^i9');

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
