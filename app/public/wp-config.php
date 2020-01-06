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
define('AUTH_KEY',         'r+zIiTHUGu9Uq98zf82pyr3RvpmH5G0EqFR2PCf2KgGzDxmWbE4ncSqN4oZADKkJAVfTJFHuU2+ezy71VOmWlQ==');
define('SECURE_AUTH_KEY',  'J2wJfVzCSc31/+0PnOqDG4OGj3AMns2zM1sAj0jRZwJfMjBJmDfd5QWf9zCkIBFbaiypo8MoUxuOa78KzFnLcA==');
define('LOGGED_IN_KEY',    '0oNkic02LpsEtLykXEDB80n6615+lGXJup1p3H+AnVuP93hJ5KHeMbDTMJoZDeEOI2FtDId+23iCdH111OOUTQ==');
define('NONCE_KEY',        'rrh28wFlGZ97HMO/U5zjpGCuDe/UwBzZVDP2JESpkludsj5oSjYrG2zPrgT3HP/0YHmg7lo3FExOtVZbCK/8qA==');
define('AUTH_SALT',        'sxhYgsMvJWR3vnOnSSOfYbFWT7jn2iULIBPDs+1CeRsLZPxHJLej67IqnsTeW7A7DltJZ6R8cWXukNVlX3r7Uw==');
define('SECURE_AUTH_SALT', 'ltMD+r0DyyMjTi0hkCQLbFU3Xluc9IE9bWwdqQX5UyQUM+y7ZBV4pvZjbxHzcSrwaI8SiVxLaYuDEDFJTC852Q==');
define('LOGGED_IN_SALT',   '2Et1wjQtNZd2o2DbCpyRcMLEShOll6HbXs6PuT8ghK4LBT+0G20ymqNZx5EM0MnIaR3KYCQxC2YvzE/OTU9zHA==');
define('NONCE_SALT',       'Z88uOZv24jKIB5oMZw1ZZlqmIrB7PrPGfTmFkssjdaPcQd3WwFDTPSCDK6sjS7dnst7fbYwpaSXfmYek2rzG/g==');

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
