# Migration de base de données MySQL WordPress
#
# Généré : Thursday 17. October 2024 09:28 UTC
# Nom d’hôte : localhost
# Base de données : `wordpress_hehocom`
# URL: //localhost/wordpress_hehocom
# Path: C:\\wamp64\\www\\wordpress_hehocom
# Tables: wp_commentmeta, wp_comments, wp_duplicator_packages, wp_links, wp_options, wp_postmeta, wp_posts, wp_simply_static_pages, wp_term_relationships, wp_term_taxonomy, wp_termmeta, wp_terms, wp_usermeta, wp_users, wp_yoast_indexable, wp_yoast_indexable_hierarchy, wp_yoast_migrations, wp_yoast_primary_term, wp_yoast_seo_links
# Table Prefix: wp_
# Post Types: revision, attachment, customize_changeset, nav_menu_item, page, post, wp_global_styles, wp_navigation
# Protocol: http
# Multisite: false
# Subsite Export: false
# --------------------------------------------------------

/*!40101 SET NAMES utf8mb4 */;

SET sql_mode='NO_AUTO_VALUE_ON_ZERO';



#
# Supprimer toute table existante `wp_commentmeta`
#

DROP TABLE IF EXISTS `wp_commentmeta`;


#
# Structure de la table `wp_commentmeta`
#

CREATE TABLE `wp_commentmeta` (
  `meta_id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `comment_id` bigint unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci,
  PRIMARY KEY (`meta_id`),
  KEY `comment_id` (`comment_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;


#
# Données de la table `wp_commentmeta`
#

#
# Fin du contenu des données de la table `wp_commentmeta`
# --------------------------------------------------------



#
# Supprimer toute table existante `wp_comments`
#

DROP TABLE IF EXISTS `wp_comments`;


#
# Structure de la table `wp_comments`
#

CREATE TABLE `wp_comments` (
  `comment_ID` bigint unsigned NOT NULL AUTO_INCREMENT,
  `comment_post_ID` bigint unsigned NOT NULL DEFAULT '0',
  `comment_author` tinytext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `comment_author_email` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_author_url` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_author_IP` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_content` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `comment_karma` int NOT NULL DEFAULT '0',
  `comment_approved` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '1',
  `comment_agent` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_type` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'comment',
  `comment_parent` bigint unsigned NOT NULL DEFAULT '0',
  `user_id` bigint unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`comment_ID`),
  KEY `comment_post_ID` (`comment_post_ID`),
  KEY `comment_approved_date_gmt` (`comment_approved`,`comment_date_gmt`),
  KEY `comment_date_gmt` (`comment_date_gmt`),
  KEY `comment_parent` (`comment_parent`),
  KEY `comment_author_email` (`comment_author_email`(10))
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;


#
# Données de la table `wp_comments`
#

#
# Fin du contenu des données de la table `wp_comments`
# --------------------------------------------------------



#
# Supprimer toute table existante `wp_duplicator_packages`
#

DROP TABLE IF EXISTS `wp_duplicator_packages`;


#
# Structure de la table `wp_duplicator_packages`
#

CREATE TABLE `wp_duplicator_packages` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(250) NOT NULL,
  `hash` varchar(50) NOT NULL,
  `status` int NOT NULL,
  `created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `owner` varchar(60) NOT NULL,
  `package` longtext NOT NULL,
  PRIMARY KEY (`id`),
  KEY `hash` (`hash`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;


#
# Données de la table `wp_duplicator_packages`
#
INSERT INTO `wp_duplicator_packages` ( `id`, `name`, `hash`, `status`, `created`, `owner`, `package`) VALUES
(1, '20241017_testtechniquehehocom', 'ffe14fc495bf78c67508_20241017022236', 100, '2024-10-17 02:22:46', 'valentinrndn', 'O:11:"DUP_Package":23:{s:7:"Created";s:19:"2024-10-17 02:22:36";s:7:"Version";s:8:"1.5.11.1";s:9:"VersionWP";s:5:"6.6.2";s:9:"VersionDB";s:6:"8.0.31";s:10:"VersionPHP";s:6:"8.0.26";s:9:"VersionOS";s:5:"WINNT";s:2:"ID";i:1;s:4:"Name";s:29:"20241017_testtechniquehehocom";s:4:"Hash";s:35:"ffe14fc495bf78c67508_20241017022236";s:8:"NameHash";s:65:"20241017_testtechniquehehocom_ffe14fc495bf78c67508_20241017022236";s:4:"Type";i:0;s:5:"Notes";s:0:"";s:8:"ScanFile";s:75:"20241017_testtechniquehehocom_ffe14fc495bf78c67508_20241017022236_scan.json";s:10:"TimerStart";i:-1;s:7:"Runtime";s:10:"26.93 sec.";s:7:"ExeSize";s:7:"73.49KB";s:7:"ZipSize";s:7:"54.36MB";s:6:"Status";s:5:"100.0";s:6:"WPUser";s:12:"valentinrndn";s:7:"Archive";O:11:"DUP_Archive":26:{s:10:"FilterDirs";s:0:"";s:11:"FilterFiles";s:0:"";s:10:"FilterExts";s:0:"";s:13:"FilterDirsAll";a:0:{}s:14:"FilterFilesAll";a:0:{}s:13:"FilterExtsAll";a:0:{}s:8:"FilterOn";i:0;s:12:"ExportOnlyDB";i:0;s:4:"File";s:77:"20241017_testtechniquehehocom_ffe14fc495bf78c67508_20241017022236_archive.zip";s:6:"Format";s:3:"ZIP";s:7:"PackDir";s:31:"C:/wamp64/www/wordpress_hehocom";s:4:"Size";i:57000441;s:4:"Dirs";a:0:{}s:9:"dirsCount";i:1049;s:5:"Files";a:0:{}s:10:"filesCount";i:6904;s:10:"FilterInfo";O:23:"DUP_Archive_Filter_Info":8:{s:4:"Dirs";O:34:"DUP_Archive_Filter_Scope_Directory":6:{s:7:"Warning";a:0:{}s:10:"Unreadable";a:0:{}s:10:"AddonSites";a:0:{}s:4:"Core";a:0:{}s:6:"Global";a:0:{}s:8:"Instance";a:0:{}}s:5:"Files";O:29:"DUP_Archive_Filter_Scope_File":7:{s:4:"Size";a:0:{}s:7:"Warning";a:0:{}s:10:"Unreadable";a:0:{}s:10:"AddonSites";a:0:{}s:4:"Core";a:0:{}s:6:"Global";a:0:{}s:8:"Instance";a:0:{}}s:4:"Exts";O:29:"DUP_Archive_Filter_Scope_Base":3:{s:4:"Core";a:0:{}s:6:"Global";a:0:{}s:8:"Instance";a:0:{}}s:9:"UDirCount";i:0;s:10:"UFileCount";i:0;s:9:"UExtCount";i:0;s:8:"TreeSize";a:0:{}s:11:"TreeWarning";a:0:{}}s:14:"RecursiveLinks";a:0:{}s:10:"file_count";i:7952;s:10:"\0*\0Package";r:1;s:29:"\0DUP_Archive\0tmpFilterDirsAll";a:0:{}s:24:"\0DUP_Archive\0wpCorePaths";a:3:{i:0;s:40:"C:/wamp64/www/wordpress_hehocom/wp-admin";i:1;s:43:"C:/wamp64/www/wordpress_hehocom/wp-includes";i:2;s:52:"C:/wamp64/www/wordpress_hehocom/wp-content/languages";}s:29:"\0DUP_Archive\0wpCoreExactPaths";a:7:{i:0;s:31:"C:/wamp64/www/wordpress_hehocom";i:1;s:31:"C:/wamp64/www/wordpress_hehocom";i:2;s:42:"C:/wamp64/www/wordpress_hehocom/wp-content";i:3;s:50:"C:/wamp64/www/wordpress_hehocom/wp-content/uploads";i:4;s:50:"C:/wamp64/www/wordpress_hehocom/wp-content/plugins";i:5;s:53:"C:/wamp64/www/wordpress_hehocom/wp-content/mu-plugins";i:6;s:49:"C:/wamp64/www/wordpress_hehocom/wp-content/themes";}s:31:"\0DUP_Archive\0relativeFiltersDir";a:2:{i:0;s:63:"C:/wamp64/www/wordpress_hehocom/wp-content/backups-dup-lite/tmp";i:1;s:15:"backups-dup-pro";}s:24:"\0DUP_Archive\0listFileObj";N;s:23:"\0DUP_Archive\0listDirObj";N;}s:9:"Installer";O:13:"DUP_Installer":15:{s:4:"File";s:83:"20241017_testtechniquehehocom_ffe14fc495bf78c67508_20241017022236_installer.php.bak";s:4:"Size";i:75251;s:10:"OptsDBHost";s:0:"";s:10:"OptsDBPort";s:0:"";s:10:"OptsDBName";s:0:"";s:10:"OptsDBUser";s:0:"";s:13:"OptsDBCharset";s:0:"";s:15:"OptsDBCollation";s:0:"";s:12:"OptsSecureOn";i:0;s:14:"OptsSecurePass";s:0:"";s:13:"numFilesAdded";i:0;s:12:"numDirsAdded";i:0;s:10:"\0*\0Package";r:1;s:17:"\0*\0origFileManger";O:40:"Duplicator\\Libs\\Snap\\SnapOrigFileManager":4:{s:18:"\0*\0persistanceFile";s:115:"C:/wamp64/www/wordpress_hehocom/wp-content/backups-dup-lite/tmp/original_files_ffe14fc-17022236/entries_stored.json";s:18:"\0*\0origFilesFolder";s:95:"C:/wamp64/www/wordpress_hehocom/wp-content/backups-dup-lite/tmp/original_files_ffe14fc-17022236";s:20:"\0*\0origFolderEntries";a:0:{}s:11:"\0*\0rootPath";s:31:"C:/wamp64/www/wordpress_hehocom";}s:32:"\0DUP_Installer\0configTransformer";O:44:"Duplicator\\Libs\\WpConfig\\WPConfigTransformer":3:{s:17:"\0*\0wp_config_path";s:45:"C:/wamp64/www/wordpress_hehocom/wp-config.php";s:16:"\0*\0wp_config_src";s:3213:"<?php\n/**\n * The base configuration for WordPress\n *\n * The wp-config.php creation script uses this file during the installation.\n * You don\'t have to use the website, you can copy this file to "wp-config.php"\n * and fill in the values.\n *\n * This file contains the following configurations:\n *\n * * Database settings\n * * Secret keys\n * * Database table prefix\n * * ABSPATH\n *\n * @link https://developer.wordpress.org/advanced-administration/wordpress/wp-config/\n *\n * @package WordPress\n */\n\n// ** Database settings - You can get this info from your web host ** //\n/** The name of the database for WordPress */\ndefine( \'DB_NAME\', \'wordpress_hehocom\' );\n\n/** Database username */\ndefine( \'DB_USER\', \'root\' );\n\n/** Database password */\ndefine( \'DB_PASSWORD\', \'\' );\n\n/** Database hostname */\ndefine( \'DB_HOST\', \'localhost\' );\n\n/** Database charset to use in creating database tables. */\ndefine( \'DB_CHARSET\', \'utf8mb4\' );\n\n/** The database collate type. Don\'t change this if in doubt. */\ndefine( \'DB_COLLATE\', \'\' );\n\n/**#@+\n * Authentication unique keys and salts.\n *\n * Change these to different unique phrases! You can generate these using\n * the {@link https://api.wordpress.org/secret-key/1.1/salt/ WordPress.org secret-key service}.\n *\n * You can change these at any point in time to invalidate all existing cookies.\n * This will force all users to have to log in again.\n *\n * @since 2.6.0\n */\ndefine( \'AUTH_KEY\',         \'- ShJ#rwy_j;L+wXwtDLx- MNUkFsRs4Y;iv8K4w}XN2QqHH^yd4NkSd{Y@k,E:]\' );\ndefine( \'SECURE_AUTH_KEY\',  \'L2JEeO4orm[:*PIuzfqjSFokZ (L<gX^tp-}@oXQ@8w5QX(rxI|tNxF=jGDODBIK\' );\ndefine( \'LOGGED_IN_KEY\',    \'2uqrS6OZCKvhL{EuGSfj>2Wro&Bx8>h%[I{|luay.m{-K=pnVYIGK!^5;7iX~-*u\' );\ndefine( \'NONCE_KEY\',        \'I;qsffkIe}hEdA(cu.R*l8w@v}{1nMDI5=)rU(BQ?CML^k7SZzAUv}7v|WB_Q{d3\' );\ndefine( \'AUTH_SALT\',        \'ztW0su.V_2(f8%9.K7fbtcntJeBEMLb[4:EZEe@)MI<7^5KWmjTl=,SWv+~LV;+&\' );\ndefine( \'SECURE_AUTH_SALT\', \'|{H}]=czmk{BLrK#xJ/je/8dVBo?(N%BzJgpt/(^Q)~0FpNB1(_^4zMMK]dfsw1]\' );\ndefine( \'LOGGED_IN_SALT\',   \'m)/[5E4Cz8W zBK_2R|k!((ZAChAjrQ*$5ikmV{Hc%9x4TbIM4XX/nLV0W,e}8Wv\' );\ndefine( \'NONCE_SALT\',       \'UH!jYLoi$^6Um]-hk);uxM=YtPhD+/iiU2aW$|bQ?$Y}3S7OHnd(Z:WaEHVx1%|&\' );\n\n/**#@-*/\n\n/**\n * WordPress database table prefix.\n *\n * You can have multiple installations in one database if you give each\n * a unique prefix. Only numbers, letters, and underscores please!\n */\n$table_prefix = \'wp_\';\n\n/**\n * For developers: WordPress debugging mode.\n *\n * Change this to true to enable the display of notices during development.\n * It is strongly recommended that plugin and theme developers use WP_DEBUG\n * in their development environments.\n *\n * For information on other constants that can be used for debugging,\n * visit the documentation.\n *\n * @link https://developer.wordpress.org/advanced-administration/debug/debug-wordpress/\n */\ndefine( \'WP_DEBUG\', false );\n\n/* Add any custom values between this line and the "stop editing" line. */\n\n\n\n/* That\'s all, stop editing! Happy publishing. */\n\n/** Absolute path to the WordPress directory. */\nif ( ! defined( \'ABSPATH\' ) ) {\n	define( \'ABSPATH\', __DIR__ . \'/\' );\n}\n\n/** Sets up WordPress vars and included files. */\nrequire_once ABSPATH . \'wp-settings.php\';\n";s:13:"\0*\0wp_configs";a:2:{s:8:"constant";a:16:{s:7:"DB_NAME";a:3:{s:3:"src";s:41:"define( \'DB_NAME\', \'wordpress_hehocom\' );";s:5:"value";s:19:"\'wordpress_hehocom\'";s:5:"parts";a:3:{i:0;s:17:"define( \'DB_NAME\'";i:1;s:22:", \'wordpress_hehocom\' ";i:2;s:2:");";}}s:7:"DB_USER";a:3:{s:3:"src";s:28:"define( \'DB_USER\', \'root\' );";s:5:"value";s:6:"\'root\'";s:5:"parts";a:3:{i:0;s:17:"define( \'DB_USER\'";i:1;s:9:", \'root\' ";i:2;s:2:");";}}s:11:"DB_PASSWORD";a:3:{s:3:"src";s:28:"define( \'DB_PASSWORD\', \'\' );";s:5:"value";s:2:"\'\'";s:5:"parts";a:3:{i:0;s:21:"define( \'DB_PASSWORD\'";i:1;s:5:", \'\' ";i:2;s:2:");";}}s:7:"DB_HOST";a:3:{s:3:"src";s:33:"define( \'DB_HOST\', \'localhost\' );";s:5:"value";s:11:"\'localhost\'";s:5:"parts";a:3:{i:0;s:17:"define( \'DB_HOST\'";i:1;s:14:", \'localhost\' ";i:2;s:2:");";}}s:10:"DB_CHARSET";a:3:{s:3:"src";s:34:"define( \'DB_CHARSET\', \'utf8mb4\' );";s:5:"value";s:9:"\'utf8mb4\'";s:5:"parts";a:3:{i:0;s:20:"define( \'DB_CHARSET\'";i:1;s:12:", \'utf8mb4\' ";i:2;s:2:");";}}s:10:"DB_COLLATE";a:3:{s:3:"src";s:27:"define( \'DB_COLLATE\', \'\' );";s:5:"value";s:2:"\'\'";s:5:"parts";a:3:{i:0;s:20:"define( \'DB_COLLATE\'";i:1;s:5:", \'\' ";i:2;s:2:");";}}s:8:"AUTH_KEY";a:3:{s:3:"src";s:97:"define( \'AUTH_KEY\',         \'- ShJ#rwy_j;L+wXwtDLx- MNUkFsRs4Y;iv8K4w}XN2QqHH^yd4NkSd{Y@k,E:]\' );";s:5:"value";s:66:"\'- ShJ#rwy_j;L+wXwtDLx- MNUkFsRs4Y;iv8K4w}XN2QqHH^yd4NkSd{Y@k,E:]\'";s:5:"parts";a:3:{i:0;s:18:"define( \'AUTH_KEY\'";i:1;s:77:",         \'- ShJ#rwy_j;L+wXwtDLx- MNUkFsRs4Y;iv8K4w}XN2QqHH^yd4NkSd{Y@k,E:]\' ";i:2;s:2:");";}}s:15:"SECURE_AUTH_KEY";a:3:{s:3:"src";s:97:"define( \'SECURE_AUTH_KEY\',  \'L2JEeO4orm[:*PIuzfqjSFokZ (L<gX^tp-}@oXQ@8w5QX(rxI|tNxF=jGDODBIK\' );";s:5:"value";s:66:"\'L2JEeO4orm[:*PIuzfqjSFokZ (L<gX^tp-}@oXQ@8w5QX(rxI|tNxF=jGDODBIK\'";s:5:"parts";a:3:{i:0;s:25:"define( \'SECURE_AUTH_KEY\'";i:1;s:70:",  \'L2JEeO4orm[:*PIuzfqjSFokZ (L<gX^tp-}@oXQ@8w5QX(rxI|tNxF=jGDODBIK\' ";i:2;s:2:");";}}s:13:"LOGGED_IN_KEY";a:3:{s:3:"src";s:97:"define( \'LOGGED_IN_KEY\',    \'2uqrS6OZCKvhL{EuGSfj>2Wro&Bx8>h%[I{|luay.m{-K=pnVYIGK!^5;7iX~-*u\' );";s:5:"value";s:66:"\'2uqrS6OZCKvhL{EuGSfj>2Wro&Bx8>h%[I{|luay.m{-K=pnVYIGK!^5;7iX~-*u\'";s:5:"parts";a:3:{i:0;s:23:"define( \'LOGGED_IN_KEY\'";i:1;s:72:",    \'2uqrS6OZCKvhL{EuGSfj>2Wro&Bx8>h%[I{|luay.m{-K=pnVYIGK!^5;7iX~-*u\' ";i:2;s:2:");";}}s:9:"NONCE_KEY";a:3:{s:3:"src";s:97:"define( \'NONCE_KEY\',        \'I;qsffkIe}hEdA(cu.R*l8w@v}{1nMDI5=)rU(BQ?CML^k7SZzAUv}7v|WB_Q{d3\' );";s:5:"value";s:66:"\'I;qsffkIe}hEdA(cu.R*l8w@v}{1nMDI5=)rU(BQ?CML^k7SZzAUv}7v|WB_Q{d3\'";s:5:"parts";a:3:{i:0;s:19:"define( \'NONCE_KEY\'";i:1;s:76:",        \'I;qsffkIe}hEdA(cu.R*l8w@v}{1nMDI5=)rU(BQ?CML^k7SZzAUv}7v|WB_Q{d3\' ";i:2;s:2:");";}}s:9:"AUTH_SALT";a:3:{s:3:"src";s:97:"define( \'AUTH_SALT\',        \'ztW0su.V_2(f8%9.K7fbtcntJeBEMLb[4:EZEe@)MI<7^5KWmjTl=,SWv+~LV;+&\' );";s:5:"value";s:66:"\'ztW0su.V_2(f8%9.K7fbtcntJeBEMLb[4:EZEe@)MI<7^5KWmjTl=,SWv+~LV;+&\'";s:5:"parts";a:3:{i:0;s:19:"define( \'AUTH_SALT\'";i:1;s:76:",        \'ztW0su.V_2(f8%9.K7fbtcntJeBEMLb[4:EZEe@)MI<7^5KWmjTl=,SWv+~LV;+&\' ";i:2;s:2:");";}}s:16:"SECURE_AUTH_SALT";a:3:{s:3:"src";s:97:"define( \'SECURE_AUTH_SALT\', \'|{H}]=czmk{BLrK#xJ/je/8dVBo?(N%BzJgpt/(^Q)~0FpNB1(_^4zMMK]dfsw1]\' );";s:5:"value";s:66:"\'|{H}]=czmk{BLrK#xJ/je/8dVBo?(N%BzJgpt/(^Q)~0FpNB1(_^4zMMK]dfsw1]\'";s:5:"parts";a:3:{i:0;s:26:"define( \'SECURE_AUTH_SALT\'";i:1;s:69:", \'|{H}]=czmk{BLrK#xJ/je/8dVBo?(N%BzJgpt/(^Q)~0FpNB1(_^4zMMK]dfsw1]\' ";i:2;s:2:");";}}s:14:"LOGGED_IN_SALT";a:3:{s:3:"src";s:97:"define( \'LOGGED_IN_SALT\',   \'m)/[5E4Cz8W zBK_2R|k!((ZAChAjrQ*$5ikmV{Hc%9x4TbIM4XX/nLV0W,e}8Wv\' );";s:5:"value";s:66:"\'m)/[5E4Cz8W zBK_2R|k!((ZAChAjrQ*$5ikmV{Hc%9x4TbIM4XX/nLV0W,e}8Wv\'";s:5:"parts";a:3:{i:0;s:24:"define( \'LOGGED_IN_SALT\'";i:1;s:71:",   \'m)/[5E4Cz8W zBK_2R|k!((ZAChAjrQ*$5ikmV{Hc%9x4TbIM4XX/nLV0W,e}8Wv\' ";i:2;s:2:");";}}s:10:"NONCE_SALT";a:3:{s:3:"src";s:97:"define( \'NONCE_SALT\',       \'UH!jYLoi$^6Um]-hk);uxM=YtPhD+/iiU2aW$|bQ?$Y}3S7OHnd(Z:WaEHVx1%|&\' );";s:5:"value";s:66:"\'UH!jYLoi$^6Um]-hk);uxM=YtPhD+/iiU2aW$|bQ?$Y}3S7OHnd(Z:WaEHVx1%|&\'";s:5:"parts";a:3:{i:0;s:20:"define( \'NONCE_SALT\'";i:1;s:75:",       \'UH!jYLoi$^6Um]-hk);uxM=YtPhD+/iiU2aW$|bQ?$Y}3S7OHnd(Z:WaEHVx1%|&\' ";i:2;s:2:");";}}s:8:"WP_DEBUG";a:3:{s:3:"src";s:28:"define( \'WP_DEBUG\', false );";s:5:"value";s:5:"false";s:5:"parts";a:3:{i:0;s:18:"define( \'WP_DEBUG\'";i:1;s:8:", false ";i:2;s:2:");";}}s:7:"ABSPATH";a:3:{s:3:"src";s:36:"	define( \'ABSPATH\', __DIR__ . \'/\' );";s:5:"value";s:13:"__DIR__ . \'/\'";s:5:"parts";a:3:{i:0;s:18:"	define( \'ABSPATH\'";i:1;s:16:", __DIR__ . \'/\' ";i:2;s:2:");";}}}s:8:"variable";a:1:{s:12:"table_prefix";a:3:{s:3:"src";s:22:"$table_prefix = \'wp_\';";s:5:"value";s:5:"\'wp_\'";s:5:"parts";a:2:{i:0;s:15:"$table_prefix =";i:1;s:7:" \'wp_\';";}}}}}}s:8:"Database";O:12:"DUP_Database":15:{s:4:"Type";s:5:"MySQL";s:4:"Size";i:1201863;s:4:"File";s:78:"20241017_testtechniquehehocom_ffe14fc495bf78c67508_20241017022236_database.sql";s:4:"Path";N;s:12:"FilterTables";s:0:"";s:8:"FilterOn";i:0;s:4:"Name";N;s:10:"Compatible";s:0:"";s:8:"Comments";s:28:"MySQL Community Server - GPL";s:19:"sameNameTableExists";b:0;s:4:"info";O:16:"DUP_DatabaseInfo":23:{s:9:"buildMode";s:3:"PHP";s:11:"charSetList";a:2:{i:0;s:7:"utf8mb4";i:1;s:7:"utf8mb3";}s:13:"collationList";a:3:{i:0;s:18:"utf8mb3_general_ci";i:1;s:18:"utf8mb4_0900_ai_ci";i:2;s:22:"utf8mb4_unicode_520_ci";}s:10:"engineList";a:1:{i:0;s:6:"MyISAM";}s:17:"isTablesUpperCase";i:0;s:15:"isNameUpperCase";i:0;s:4:"name";s:17:"wordpress_hehocom";s:15:"tablesBaseCount";i:20;s:16:"tablesFinalCount";i:20;s:20:"muFilteredTableCount";i:0;s:14:"tablesRowCount";i:460;s:16:"tablesSizeOnDisk";i:1248231;s:10:"tablesList";a:20:{s:5:"blogs";a:3:{s:14:"inaccurateRows";i:0;s:12:"insertedRows";i:0;s:4:"size";i:1024;}s:14:"wp_commentmeta";a:3:{s:14:"inaccurateRows";i:0;s:12:"insertedRows";i:0;s:4:"size";i:10344;}s:11:"wp_comments";a:3:{s:14:"inaccurateRows";i:0;s:12:"insertedRows";i:0;s:4:"size";i:7644;}s:22:"wp_duplicator_packages";a:3:{s:14:"inaccurateRows";i:0;s:12:"insertedRows";i:1;s:4:"size";i:1024;}s:8:"wp_links";a:3:{s:14:"inaccurateRows";i:0;s:12:"insertedRows";i:0;s:4:"size";i:1024;}s:10:"wp_options";a:3:{s:14:"inaccurateRows";i:205;s:12:"insertedRows";i:205;s:4:"size";i:1053748;}s:11:"wp_postmeta";a:3:{s:14:"inaccurateRows";i:69;s:12:"insertedRows";i:69;s:4:"size";i:18132;}s:8:"wp_posts";a:3:{s:14:"inaccurateRows";i:26;s:12:"insertedRows";i:26;s:4:"size";i:30956;}s:22:"wp_simply_static_pages";a:3:{s:14:"inaccurateRows";i:77;s:12:"insertedRows";i:77;s:4:"size";i:43268;}s:21:"wp_term_relationships";a:3:{s:14:"inaccurateRows";i:6;s:12:"insertedRows";i:6;s:4:"size";i:3198;}s:16:"wp_term_taxonomy";a:3:{s:14:"inaccurateRows";i:3;s:12:"insertedRows";i:3;s:4:"size";i:4216;}s:11:"wp_termmeta";a:3:{s:14:"inaccurateRows";i:0;s:12:"insertedRows";i:0;s:4:"size";i:4096;}s:8:"wp_terms";a:3:{s:14:"inaccurateRows";i:3;s:12:"insertedRows";i:3;s:4:"size";i:13428;}s:11:"wp_usermeta";a:3:{s:14:"inaccurateRows";i:24;s:12:"insertedRows";i:24;s:4:"size";i:12928;}s:8:"wp_users";a:3:{s:14:"inaccurateRows";i:1;s:12:"insertedRows";i:1;s:4:"size";i:8352;}s:18:"wp_yoast_indexable";a:3:{s:14:"inaccurateRows";i:13;s:12:"insertedRows";i:13;s:4:"size";i:17700;}s:28:"wp_yoast_indexable_hierarchy";a:3:{s:14:"inaccurateRows";i:9;s:12:"insertedRows";i:9;s:4:"size";i:5309;}s:19:"wp_yoast_migrations";a:3:{s:14:"inaccurateRows";i:24;s:12:"insertedRows";i:24;s:4:"size";i:9792;}s:21:"wp_yoast_primary_term";a:3:{s:14:"inaccurateRows";i:0;s:12:"insertedRows";i:0;s:4:"size";i:1024;}s:18:"wp_yoast_seo_links";a:3:{s:14:"inaccurateRows";i:0;s:12:"insertedRows";i:0;s:4:"size";i:1024;}}s:19:"lowerCaseTableNames";i:1;s:8:"dbEngine";s:5:"MySQL";s:7:"version";s:6:"8.0.31";s:14:"versionComment";s:28:"MySQL Community Server - GPL";s:9:"viewCount";i:0;s:9:"procCount";i:0;s:9:"funcCount";i:0;s:11:"triggerList";a:0:{}s:33:"\0DUP_DatabaseInfo\0intFieldsStruct";a:0:{}s:42:"\0DUP_DatabaseInfo\0indexProcessedSchemaSize";a:0:{}}s:10:"\0*\0Package";r:1;s:24:"\0DUP_Database\0tempDbPath";s:142:"C:/wamp64/www/wordpress_hehocom/wp-content/backups-dup-lite/tmp/20241017_testtechniquehehocom_ffe14fc495bf78c67508_20241017022236_database.sql";s:23:"\0DUP_Database\0EOFMarker";s:0:"";s:26:"\0DUP_Database\0networkFlush";b:0;}s:13:"BuildProgress";O:18:"DUP_Build_Progress":12:{s:17:"thread_start_time";N;s:11:"initialized";b:0;s:15:"installer_built";b:1;s:15:"archive_started";b:0;s:20:"archive_has_database";b:0;s:13:"archive_built";b:0;s:21:"database_script_built";b:0;s:6:"failed";b:0;s:7:"retries";i:0;s:14:"build_failures";a:0:{}s:19:"validation_failures";a:0:{}s:27:"\0DUP_Build_Progress\0package";O:11:"DUP_Package":23:{s:7:"Created";s:19:"2024-10-17 02:22:36";s:7:"Version";s:8:"1.5.11.1";s:9:"VersionWP";s:5:"6.6.2";s:9:"VersionDB";s:6:"8.0.31";s:10:"VersionPHP";s:6:"8.0.26";s:9:"VersionOS";s:5:"WINNT";s:2:"ID";N;s:4:"Name";s:29:"20241017_testtechniquehehocom";s:4:"Hash";s:35:"ffe14fc495bf78c67508_20241017022236";s:8:"NameHash";s:65:"20241017_testtechniquehehocom_ffe14fc495bf78c67508_20241017022236";s:4:"Type";i:0;s:5:"Notes";s:0:"";s:8:"ScanFile";N;s:10:"TimerStart";i:-1;s:7:"Runtime";N;s:7:"ExeSize";N;s:7:"ZipSize";N;s:6:"Status";i:0;s:6:"WPUser";N;s:7:"Archive";r:21;s:9:"Installer";r:84;s:8:"Database";r:227;s:13:"BuildProgress";r:352;}}}') ;

#
# Fin du contenu des données de la table `wp_duplicator_packages`
# --------------------------------------------------------



#
# Supprimer toute table existante `wp_links`
#

DROP TABLE IF EXISTS `wp_links`;


#
# Structure de la table `wp_links`
#

CREATE TABLE `wp_links` (
  `link_id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `link_url` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_name` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_image` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_target` varchar(25) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_description` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_visible` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'Y',
  `link_owner` bigint unsigned NOT NULL DEFAULT '1',
  `link_rating` int NOT NULL DEFAULT '0',
  `link_updated` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `link_rel` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_notes` mediumtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `link_rss` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`link_id`),
  KEY `link_visible` (`link_visible`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;


#
# Données de la table `wp_links`
#

#
# Fin du contenu des données de la table `wp_links`
# --------------------------------------------------------



#
# Supprimer toute table existante `wp_options`
#

DROP TABLE IF EXISTS `wp_options`;


#
# Structure de la table `wp_options`
#

CREATE TABLE `wp_options` (
  `option_id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `option_name` varchar(191) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `option_value` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `autoload` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'yes',
  PRIMARY KEY (`option_id`),
  UNIQUE KEY `option_name` (`option_name`),
  KEY `autoload` (`autoload`)
) ENGINE=MyISAM AUTO_INCREMENT=435 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;


#
# Données de la table `wp_options`
#
INSERT INTO `wp_options` ( `option_id`, `option_name`, `option_value`, `autoload`) VALUES
(1, 'cron', 'a:13:{i:1729157359;a:1:{s:34:"wp_privacy_delete_old_export_files";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:6:"hourly";s:4:"args";a:0:{}s:8:"interval";i:3600;}}}i:1729182559;a:2:{s:30:"wp_site_health_scheduled_check";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:6:"weekly";s:4:"args";a:0:{}s:8:"interval";i:604800;}}s:32:"recovery_mode_clean_expired_keys";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:5:"daily";s:4:"args";a:0:{}s:8:"interval";i:86400;}}}i:1729182573;a:3:{s:19:"wp_scheduled_delete";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:5:"daily";s:4:"args";a:0:{}s:8:"interval";i:86400;}}s:25:"delete_expired_transients";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:5:"daily";s:4:"args";a:0:{}s:8:"interval";i:86400;}}s:21:"wp_update_user_counts";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:10:"twicedaily";s:4:"args";a:0:{}s:8:"interval";i:43200;}}}i:1729182575;a:1:{s:30:"wp_scheduled_auto_draft_delete";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:5:"daily";s:4:"args";a:0:{}s:8:"interval";i:86400;}}}i:1729186159;a:1:{s:16:"wp_version_check";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:10:"twicedaily";s:4:"args";a:0:{}s:8:"interval";i:43200;}}}i:1729187959;a:1:{s:17:"wp_update_plugins";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:10:"twicedaily";s:4:"args";a:0:{}s:8:"interval";i:43200;}}}i:1729189759;a:1:{s:16:"wp_update_themes";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:10:"twicedaily";s:4:"args";a:0:{}s:8:"interval";i:43200;}}}i:1729214873;a:2:{s:13:"wpseo-reindex";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:5:"daily";s:4:"args";a:0:{}s:8:"interval";i:86400;}}s:31:"wpseo_permalink_structure_check";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:5:"daily";s:4:"args";a:0:{}s:8:"interval";i:86400;}}}i:1729217913;a:1:{s:21:"ai1wm_storage_cleanup";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:5:"daily";s:4:"args";a:0:{}s:8:"interval";i:86400;}}}i:1729503558;a:1:{s:30:"duplicator_usage_tracking_cron";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:22:"duplicator_weekly_cron";s:4:"args";a:0:{}s:8:"interval";i:604800;}}}i:1729512000;a:1:{s:29:"duplicator_email_summary_cron";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:22:"duplicator_weekly_cron";s:4:"args";a:0:{}s:8:"interval";i:604800;}}}i:1729701241;a:1:{s:30:"wp_delete_temp_updater_backups";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:6:"weekly";s:4:"args";a:0:{}s:8:"interval";i:604800;}}}s:7:"version";i:2;}', 'auto'),
(2, 'siteurl', 'http://localhost/wordpress_hehocom', 'on'),
(3, 'home', 'http://localhost/wordpress_hehocom', 'on'),
(4, 'blogname', 'Test technique Hehocom', 'on'),
(5, 'blogdescription', '', 'on'),
(6, 'users_can_register', '0', 'on'),
(7, 'admin_email', 'valentinrenaudin2206@gmail.com', 'on'),
(8, 'start_of_week', '1', 'on'),
(9, 'use_balanceTags', '0', 'on'),
(10, 'use_smilies', '1', 'on'),
(11, 'require_name_email', '1', 'on'),
(12, 'comments_notify', '1', 'on'),
(13, 'posts_per_rss', '10', 'on'),
(14, 'rss_use_excerpt', '0', 'on'),
(15, 'mailserver_url', 'mail.example.com', 'on'),
(16, 'mailserver_login', 'login@example.com', 'on'),
(17, 'mailserver_pass', 'password', 'on'),
(18, 'mailserver_port', '110', 'on'),
(19, 'default_category', '1', 'on'),
(20, 'default_comment_status', 'open', 'on'),
(21, 'default_ping_status', 'open', 'on'),
(22, 'default_pingback_flag', '1', 'on'),
(23, 'posts_per_page', '10', 'on'),
(24, 'date_format', 'j F Y', 'on'),
(25, 'time_format', 'G\\hi', 'on'),
(26, 'links_updated_date_format', 'd F Y G\\hi', 'on'),
(27, 'comment_moderation', '0', 'on'),
(28, 'moderation_notify', '1', 'on'),
(29, 'permalink_structure', '/%year%/%monthnum%/%day%/%postname%/', 'on'),
(30, 'rewrite_rules', 'a:95:{s:11:"^wp-json/?$";s:22:"index.php?rest_route=/";s:14:"^wp-json/(.*)?";s:33:"index.php?rest_route=/$matches[1]";s:21:"^index.php/wp-json/?$";s:22:"index.php?rest_route=/";s:24:"^index.php/wp-json/(.*)?";s:33:"index.php?rest_route=/$matches[1]";s:17:"^wp-sitemap\\.xml$";s:23:"index.php?sitemap=index";s:17:"^wp-sitemap\\.xsl$";s:36:"index.php?sitemap-stylesheet=sitemap";s:23:"^wp-sitemap-index\\.xsl$";s:34:"index.php?sitemap-stylesheet=index";s:48:"^wp-sitemap-([a-z]+?)-([a-z\\d_-]+?)-(\\d+?)\\.xml$";s:75:"index.php?sitemap=$matches[1]&sitemap-subtype=$matches[2]&paged=$matches[3]";s:34:"^wp-sitemap-([a-z]+?)-(\\d+?)\\.xml$";s:47:"index.php?sitemap=$matches[1]&paged=$matches[2]";s:47:"category/(.+?)/feed/(feed|rdf|rss|rss2|atom)/?$";s:52:"index.php?category_name=$matches[1]&feed=$matches[2]";s:42:"category/(.+?)/(feed|rdf|rss|rss2|atom)/?$";s:52:"index.php?category_name=$matches[1]&feed=$matches[2]";s:23:"category/(.+?)/embed/?$";s:46:"index.php?category_name=$matches[1]&embed=true";s:35:"category/(.+?)/page/?([0-9]{1,})/?$";s:53:"index.php?category_name=$matches[1]&paged=$matches[2]";s:17:"category/(.+?)/?$";s:35:"index.php?category_name=$matches[1]";s:44:"tag/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:42:"index.php?tag=$matches[1]&feed=$matches[2]";s:39:"tag/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:42:"index.php?tag=$matches[1]&feed=$matches[2]";s:20:"tag/([^/]+)/embed/?$";s:36:"index.php?tag=$matches[1]&embed=true";s:32:"tag/([^/]+)/page/?([0-9]{1,})/?$";s:43:"index.php?tag=$matches[1]&paged=$matches[2]";s:14:"tag/([^/]+)/?$";s:25:"index.php?tag=$matches[1]";s:45:"type/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?post_format=$matches[1]&feed=$matches[2]";s:40:"type/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?post_format=$matches[1]&feed=$matches[2]";s:21:"type/([^/]+)/embed/?$";s:44:"index.php?post_format=$matches[1]&embed=true";s:33:"type/([^/]+)/page/?([0-9]{1,})/?$";s:51:"index.php?post_format=$matches[1]&paged=$matches[2]";s:15:"type/([^/]+)/?$";s:33:"index.php?post_format=$matches[1]";s:48:".*wp-(atom|rdf|rss|rss2|feed|commentsrss2)\\.php$";s:18:"index.php?feed=old";s:20:".*wp-app\\.php(/.*)?$";s:19:"index.php?error=403";s:18:".*wp-register.php$";s:23:"index.php?register=true";s:32:"feed/(feed|rdf|rss|rss2|atom)/?$";s:27:"index.php?&feed=$matches[1]";s:27:"(feed|rdf|rss|rss2|atom)/?$";s:27:"index.php?&feed=$matches[1]";s:8:"embed/?$";s:21:"index.php?&embed=true";s:20:"page/?([0-9]{1,})/?$";s:28:"index.php?&paged=$matches[1]";s:27:"comment-page-([0-9]{1,})/?$";s:39:"index.php?&page_id=19&cpage=$matches[1]";s:41:"comments/feed/(feed|rdf|rss|rss2|atom)/?$";s:42:"index.php?&feed=$matches[1]&withcomments=1";s:36:"comments/(feed|rdf|rss|rss2|atom)/?$";s:42:"index.php?&feed=$matches[1]&withcomments=1";s:17:"comments/embed/?$";s:21:"index.php?&embed=true";s:44:"search/(.+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:40:"index.php?s=$matches[1]&feed=$matches[2]";s:39:"search/(.+)/(feed|rdf|rss|rss2|atom)/?$";s:40:"index.php?s=$matches[1]&feed=$matches[2]";s:20:"search/(.+)/embed/?$";s:34:"index.php?s=$matches[1]&embed=true";s:32:"search/(.+)/page/?([0-9]{1,})/?$";s:41:"index.php?s=$matches[1]&paged=$matches[2]";s:14:"search/(.+)/?$";s:23:"index.php?s=$matches[1]";s:47:"author/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?author_name=$matches[1]&feed=$matches[2]";s:42:"author/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?author_name=$matches[1]&feed=$matches[2]";s:23:"author/([^/]+)/embed/?$";s:44:"index.php?author_name=$matches[1]&embed=true";s:35:"author/([^/]+)/page/?([0-9]{1,})/?$";s:51:"index.php?author_name=$matches[1]&paged=$matches[2]";s:17:"author/([^/]+)/?$";s:33:"index.php?author_name=$matches[1]";s:69:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$";s:80:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]";s:64:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$";s:80:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]";s:45:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/embed/?$";s:74:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&embed=true";s:57:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/page/?([0-9]{1,})/?$";s:81:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&paged=$matches[4]";s:39:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/?$";s:63:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]";s:56:"([0-9]{4})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$";s:64:"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]";s:51:"([0-9]{4})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$";s:64:"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]";s:32:"([0-9]{4})/([0-9]{1,2})/embed/?$";s:58:"index.php?year=$matches[1]&monthnum=$matches[2]&embed=true";s:44:"([0-9]{4})/([0-9]{1,2})/page/?([0-9]{1,})/?$";s:65:"index.php?year=$matches[1]&monthnum=$matches[2]&paged=$matches[3]";s:26:"([0-9]{4})/([0-9]{1,2})/?$";s:47:"index.php?year=$matches[1]&monthnum=$matches[2]";s:43:"([0-9]{4})/feed/(feed|rdf|rss|rss2|atom)/?$";s:43:"index.php?year=$matches[1]&feed=$matches[2]";s:38:"([0-9]{4})/(feed|rdf|rss|rss2|atom)/?$";s:43:"index.php?year=$matches[1]&feed=$matches[2]";s:19:"([0-9]{4})/embed/?$";s:37:"index.php?year=$matches[1]&embed=true";s:31:"([0-9]{4})/page/?([0-9]{1,})/?$";s:44:"index.php?year=$matches[1]&paged=$matches[2]";s:13:"([0-9]{4})/?$";s:26:"index.php?year=$matches[1]";s:58:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:68:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:88:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:83:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:83:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:64:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";s:53:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/embed/?$";s:91:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&embed=true";s:57:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/trackback/?$";s:85:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&tb=1";s:77:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:97:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&feed=$matches[5]";s:72:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:97:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&feed=$matches[5]";s:65:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/page/?([0-9]{1,})/?$";s:98:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&paged=$matches[5]";s:72:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/comment-page-([0-9]{1,})/?$";s:98:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&cpage=$matches[5]";s:61:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)(?:/([0-9]+))?/?$";s:97:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&page=$matches[5]";s:47:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:57:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:77:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:72:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:72:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:53:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";s:64:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/comment-page-([0-9]{1,})/?$";s:81:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&cpage=$matches[4]";s:51:"([0-9]{4})/([0-9]{1,2})/comment-page-([0-9]{1,})/?$";s:65:"index.php?year=$matches[1]&monthnum=$matches[2]&cpage=$matches[3]";s:38:"([0-9]{4})/comment-page-([0-9]{1,})/?$";s:44:"index.php?year=$matches[1]&cpage=$matches[2]";s:27:".?.+?/attachment/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:37:".?.+?/attachment/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:57:".?.+?/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:52:".?.+?/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:52:".?.+?/attachment/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:33:".?.+?/attachment/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";s:16:"(.?.+?)/embed/?$";s:41:"index.php?pagename=$matches[1]&embed=true";s:20:"(.?.+?)/trackback/?$";s:35:"index.php?pagename=$matches[1]&tb=1";s:40:"(.?.+?)/feed/(feed|rdf|rss|rss2|atom)/?$";s:47:"index.php?pagename=$matches[1]&feed=$matches[2]";s:35:"(.?.+?)/(feed|rdf|rss|rss2|atom)/?$";s:47:"index.php?pagename=$matches[1]&feed=$matches[2]";s:28:"(.?.+?)/page/?([0-9]{1,})/?$";s:48:"index.php?pagename=$matches[1]&paged=$matches[2]";s:35:"(.?.+?)/comment-page-([0-9]{1,})/?$";s:48:"index.php?pagename=$matches[1]&cpage=$matches[2]";s:24:"(.?.+?)(?:/([0-9]+))?/?$";s:47:"index.php?pagename=$matches[1]&page=$matches[2]";}', 'on'),
(31, 'hack_file', '0', 'on'),
(32, 'blog_charset', 'UTF-8', 'on'),
(33, 'moderation_keys', '', 'off'),
(34, 'active_plugins', 'a:5:{i:0;s:51:"all-in-one-wp-migration/all-in-one-wp-migration.php";i:1;s:25:"duplicator/duplicator.php";i:2;s:31:"simply-static/simply-static.php";i:3;s:24:"wordpress-seo/wp-seo.php";i:4;s:31:"wp-migrate-db/wp-migrate-db.php";}', 'on'),
(35, 'category_base', '', 'on'),
(36, 'ping_sites', 'http://rpc.pingomatic.com/', 'on'),
(37, 'comment_max_links', '2', 'on'),
(38, 'gmt_offset', '0', 'on'),
(39, 'default_email_category', '1', 'on'),
(40, 'recently_edited', '', 'off'),
(41, 'template', 'oceanwp', 'on'),
(42, 'stylesheet', 'hehocom', 'on'),
(43, 'comment_registration', '0', 'on'),
(44, 'html_type', 'text/html', 'on'),
(45, 'use_trackback', '0', 'on'),
(46, 'default_role', 'subscriber', 'on'),
(47, 'db_version', '57155', 'on'),
(48, 'uploads_use_yearmonth_folders', '1', 'on'),
(49, 'upload_path', '', 'on'),
(50, 'blog_public', '1', 'on'),
(51, 'default_link_category', '2', 'on'),
(52, 'show_on_front', 'page', 'on'),
(53, 'tag_base', '', 'on'),
(54, 'show_avatars', '1', 'on'),
(55, 'avatar_rating', 'G', 'on'),
(56, 'upload_url_path', '', 'on'),
(57, 'thumbnail_size_w', '150', 'on'),
(58, 'thumbnail_size_h', '150', 'on'),
(59, 'thumbnail_crop', '1', 'on'),
(60, 'medium_size_w', '300', 'on'),
(61, 'medium_size_h', '300', 'on'),
(62, 'avatar_default', 'mystery', 'on'),
(63, 'large_size_w', '1024', 'on'),
(64, 'large_size_h', '1024', 'on'),
(65, 'image_default_link_type', 'none', 'on'),
(66, 'image_default_size', '', 'on'),
(67, 'image_default_align', '', 'on'),
(68, 'close_comments_for_old_posts', '0', 'on'),
(69, 'close_comments_days_old', '14', 'on'),
(70, 'thread_comments', '1', 'on'),
(71, 'thread_comments_depth', '5', 'on'),
(72, 'page_comments', '0', 'on'),
(73, 'comments_per_page', '50', 'on'),
(74, 'default_comments_page', 'newest', 'on'),
(75, 'comment_order', 'asc', 'on'),
(76, 'sticky_posts', 'a:0:{}', 'on'),
(77, 'widget_categories', 'a:2:{i:1;a:0:{}s:12:"_multiwidget";i:1;}', 'auto'),
(78, 'widget_text', 'a:2:{i:1;a:0:{}s:12:"_multiwidget";i:1;}', 'auto'),
(79, 'widget_rss', 'a:2:{i:1;a:0:{}s:12:"_multiwidget";i:1;}', 'auto'),
(80, 'uninstall_plugins', 'a:1:{s:24:"wordpress-seo/wp-seo.php";s:14:"__return_false";}', 'off'),
(81, 'timezone_string', 'Europe/Paris', 'on'),
(82, 'page_for_posts', '19', 'on'),
(83, 'page_on_front', '19', 'on'),
(84, 'default_post_format', '0', 'on'),
(85, 'link_manager_enabled', '0', 'on'),
(86, 'finished_splitting_shared_terms', '1', 'on'),
(87, 'site_icon', '0', 'on'),
(88, 'medium_large_size_w', '768', 'on'),
(89, 'medium_large_size_h', '0', 'on'),
(90, 'wp_page_for_privacy_policy', '3', 'on'),
(91, 'show_comments_cookies_opt_in', '1', 'on'),
(92, 'admin_email_lifespan', '1744648159', 'on'),
(93, 'disallowed_keys', '', 'off'),
(94, 'comment_previously_approved', '1', 'on'),
(95, 'auto_plugin_theme_update_emails', 'a:0:{}', 'off'),
(96, 'auto_update_core_dev', 'enabled', 'on'),
(97, 'auto_update_core_minor', 'enabled', 'on'),
(98, 'auto_update_core_major', 'enabled', 'on'),
(99, 'wp_force_deactivated_plugins', 'a:0:{}', 'on'),
(100, 'wp_attachment_pages_enabled', '0', 'on') ;
INSERT INTO `wp_options` ( `option_id`, `option_name`, `option_value`, `autoload`) VALUES
(101, 'initial_db_version', '57155', 'on'),
(102, 'wp_user_roles', 'a:7:{s:13:"administrator";a:2:{s:4:"name";s:13:"Administrator";s:12:"capabilities";a:62:{s:13:"switch_themes";b:1;s:11:"edit_themes";b:1;s:16:"activate_plugins";b:1;s:12:"edit_plugins";b:1;s:10:"edit_users";b:1;s:10:"edit_files";b:1;s:14:"manage_options";b:1;s:17:"moderate_comments";b:1;s:17:"manage_categories";b:1;s:12:"manage_links";b:1;s:12:"upload_files";b:1;s:6:"import";b:1;s:15:"unfiltered_html";b:1;s:10:"edit_posts";b:1;s:17:"edit_others_posts";b:1;s:20:"edit_published_posts";b:1;s:13:"publish_posts";b:1;s:10:"edit_pages";b:1;s:4:"read";b:1;s:8:"level_10";b:1;s:7:"level_9";b:1;s:7:"level_8";b:1;s:7:"level_7";b:1;s:7:"level_6";b:1;s:7:"level_5";b:1;s:7:"level_4";b:1;s:7:"level_3";b:1;s:7:"level_2";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:17:"edit_others_pages";b:1;s:20:"edit_published_pages";b:1;s:13:"publish_pages";b:1;s:12:"delete_pages";b:1;s:19:"delete_others_pages";b:1;s:22:"delete_published_pages";b:1;s:12:"delete_posts";b:1;s:19:"delete_others_posts";b:1;s:22:"delete_published_posts";b:1;s:20:"delete_private_posts";b:1;s:18:"edit_private_posts";b:1;s:18:"read_private_posts";b:1;s:20:"delete_private_pages";b:1;s:18:"edit_private_pages";b:1;s:18:"read_private_pages";b:1;s:12:"delete_users";b:1;s:12:"create_users";b:1;s:17:"unfiltered_upload";b:1;s:14:"edit_dashboard";b:1;s:14:"update_plugins";b:1;s:14:"delete_plugins";b:1;s:15:"install_plugins";b:1;s:13:"update_themes";b:1;s:14:"install_themes";b:1;s:11:"update_core";b:1;s:10:"list_users";b:1;s:12:"remove_users";b:1;s:13:"promote_users";b:1;s:18:"edit_theme_options";b:1;s:13:"delete_themes";b:1;s:6:"export";b:1;s:20:"wpseo_manage_options";b:1;}}s:6:"editor";a:2:{s:4:"name";s:6:"Editor";s:12:"capabilities";a:36:{s:17:"moderate_comments";b:1;s:17:"manage_categories";b:1;s:12:"manage_links";b:1;s:12:"upload_files";b:1;s:15:"unfiltered_html";b:1;s:10:"edit_posts";b:1;s:17:"edit_others_posts";b:1;s:20:"edit_published_posts";b:1;s:13:"publish_posts";b:1;s:10:"edit_pages";b:1;s:4:"read";b:1;s:7:"level_7";b:1;s:7:"level_6";b:1;s:7:"level_5";b:1;s:7:"level_4";b:1;s:7:"level_3";b:1;s:7:"level_2";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:17:"edit_others_pages";b:1;s:20:"edit_published_pages";b:1;s:13:"publish_pages";b:1;s:12:"delete_pages";b:1;s:19:"delete_others_pages";b:1;s:22:"delete_published_pages";b:1;s:12:"delete_posts";b:1;s:19:"delete_others_posts";b:1;s:22:"delete_published_posts";b:1;s:20:"delete_private_posts";b:1;s:18:"edit_private_posts";b:1;s:18:"read_private_posts";b:1;s:20:"delete_private_pages";b:1;s:18:"edit_private_pages";b:1;s:18:"read_private_pages";b:1;s:15:"wpseo_bulk_edit";b:1;s:28:"wpseo_edit_advanced_metadata";b:1;}}s:6:"author";a:2:{s:4:"name";s:6:"Author";s:12:"capabilities";a:10:{s:12:"upload_files";b:1;s:10:"edit_posts";b:1;s:20:"edit_published_posts";b:1;s:13:"publish_posts";b:1;s:4:"read";b:1;s:7:"level_2";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:12:"delete_posts";b:1;s:22:"delete_published_posts";b:1;}}s:11:"contributor";a:2:{s:4:"name";s:11:"Contributor";s:12:"capabilities";a:5:{s:10:"edit_posts";b:1;s:4:"read";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:12:"delete_posts";b:1;}}s:10:"subscriber";a:2:{s:4:"name";s:10:"Subscriber";s:12:"capabilities";a:2:{s:4:"read";b:1;s:7:"level_0";b:1;}}s:13:"wpseo_manager";a:2:{s:4:"name";s:11:"SEO Manager";s:12:"capabilities";a:38:{s:17:"moderate_comments";b:1;s:17:"manage_categories";b:1;s:12:"manage_links";b:1;s:12:"upload_files";b:1;s:15:"unfiltered_html";b:1;s:10:"edit_posts";b:1;s:17:"edit_others_posts";b:1;s:20:"edit_published_posts";b:1;s:13:"publish_posts";b:1;s:10:"edit_pages";b:1;s:4:"read";b:1;s:7:"level_7";b:1;s:7:"level_6";b:1;s:7:"level_5";b:1;s:7:"level_4";b:1;s:7:"level_3";b:1;s:7:"level_2";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:17:"edit_others_pages";b:1;s:20:"edit_published_pages";b:1;s:13:"publish_pages";b:1;s:12:"delete_pages";b:1;s:19:"delete_others_pages";b:1;s:22:"delete_published_pages";b:1;s:12:"delete_posts";b:1;s:19:"delete_others_posts";b:1;s:22:"delete_published_posts";b:1;s:20:"delete_private_posts";b:1;s:18:"edit_private_posts";b:1;s:18:"read_private_posts";b:1;s:20:"delete_private_pages";b:1;s:18:"edit_private_pages";b:1;s:18:"read_private_pages";b:1;s:15:"wpseo_bulk_edit";b:1;s:28:"wpseo_edit_advanced_metadata";b:1;s:20:"wpseo_manage_options";b:1;s:23:"view_site_health_checks";b:1;}}s:12:"wpseo_editor";a:2:{s:4:"name";s:10:"SEO Editor";s:12:"capabilities";a:36:{s:17:"moderate_comments";b:1;s:17:"manage_categories";b:1;s:12:"manage_links";b:1;s:12:"upload_files";b:1;s:15:"unfiltered_html";b:1;s:10:"edit_posts";b:1;s:17:"edit_others_posts";b:1;s:20:"edit_published_posts";b:1;s:13:"publish_posts";b:1;s:10:"edit_pages";b:1;s:4:"read";b:1;s:7:"level_7";b:1;s:7:"level_6";b:1;s:7:"level_5";b:1;s:7:"level_4";b:1;s:7:"level_3";b:1;s:7:"level_2";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:17:"edit_others_pages";b:1;s:20:"edit_published_pages";b:1;s:13:"publish_pages";b:1;s:12:"delete_pages";b:1;s:19:"delete_others_pages";b:1;s:22:"delete_published_pages";b:1;s:12:"delete_posts";b:1;s:19:"delete_others_posts";b:1;s:22:"delete_published_posts";b:1;s:20:"delete_private_posts";b:1;s:18:"edit_private_posts";b:1;s:18:"read_private_posts";b:1;s:20:"delete_private_pages";b:1;s:18:"edit_private_pages";b:1;s:18:"read_private_pages";b:1;s:15:"wpseo_bulk_edit";b:1;s:28:"wpseo_edit_advanced_metadata";b:1;}}}', 'auto'),
(103, 'fresh_site', '0', 'auto'),
(104, 'WPLANG', 'fr_FR', 'auto'),
(105, 'user_count', '1', 'off'),
(106, 'widget_block', 'a:6:{i:2;a:1:{s:7:"content";s:19:"<!-- wp:search /-->";}i:3;a:1:{s:7:"content";s:159:"<!-- wp:group --><div class="wp-block-group"><!-- wp:heading --><h2>Articles récents</h2><!-- /wp:heading --><!-- wp:latest-posts /--></div><!-- /wp:group -->";}i:4;a:1:{s:7:"content";s:233:"<!-- wp:group --><div class="wp-block-group"><!-- wp:heading --><h2>Commentaires récents</h2><!-- /wp:heading --><!-- wp:latest-comments {"displayAvatar":false,"displayDate":false,"displayExcerpt":false} /--></div><!-- /wp:group -->";}i:5;a:1:{s:7:"content";s:146:"<!-- wp:group --><div class="wp-block-group"><!-- wp:heading --><h2>Archives</h2><!-- /wp:heading --><!-- wp:archives /--></div><!-- /wp:group -->";}i:6;a:1:{s:7:"content";s:151:"<!-- wp:group --><div class="wp-block-group"><!-- wp:heading --><h2>Catégories</h2><!-- /wp:heading --><!-- wp:categories /--></div><!-- /wp:group -->";}s:12:"_multiwidget";i:1;}', 'auto'),
(107, 'sidebars_widgets', 'a:9:{s:19:"wp_inactive_widgets";a:0:{}s:7:"sidebar";a:3:{i:0;s:7:"block-2";i:1;s:7:"block-3";i:2;s:7:"block-4";}s:9:"sidebar-2";a:2:{i:0;s:7:"block-5";i:1;s:7:"block-6";}s:14:"search_sidebar";a:0:{}s:10:"footer-one";a:0:{}s:10:"footer-two";a:0:{}s:12:"footer-three";a:0:{}s:11:"footer-four";a:0:{}s:13:"array_version";i:3;}', 'auto'),
(108, 'widget_pages', 'a:1:{s:12:"_multiwidget";i:1;}', 'auto'),
(109, 'widget_calendar', 'a:1:{s:12:"_multiwidget";i:1;}', 'auto'),
(110, 'widget_archives', 'a:1:{s:12:"_multiwidget";i:1;}', 'auto'),
(111, 'widget_media_audio', 'a:1:{s:12:"_multiwidget";i:1;}', 'auto'),
(112, 'widget_media_image', 'a:1:{s:12:"_multiwidget";i:1;}', 'auto'),
(113, 'widget_media_gallery', 'a:1:{s:12:"_multiwidget";i:1;}', 'auto'),
(114, 'widget_media_video', 'a:1:{s:12:"_multiwidget";i:1;}', 'auto'),
(115, 'widget_meta', 'a:1:{s:12:"_multiwidget";i:1;}', 'auto'),
(116, 'widget_search', 'a:1:{s:12:"_multiwidget";i:1;}', 'auto'),
(117, 'widget_recent-posts', 'a:1:{s:12:"_multiwidget";i:1;}', 'auto'),
(118, 'widget_recent-comments', 'a:1:{s:12:"_multiwidget";i:1;}', 'auto'),
(119, 'widget_tag_cloud', 'a:1:{s:12:"_multiwidget";i:1;}', 'auto'),
(120, 'widget_nav_menu', 'a:1:{s:12:"_multiwidget";i:1;}', 'auto'),
(121, 'widget_custom_html', 'a:1:{s:12:"_multiwidget";i:1;}', 'auto'),
(126, 'recovery_keys', 'a:0:{}', 'auto'),
(127, 'theme_mods_twentytwentyfour', 'a:2:{s:18:"custom_css_post_id";i:-1;s:16:"sidebars_widgets";a:2:{s:4:"time";i:1729096453;s:4:"data";a:3:{s:19:"wp_inactive_widgets";a:0:{}s:9:"sidebar-1";a:3:{i:0;s:7:"block-2";i:1;s:7:"block-3";i:2;s:7:"block-4";}s:9:"sidebar-2";a:2:{i:0;s:7:"block-5";i:1;s:7:"block-6";}}}}', 'off'),
(140, 'can_compress_scripts', '1', 'on'),
(155, 'finished_updating_comment_type', '1', 'auto'),
(169, 'current_theme', 'Hehocom', 'auto'),
(170, 'theme_mods_oceanwp', 'a:4:{i:0;b:0;s:18:"nav_menu_locations";a:0:{}s:18:"custom_css_post_id";i:-1;s:16:"sidebars_widgets";a:2:{s:4:"time";i:1729096554;s:4:"data";a:8:{s:19:"wp_inactive_widgets";a:0:{}s:7:"sidebar";a:3:{i:0;s:7:"block-2";i:1;s:7:"block-3";i:2;s:7:"block-4";}s:9:"sidebar-2";a:2:{i:0;s:7:"block-5";i:1;s:7:"block-6";}s:14:"search_sidebar";a:0:{}s:10:"footer-one";a:0:{}s:10:"footer-two";a:0:{}s:12:"footer-three";a:0:{}s:11:"footer-four";a:0:{}}}}', 'off'),
(171, 'theme_switched', '', 'auto'),
(175, 'theme_mods_twentytwentythree', 'a:4:{i:0;b:0;s:19:"wp_classic_sidebars";a:7:{s:7:"sidebar";a:11:{s:4:"name";s:29:"Colonne latérale par défaut";s:2:"id";s:7:"sidebar";s:11:"description";s:160:"Les widgets de cette zone seront affichés dans la zone de la colonne latérale gauche ou droite si vous choisissez la mise en page de colonne gauche ou droite.";s:5:"class";s:0:"";s:13:"before_widget";s:44:"<div id="%1$s" class="sidebar-box %2$s clr">";s:12:"after_widget";s:6:"</div>";s:12:"before_title";s:25:"<h4 class="widget-title">";s:11:"after_title";s:5:"</h4>";s:14:"before_sidebar";s:0:"";s:13:"after_sidebar";s:0:"";s:12:"show_in_rest";b:0;}s:9:"sidebar-2";a:11:{s:4:"name";s:24:"Colonne latérale gauche";s:2:"id";s:9:"sidebar-2";s:11:"description";s:146:"Les widgets de cette zone sont utilisés dans la région de colonne latérale gauche si vous utilisez la mise en page à deux colonnes latérales.";s:5:"class";s:0:"";s:13:"before_widget";s:44:"<div id="%1$s" class="sidebar-box %2$s clr">";s:12:"after_widget";s:6:"</div>";s:12:"before_title";s:25:"<h4 class="widget-title">";s:11:"after_title";s:5:"</h4>";s:14:"before_sidebar";s:0:"";s:13:"after_sidebar";s:0:"";s:12:"show_in_rest";b:0;}s:14:"search_sidebar";a:11:{s:4:"name";s:55:"Colonne latérale de la page de résultats de recherche";s:2:"id";s:14:"search_sidebar";s:11:"description";s:84:"Les widgets dans cette zone sont utilisés dans la page des résultats de recherche.";s:5:"class";s:0:"";s:13:"before_widget";s:44:"<div id="%1$s" class="sidebar-box %2$s clr">";s:12:"after_widget";s:6:"</div>";s:12:"before_title";s:25:"<h4 class="widget-title">";s:11:"after_title";s:5:"</h4>";s:14:"before_sidebar";s:0:"";s:13:"after_sidebar";s:0:"";s:12:"show_in_rest";b:0;}s:10:"footer-one";a:11:{s:4:"name";s:14:"Pied de page 1";s:2:"id";s:10:"footer-one";s:11:"description";s:82:"Les widgets dans cette zone sont utilisés dans la première zone de pied de page.";s:5:"class";s:0:"";s:13:"before_widget";s:46:"<div id="%1$s" class="footer-widget %2$s clr">";s:12:"after_widget";s:6:"</div>";s:12:"before_title";s:25:"<h4 class="widget-title">";s:11:"after_title";s:5:"</h4>";s:14:"before_sidebar";s:0:"";s:13:"after_sidebar";s:0:"";s:12:"show_in_rest";b:0;}s:10:"footer-two";a:11:{s:4:"name";s:14:"Pied de page 2";s:2:"id";s:10:"footer-two";s:11:"description";s:85:"Les widgets dans cette zone sont utilisés dans la deuxième région du pied de page.";s:5:"class";s:0:"";s:13:"before_widget";s:46:"<div id="%1$s" class="footer-widget %2$s clr">";s:12:"after_widget";s:6:"</div>";s:12:"before_title";s:25:"<h4 class="widget-title">";s:11:"after_title";s:5:"</h4>";s:14:"before_sidebar";s:0:"";s:13:"after_sidebar";s:0:"";s:12:"show_in_rest";b:0;}s:12:"footer-three";a:11:{s:4:"name";s:14:"Pied de page 3";s:2:"id";s:12:"footer-three";s:11:"description";s:86:"Les widgets dans cette zone sont utilisés dans la troisième région du pied de page.";s:5:"class";s:0:"";s:13:"before_widget";s:46:"<div id="%1$s" class="footer-widget %2$s clr">";s:12:"after_widget";s:6:"</div>";s:12:"before_title";s:25:"<h4 class="widget-title">";s:11:"after_title";s:5:"</h4>";s:14:"before_sidebar";s:0:"";s:13:"after_sidebar";s:0:"";s:12:"show_in_rest";b:0;}s:11:"footer-four";a:11:{s:4:"name";s:14:"Pied de page 4";s:2:"id";s:11:"footer-four";s:11:"description";s:86:"Les widgets dans cette zone sont utilisés dans la quatrième région du pied de page.";s:5:"class";s:0:"";s:13:"before_widget";s:46:"<div id="%1$s" class="footer-widget %2$s clr">";s:12:"after_widget";s:6:"</div>";s:12:"before_title";s:25:"<h4 class="widget-title">";s:11:"after_title";s:5:"</h4>";s:14:"before_sidebar";s:0:"";s:13:"after_sidebar";s:0:"";s:12:"show_in_rest";b:0;}}s:18:"nav_menu_locations";a:0:{}s:16:"sidebars_widgets";a:2:{s:4:"time";i:1729097019;s:4:"data";a:8:{s:19:"wp_inactive_widgets";a:0:{}s:7:"sidebar";a:3:{i:0;s:7:"block-2";i:1;s:7:"block-3";i:2;s:7:"block-4";}s:9:"sidebar-2";a:2:{i:0;s:7:"block-5";i:1;s:7:"block-6";}s:14:"search_sidebar";a:0:{}s:10:"footer-one";a:0:{}s:10:"footer-two";a:0:{}s:12:"footer-three";a:0:{}s:11:"footer-four";a:0:{}}}}', 'off'),
(179, 'theme_mods_hehocom', 'a:11:{i:0;b:0;s:18:"nav_menu_locations";a:1:{s:14:"menu-principal";i:3;}s:18:"custom_css_post_id";i:-1;s:25:"ocean_disable_google_font";b:1;s:23:"ocean_local_google_font";b:1;s:31:"ocean_preload_local_google_font";b:1;s:21:"heading_h1_typography";a:4:{s:11:"font-family";s:9:"Balthazar";s:9:"font-size";i:180;s:14:"letter-spacing";i:0;s:11:"line-height";i:0;}s:15:"body_typography";a:2:{s:11:"font-weight";s:3:"600";s:11:"font-family";s:9:"Work Sans";}s:21:"heading_h2_typography";a:2:{s:11:"font-family";s:9:"Work Sans";s:9:"font-size";i:17;}s:21:"heading_h3_typography";a:1:{s:11:"font-family";s:9:"Work Sans";}s:21:"heading_h4_typography";a:1:{s:11:"font-family";s:9:"Work Sans";}}', 'on'),
(194, 'wp_calendar_block_has_published_posts', '1', 'auto'),
(209, 'nav_menu_options', 'a:2:{i:0;b:0;s:8:"auto_add";a:0:{}}', 'auto'),
(213, 'category_children', 'a:0:{}', 'auto'),
(273, 'recently_activated', 'a:0:{}', 'auto'),
(284, 'yoast_migrations_free', 'a:1:{s:7:"version";s:4:"23.6";}', 'auto'),
(285, 'wpseo', 'a:105:{s:8:"tracking";b:0;s:16:"toggled_tracking";b:0;s:22:"license_server_version";b:0;s:15:"ms_defaults_set";b:0;s:40:"ignore_search_engines_discouraged_notice";b:0;s:19:"indexing_first_time";b:0;s:16:"indexing_started";b:0;s:15:"indexing_reason";s:0:"";s:29:"indexables_indexing_completed";b:1;s:13:"index_now_key";s:0:"";s:7:"version";s:4:"23.6";s:16:"previous_version";s:0:"";s:20:"disableadvanced_meta";b:1;s:30:"enable_headless_rest_endpoints";b:1;s:17:"ryte_indexability";b:0;s:11:"baiduverify";s:0:"";s:12:"googleverify";s:0:"";s:8:"msverify";s:0:"";s:12:"yandexverify";s:0:"";s:9:"site_type";s:0:"";s:20:"has_multiple_authors";s:0:"";s:16:"environment_type";s:0:"";s:23:"content_analysis_active";b:1;s:23:"keyword_analysis_active";b:1;s:34:"inclusive_language_analysis_active";b:0;s:21:"enable_admin_bar_menu";b:1;s:26:"enable_cornerstone_content";b:1;s:18:"enable_xml_sitemap";b:1;s:24:"enable_text_link_counter";b:1;s:16:"enable_index_now";b:1;s:19:"enable_ai_generator";b:1;s:22:"ai_enabled_pre_default";b:0;s:22:"show_onboarding_notice";b:1;s:18:"first_activated_on";i:1729128473;s:13:"myyoast-oauth";b:0;s:26:"semrush_integration_active";b:1;s:14:"semrush_tokens";a:0:{}s:20:"semrush_country_code";s:2:"us";s:19:"permalink_structure";s:0:"";s:8:"home_url";s:0:"";s:18:"dynamic_permalinks";b:0;s:17:"category_base_url";s:0:"";s:12:"tag_base_url";s:0:"";s:21:"custom_taxonomy_slugs";a:0:{}s:29:"enable_enhanced_slack_sharing";b:1;s:23:"enable_metabox_insights";b:1;s:23:"enable_link_suggestions";b:1;s:26:"algolia_integration_active";b:0;s:14:"import_cursors";a:0:{}s:13:"workouts_data";a:1:{s:13:"configuration";a:1:{s:13:"finishedSteps";a:0:{}}}s:28:"configuration_finished_steps";a:3:{i:0;s:18:"siteRepresentation";i:1;s:14:"socialProfiles";i:2;s:19:"personalPreferences";}s:36:"dismiss_configuration_workout_notice";b:0;s:34:"dismiss_premium_deactivated_notice";b:0;s:19:"importing_completed";a:5:{s:30:"aioseo_custom_archive_settings";b:1;s:31:"aioseo_default_archive_settings";b:1;s:23:"aioseo_general_settings";b:1;s:32:"aioseo_posttype_default_settings";b:1;s:24:"aioseo_taxonomy_settings";b:1;}s:26:"wincher_integration_active";b:1;s:14:"wincher_tokens";a:0:{}s:36:"wincher_automatically_add_keyphrases";b:0;s:18:"wincher_website_id";s:0:"";s:18:"first_time_install";b:0;s:34:"should_redirect_after_install_free";b:0;s:34:"activation_redirect_timestamp_free";i:1729128473;s:18:"remove_feed_global";b:0;s:27:"remove_feed_global_comments";b:0;s:25:"remove_feed_post_comments";b:0;s:19:"remove_feed_authors";b:0;s:22:"remove_feed_categories";b:0;s:16:"remove_feed_tags";b:0;s:29:"remove_feed_custom_taxonomies";b:0;s:22:"remove_feed_post_types";b:0;s:18:"remove_feed_search";b:0;s:21:"remove_atom_rdf_feeds";b:0;s:17:"remove_shortlinks";b:0;s:21:"remove_rest_api_links";b:0;s:20:"remove_rsd_wlw_links";b:0;s:19:"remove_oembed_links";b:0;s:16:"remove_generator";b:0;s:20:"remove_emoji_scripts";b:0;s:24:"remove_powered_by_header";b:0;s:22:"remove_pingback_header";b:0;s:28:"clean_campaign_tracking_urls";b:0;s:16:"clean_permalinks";b:0;s:32:"clean_permalinks_extra_variables";s:0:"";s:14:"search_cleanup";b:0;s:20:"search_cleanup_emoji";b:0;s:23:"search_cleanup_patterns";b:0;s:22:"search_character_limit";i:50;s:20:"deny_search_crawling";b:0;s:21:"deny_wp_json_crawling";b:0;s:20:"deny_adsbot_crawling";b:0;s:19:"deny_ccbot_crawling";b:0;s:29:"deny_google_extended_crawling";b:0;s:20:"deny_gptbot_crawling";b:0;s:27:"redirect_search_pretty_urls";b:0;s:29:"least_readability_ignore_list";a:0:{}s:27:"least_seo_score_ignore_list";a:0:{}s:23:"most_linked_ignore_list";a:0:{}s:24:"least_linked_ignore_list";a:0:{}s:28:"indexables_page_reading_list";a:5:{i:0;b:0;i:1;b:0;i:2;b:0;i:3;b:0;i:4;b:0;}s:25:"indexables_overview_state";s:21:"dashboard-not-visited";s:28:"last_known_public_post_types";a:2:{i:0;s:4:"post";i:1;s:4:"page";}s:28:"last_known_public_taxonomies";a:3:{i:0;s:8:"category";i:1;s:8:"post_tag";i:2;s:11:"post_format";}s:23:"last_known_no_unindexed";a:5:{s:40:"wpseo_total_unindexed_post_type_archives";i:1729128473;s:27:"wpseo_total_unindexed_posts";i:1729128510;s:27:"wpseo_total_unindexed_terms";i:1729128510;s:31:"wpseo_unindexed_post_link_count";i:1729128510;s:31:"wpseo_unindexed_term_link_count";i:1729128510;}s:14:"new_post_types";a:0:{}s:14:"new_taxonomies";a:0:{}s:34:"show_new_content_type_notification";b:0;}', 'auto'),
(286, 'wpseo_titles', 'a:129:{s:17:"forcerewritetitle";b:0;s:9:"separator";s:7:"sc-dash";s:16:"title-home-wpseo";s:42:"%%sitename%% %%page%% %%sep%% %%sitedesc%%";s:18:"title-author-wpseo";s:50:"%%name%%, auteur/autrice sur %%sitename%% %%page%%";s:19:"title-archive-wpseo";s:38:"%%date%% %%page%% %%sep%% %%sitename%%";s:18:"title-search-wpseo";s:65:"Vous avez cherché %%searchphrase%% %%page%% %%sep%% %%sitename%%";s:15:"title-404-wpseo";s:38:"Page non trouvée %%sep%% %%sitename%%";s:25:"social-title-author-wpseo";s:8:"%%name%%";s:26:"social-title-archive-wpseo";s:8:"%%date%%";s:31:"social-description-author-wpseo";s:0:"";s:32:"social-description-archive-wpseo";s:0:"";s:29:"social-image-url-author-wpseo";s:0:"";s:30:"social-image-url-archive-wpseo";s:0:"";s:28:"social-image-id-author-wpseo";i:0;s:29:"social-image-id-archive-wpseo";i:0;s:19:"metadesc-home-wpseo";s:0:"";s:21:"metadesc-author-wpseo";s:0:"";s:22:"metadesc-archive-wpseo";s:0:"";s:9:"rssbefore";s:0:"";s:8:"rssafter";s:64:"L’article %%POSTLINK%% est apparu en premier sur %%BLOGLINK%%.";s:20:"noindex-author-wpseo";b:0;s:28:"noindex-author-noposts-wpseo";b:1;s:21:"noindex-archive-wpseo";b:1;s:14:"disable-author";b:0;s:12:"disable-date";b:0;s:19:"disable-post_format";b:0;s:18:"disable-attachment";b:1;s:20:"breadcrumbs-404crumb";s:30:"Erreur 404 : Page introuvable";s:29:"breadcrumbs-display-blog-page";b:1;s:20:"breadcrumbs-boldlast";b:0;s:25:"breadcrumbs-archiveprefix";s:13:"Archives pour";s:18:"breadcrumbs-enable";b:1;s:16:"breadcrumbs-home";s:7:"Accueil";s:18:"breadcrumbs-prefix";s:0:"";s:24:"breadcrumbs-searchprefix";s:18:"Vous avez cherché";s:15:"breadcrumbs-sep";s:2:"»";s:12:"website_name";s:22:"Test technique Hehocom";s:11:"person_name";s:0:"";s:11:"person_logo";s:0:"";s:22:"alternate_website_name";s:0:"";s:12:"company_logo";s:70:"http://localhost/wordpress_hehocom/wp-content/uploads/2024/10/logo.png";s:12:"company_name";s:22:"Test technique Hehocom";s:22:"company_alternate_name";s:0:"";s:17:"company_or_person";s:7:"company";s:25:"company_or_person_user_id";i:0;s:17:"stripcategorybase";b:0;s:26:"open_graph_frontpage_title";s:12:"%%sitename%%";s:25:"open_graph_frontpage_desc";s:0:"";s:26:"open_graph_frontpage_image";s:0:"";s:24:"publishing_principles_id";i:0;s:25:"ownership_funding_info_id";i:0;s:29:"actionable_feedback_policy_id";i:0;s:21:"corrections_policy_id";i:0;s:16:"ethics_policy_id";i:0;s:19:"diversity_policy_id";i:0;s:28:"diversity_staffing_report_id";i:0;s:15:"org-description";s:0:"";s:9:"org-email";s:0:"";s:9:"org-phone";s:0:"";s:14:"org-legal-name";s:0:"";s:17:"org-founding-date";s:0:"";s:20:"org-number-employees";s:0:"";s:10:"org-vat-id";s:0:"";s:10:"org-tax-id";s:0:"";s:7:"org-iso";s:0:"";s:8:"org-duns";s:0:"";s:11:"org-leicode";s:0:"";s:9:"org-naics";s:0:"";s:10:"title-post";s:39:"%%title%% %%page%% %%sep%% %%sitename%%";s:13:"metadesc-post";s:0:"";s:12:"noindex-post";b:0;s:23:"display-metabox-pt-post";b:1;s:23:"post_types-post-maintax";i:0;s:21:"schema-page-type-post";s:7:"WebPage";s:24:"schema-article-type-post";s:7:"Article";s:17:"social-title-post";s:9:"%%title%%";s:23:"social-description-post";s:0:"";s:21:"social-image-url-post";s:0:"";s:20:"social-image-id-post";i:0;s:10:"title-page";s:39:"%%title%% %%page%% %%sep%% %%sitename%%";s:13:"metadesc-page";s:0:"";s:12:"noindex-page";b:0;s:23:"display-metabox-pt-page";b:1;s:23:"post_types-page-maintax";i:0;s:21:"schema-page-type-page";s:7:"WebPage";s:24:"schema-article-type-page";s:4:"None";s:17:"social-title-page";s:9:"%%title%%";s:23:"social-description-page";s:0:"";s:21:"social-image-url-page";s:0:"";s:20:"social-image-id-page";i:0;s:16:"title-attachment";s:39:"%%title%% %%page%% %%sep%% %%sitename%%";s:19:"metadesc-attachment";s:0:"";s:18:"noindex-attachment";b:0;s:29:"display-metabox-pt-attachment";b:1;s:29:"post_types-attachment-maintax";i:0;s:27:"schema-page-type-attachment";s:7:"WebPage";s:30:"schema-article-type-attachment";s:4:"None";s:18:"title-tax-category";s:57:"Archives des %%term_title%% %%page%% %%sep%% %%sitename%%";s:21:"metadesc-tax-category";s:0:"";s:28:"display-metabox-tax-category";b:1;s:20:"noindex-tax-category";b:0;s:25:"social-title-tax-category";s:27:"Archives des %%term_title%%";s:31:"social-description-tax-category";s:0:"";s:29:"social-image-url-tax-category";s:0:"";s:28:"social-image-id-tax-category";i:0;s:26:"taxonomy-category-ptparent";i:0;s:18:"title-tax-post_tag";s:57:"Archives des %%term_title%% %%page%% %%sep%% %%sitename%%";s:21:"metadesc-tax-post_tag";s:0:"";s:28:"display-metabox-tax-post_tag";b:1;s:20:"noindex-tax-post_tag";b:0;s:25:"social-title-tax-post_tag";s:27:"Archives des %%term_title%%";s:31:"social-description-tax-post_tag";s:0:"";s:29:"social-image-url-tax-post_tag";s:0:"";s:28:"social-image-id-tax-post_tag";i:0;s:26:"taxonomy-post_tag-ptparent";i:0;s:21:"title-tax-post_format";s:57:"Archives des %%term_title%% %%page%% %%sep%% %%sitename%%";s:24:"metadesc-tax-post_format";s:0:"";s:31:"display-metabox-tax-post_format";b:1;s:23:"noindex-tax-post_format";b:1;s:28:"social-title-tax-post_format";s:27:"Archives des %%term_title%%";s:34:"social-description-tax-post_format";s:0:"";s:32:"social-image-url-tax-post_format";s:0:"";s:31:"social-image-id-tax-post_format";i:0;s:29:"taxonomy-post_format-ptparent";i:0;s:14:"person_logo_id";i:0;s:15:"company_logo_id";i:27;s:17:"company_logo_meta";a:10:{s:5:"width";i:225;s:6:"height";i:225;s:8:"filesize";i:1570;s:3:"url";s:70:"http://localhost/wordpress_hehocom/wp-content/uploads/2024/10/logo.png";s:4:"path";s:67:"C:\\wamp64\\www\\wordpress_hehocom/wp-content/uploads/2024/10/logo.png";s:4:"size";s:4:"full";s:2:"id";i:27;s:3:"alt";s:12:"Logo Hehocom";s:6:"pixels";i:50625;s:4:"type";s:9:"image/png";}s:16:"person_logo_meta";b:0;s:29:"open_graph_frontpage_image_id";i:0;}', 'auto'),
(287, 'wpseo_social', 'a:20:{s:13:"facebook_site";s:0:"";s:13:"instagram_url";s:0:"";s:12:"linkedin_url";s:0:"";s:11:"myspace_url";s:0:"";s:16:"og_default_image";s:0:"";s:19:"og_default_image_id";s:0:"";s:18:"og_frontpage_title";s:0:"";s:17:"og_frontpage_desc";s:0:"";s:18:"og_frontpage_image";s:0:"";s:21:"og_frontpage_image_id";s:0:"";s:9:"opengraph";b:1;s:13:"pinterest_url";s:0:"";s:15:"pinterestverify";s:0:"";s:7:"twitter";b:1;s:12:"twitter_site";s:0:"";s:17:"twitter_card_type";s:19:"summary_large_image";s:11:"youtube_url";s:0:"";s:13:"wikipedia_url";s:0:"";s:17:"other_social_urls";a:2:{i:0;s:34:"https://www.instagram.com/hehocom/";i:1;s:41:"https://www.linkedin.com/company/hehocom/";}s:12:"mastodon_url";s:0:"";}', 'auto'),
(305, 'dismissed-oceanwp_plugin_notice', '1', 'auto'),
(323, 'simply-static', 'a:109:{s:14:"encryption_key";s:32:"e940f417deca4bb0f80d1cd6b779cfc7";s:18:"destination_scheme";s:8:"https://";s:16:"destination_host";s:0:"";s:14:"temp_files_dir";s:76:"C:\\wamp64\\www\\wordpress_hehocom/wp-content/uploads\\simply-static\\temp-files/";s:15:"additional_urls";s:0:"";s:16:"additional_files";s:0:"";s:15:"urls_to_exclude";s:20:"wp-json\nwp-login.php";s:15:"delivery_method";s:3:"zip";s:9:"local_dir";s:0:"";s:13:"relative_path";s:0:"";s:20:"destination_url_type";s:8:"relative";s:14:"debugging_mode";b:1;s:11:"server_cron";b:0;s:17:"whitelist_plugins";s:0:"";s:24:"http_basic_auth_username";s:0:"";s:24:"http_basic_auth_password";s:0:"";s:10:"origin_url";s:0:"";s:17:"force_replace_url";b:1;s:29:"clear_directory_before_export";b:0;s:11:"iframe_urls";s:0:"";s:17:"iframe_custom_css";s:0:"";s:11:"tiiny_email";s:30:"valentinrenaudin2206@gmail.com";s:15:"tiiny_subdomain";s:0:"";s:19:"tiiny_domain_suffix";s:10:"tiiny.site";s:14:"tiiny_password";s:0:"";s:11:"cdn_api_key";s:0:"";s:16:"cdn_storage_host";s:20:"storage.bunnycdn.com";s:14:"cdn_access_key";s:0:"";s:13:"cdn_pull_zone";s:0:"";s:16:"cdn_storage_zone";s:0:"";s:13:"cdn_directory";s:0:"";s:19:"github_account_type";s:8:"personal";s:11:"github_user";s:0:"";s:12:"github_email";s:0:"";s:28:"github_personal_access_token";s:0:"";s:17:"github_repository";s:0:"";s:28:"github_repository_visibility";s:6:"public";s:13:"github_branch";s:4:"main";s:18:"github_webhook_url";s:0:"";s:18:"github_folder_path";s:0:"";s:24:"github_throttle_requests";b:0;s:10:"aws_region";s:9:"us-east-2";s:14:"aws_access_key";s:0:"";s:17:"aws_access_secret";s:0:"";s:10:"aws_bucket";s:0:"";s:16:"aws_subdirectory";s:0:"";s:19:"aws_distribution_id";s:0:"";s:9:"aws_empty";b:0;s:13:"s3_access_key";s:0:"";s:11:"s3_base_url";s:0:"";s:16:"s3_access_secret";s:0:"";s:9:"s3_bucket";s:0:"";s:15:"s3_subdirectory";s:0:"";s:8:"fix_cors";s:20:"allowed_http_origins";s:10:"static_url";s:0:"";s:9:"use_forms";b:0;s:12:"use_comments";b:0;s:16:"comment_redirect";s:0:"";s:10:"use_search";b:0;s:11:"search_type";s:4:"fuse";s:18:"search_index_title";s:5:"title";s:20:"search_index_content";s:4:"body";s:20:"search_index_excerpt";s:14:".entry-content";s:17:"search_excludable";s:0:"";s:15:"search_metadata";s:0:"";s:13:"fuse_selector";s:13:".search-field";s:14:"algolia_app_id";s:0:"";s:21:"algolia_admin_api_key";s:0:"";s:22:"algolia_search_api_key";s:0:"";s:13:"algolia_index";s:13:"simply_static";s:16:"algolia_selector";s:13:".search-field";s:10:"use_minify";b:0;s:11:"minify_html";b:0;s:10:"minify_css";b:0;s:17:"minify_inline_css";b:0;s:9:"minify_js";b:0;s:16:"minify_inline_js";b:0;s:12:"generate_404";b:1;s:17:"wp_content_folder";s:0:"";s:18:"wp_includes_folder";s:0:"";s:17:"wp_uploads_folder";s:0:"";s:17:"wp_plugins_folder";s:0:"";s:16:"wp_themes_folder";s:0:"";s:16:"theme_style_name";s:5:"style";s:21:"rename_plugin_folders";b:0;s:10:"author_url";s:0:"";s:13:"hide_rest_api";b:0;s:13:"hide_style_id";b:0;s:13:"hide_comments";b:0;s:12:"hide_version";b:0;s:14:"hide_generator";b:0;s:13:"hide_prefetch";b:0;s:8:"hide_rsd";b:0;s:11:"hide_emotes";b:0;s:14:"disable_xmlrpc";b:0;s:13:"disable_embed";b:0;s:16:"disable_db_debug";b:0;s:20:"disable_wlw_manifest";b:0;s:9:"sftp_host";s:0:"";s:9:"sftp_user";s:0:"";s:9:"sftp_pass";s:0:"";s:11:"sftp_folder";s:0:"";s:9:"sftp_port";i:22;s:23:"archive_status_messages";a:6:{s:5:"setup";a:2:{s:7:"message";s:13:"Mise en place";s:8:"datetime";s:19:"2024-10-17 03:54:09";}s:10:"fetch_urls";a:2:{s:7:"message";s:35:"77 pages/fichiers sur 77 générés";s:8:"datetime";s:19:"2024-10-17 03:54:13";}s:12:"generate_404";a:2:{s:7:"message";s:18:"404 Page generated";s:8:"datetime";s:19:"2024-10-17 03:54:33";}s:18:"create_zip_archive";a:2:{s:7:"message";s:180:"Archive ZIP créée :  <a href="http://localhost/wordpress_hehocom/wp-content/uploads/simply-static/temp-files/simply-static-1-1729130048.zip">Cliquez-ici pour la télécharger</a>";s:8:"datetime";s:19:"2024-10-17 03:54:35";}s:6:"wrapup";a:2:{s:7:"message";s:16:"Fin du processus";s:8:"datetime";s:19:"2024-10-17 03:54:35";}s:4:"done";a:2:{s:7:"message";s:28:"Effectué ! Fini en 00:00:27";s:8:"datetime";s:19:"2024-10-17 03:54:35";}}s:12:"pages_status";a:2:{s:9:"remaining";i:1;s:5:"total";i:77;}s:12:"archive_name";s:26:"simply-static-1-1729130048";s:18:"archive_start_time";s:19:"2024-10-17 03:54:08";s:16:"archive_end_time";s:19:"2024-10-17 03:54:35";s:13:"generate_type";s:6:"export";}', 'auto'),
(359, 'ai1wm_secret_key', 'GnZMsWpKp6uj', 'auto'),
(360, 'ai1wm_status', 'a:2:{s:4:"type";s:8:"download";s:7:"message";s:354:"<a href="http://localhost/wordpress_hehocom/wp-content/ai1wm-backups/localhost-wordpresshehocom-20241017-041921-z7zqo3dghywr.wpress" class="ai1wm-button-green ai1wm-emphasize ai1wm-button-download" title="localhost" download="localhost-wordpresshehocom-20241017-041921-z7zqo3dghywr.wpress"><span>Télécharger localhost</span><em>Taille : 76 Mo</em></a>";}', 'auto'),
(370, 'ai1wm_updater', 'a:0:{}', 'auto'),
(371, 'duplicator_version_plugin', '1.5.11.1', 'auto'),
(373, 'duplicator_install_info', 'a:3:{s:7:"version";s:8:"1.5.11.1";s:4:"time";i:1729131725;s:10:"updateTime";i:1729131725;}', 'off'),
(374, 'duplicator_uninstall_package', '1', 'auto'),
(375, 'duplicator_uninstall_settings', '1', 'auto'),
(376, 'duplicator_settings', 'a:20:{s:7:"version";s:8:"1.5.11.1";s:18:"uninstall_settings";b:1;s:15:"uninstall_files";b:1;s:13:"package_debug";b:0;s:23:"email_summary_frequency";s:6:"weekly";s:9:"amNotices";b:1;s:17:"package_mysqldump";b:1;s:22:"package_mysqldump_path";s:0:"";s:24:"package_phpdump_qrylimit";s:3:"100";s:17:"package_zip_flush";b:0;s:19:"installer_name_mode";s:6:"simple";s:16:"storage_position";s:6:"wpcont";s:20:"storage_htaccess_off";b:0;s:18:"archive_build_mode";i:2;s:17:"skip_archive_scan";b:0;s:21:"unhook_third_party_js";b:0;s:22:"unhook_third_party_css";b:0;s:17:"active_package_id";i:1;s:14:"usage_tracking";b:0;i:0;b:0;}', 'auto'),
(377, 'duplicator_plugin_data_stats', '{"lastSendTime":0,"identifier":"&2tyDv7i9a+ZYNPapN7_HqMWKeCKLIy32VzvLpkMUBBp","plugin":"dup-lite","pluginStatus":"active","buildCount":1,"buildLastDate":1729131793,"buildFailedCount":0,"buildFailedLastDate":0,"siteSizeMB":128.86,"siteNumFiles":7953,"siteDbSizeMB":1.19,"siteDbNumTables":20}', 'auto'),
(378, 'duplicator_notifications', 'a:4:{s:6:"update";i:1729131725;s:4:"feed";a:0:{}s:6:"events";a:0:{}s:9:"dismissed";a:0:{}}', 'auto'),
(379, 'duplicator_package_active', 'O:11:"DUP_Package":23:{s:7:"Created";s:19:"2024-10-17 02:22:36";s:7:"Version";s:8:"1.5.11.1";s:9:"VersionWP";s:5:"6.6.2";s:9:"VersionDB";s:6:"8.0.31";s:10:"VersionPHP";s:6:"8.0.26";s:9:"VersionOS";s:5:"WINNT";s:2:"ID";N;s:4:"Name";s:29:"20241017_testtechniquehehocom";s:4:"Hash";s:35:"ffe14fc495bf78c67508_20241017022236";s:8:"NameHash";s:65:"20241017_testtechniquehehocom_ffe14fc495bf78c67508_20241017022236";s:4:"Type";i:0;s:5:"Notes";s:0:"";s:8:"ScanFile";s:75:"20241017_testtechniquehehocom_ffe14fc495bf78c67508_20241017022236_scan.json";s:10:"TimerStart";i:-1;s:7:"Runtime";N;s:7:"ExeSize";N;s:7:"ZipSize";N;s:6:"Status";i:0;s:6:"WPUser";N;s:7:"Archive";O:11:"DUP_Archive":26:{s:10:"FilterDirs";s:0:"";s:11:"FilterFiles";s:0:"";s:10:"FilterExts";s:0:"";s:13:"FilterDirsAll";a:0:{}s:14:"FilterFilesAll";a:0:{}s:13:"FilterExtsAll";a:0:{}s:8:"FilterOn";i:0;s:12:"ExportOnlyDB";i:0;s:4:"File";N;s:6:"Format";s:3:"ZIP";s:7:"PackDir";s:31:"C:/wamp64/www/wordpress_hehocom";s:4:"Size";i:0;s:4:"Dirs";a:0:{}s:9:"dirsCount";i:1049;s:5:"Files";a:0:{}s:10:"filesCount";i:6904;s:10:"FilterInfo";O:23:"DUP_Archive_Filter_Info":8:{s:4:"Dirs";O:34:"DUP_Archive_Filter_Scope_Directory":6:{s:7:"Warning";a:0:{}s:10:"Unreadable";a:0:{}s:10:"AddonSites";a:0:{}s:4:"Core";a:0:{}s:6:"Global";a:0:{}s:8:"Instance";a:0:{}}s:5:"Files";O:29:"DUP_Archive_Filter_Scope_File":7:{s:4:"Size";a:0:{}s:7:"Warning";a:0:{}s:10:"Unreadable";a:0:{}s:10:"AddonSites";a:0:{}s:4:"Core";a:0:{}s:6:"Global";a:0:{}s:8:"Instance";a:0:{}}s:4:"Exts";O:29:"DUP_Archive_Filter_Scope_Base":3:{s:4:"Core";a:0:{}s:6:"Global";a:0:{}s:8:"Instance";a:0:{}}s:9:"UDirCount";i:0;s:10:"UFileCount";i:0;s:9:"UExtCount";i:0;s:8:"TreeSize";a:0:{}s:11:"TreeWarning";a:0:{}}s:14:"RecursiveLinks";a:0:{}s:10:"file_count";i:-1;s:10:"\0*\0Package";O:11:"DUP_Package":23:{s:7:"Created";s:19:"2024-10-17 02:22:36";s:7:"Version";s:8:"1.5.11.1";s:9:"VersionWP";s:5:"6.6.2";s:9:"VersionDB";s:6:"8.0.31";s:10:"VersionPHP";s:6:"8.0.26";s:9:"VersionOS";s:5:"WINNT";s:2:"ID";N;s:4:"Name";s:29:"20241017_testtechniquehehocom";s:4:"Hash";s:35:"ffe14fc495bf78c67508_20241017022236";s:8:"NameHash";s:65:"20241017_testtechniquehehocom_ffe14fc495bf78c67508_20241017022236";s:4:"Type";i:0;s:5:"Notes";s:0:"";s:8:"ScanFile";N;s:10:"TimerStart";i:-1;s:7:"Runtime";N;s:7:"ExeSize";N;s:7:"ZipSize";N;s:6:"Status";i:0;s:6:"WPUser";N;s:7:"Archive";r:21;s:9:"Installer";O:13:"DUP_Installer":15:{s:4:"File";N;s:4:"Size";i:0;s:10:"OptsDBHost";s:0:"";s:10:"OptsDBPort";s:0:"";s:10:"OptsDBName";s:0:"";s:10:"OptsDBUser";s:0:"";s:13:"OptsDBCharset";s:0:"";s:15:"OptsDBCollation";s:0:"";s:12:"OptsSecureOn";i:0;s:14:"OptsSecurePass";s:0:"";s:13:"numFilesAdded";i:0;s:12:"numDirsAdded";i:0;s:10:"\0*\0Package";r:65;s:17:"\0*\0origFileManger";N;s:32:"\0DUP_Installer\0configTransformer";O:44:"Duplicator\\Libs\\WpConfig\\WPConfigTransformer":3:{s:17:"\0*\0wp_config_path";s:45:"C:/wamp64/www/wordpress_hehocom/wp-config.php";s:16:"\0*\0wp_config_src";N;s:13:"\0*\0wp_configs";a:0:{}}}s:8:"Database";O:12:"DUP_Database":15:{s:4:"Type";s:5:"MySQL";s:4:"Size";N;s:4:"File";N;s:4:"Path";N;s:12:"FilterTables";s:0:"";s:8:"FilterOn";i:0;s:4:"Name";N;s:10:"Compatible";s:0:"";s:8:"Comments";s:28:"MySQL Community Server - GPL";s:19:"sameNameTableExists";N;s:4:"info";O:16:"DUP_DatabaseInfo":23:{s:9:"buildMode";s:3:"PHP";s:11:"charSetList";a:0:{}s:13:"collationList";a:0:{}s:10:"engineList";a:0:{}s:17:"isTablesUpperCase";b:0;s:15:"isNameUpperCase";b:0;s:4:"name";s:0:"";s:15:"tablesBaseCount";i:0;s:16:"tablesFinalCount";i:0;s:20:"muFilteredTableCount";i:0;s:14:"tablesRowCount";i:0;s:16:"tablesSizeOnDisk";i:0;s:10:"tablesList";a:0:{}s:19:"lowerCaseTableNames";i:0;s:8:"dbEngine";s:0:"";s:7:"version";i:0;s:14:"versionComment";i:0;s:9:"viewCount";i:0;s:9:"procCount";i:0;s:9:"funcCount";i:0;s:11:"triggerList";a:0:{}s:33:"\0DUP_DatabaseInfo\0intFieldsStruct";a:0:{}s:42:"\0DUP_DatabaseInfo\0indexProcessedSchemaSize";a:0:{}}s:10:"\0*\0Package";r:65;s:24:"\0DUP_Database\0tempDbPath";N;s:23:"\0DUP_Database\0EOFMarker";s:0:"";s:26:"\0DUP_Database\0networkFlush";b:0;}s:13:"BuildProgress";O:18:"DUP_Build_Progress":12:{s:17:"thread_start_time";N;s:11:"initialized";b:0;s:15:"installer_built";b:0;s:15:"archive_started";b:0;s:20:"archive_has_database";b:0;s:13:"archive_built";b:0;s:21:"database_script_built";b:0;s:6:"failed";b:0;s:7:"retries";i:0;s:14:"build_failures";a:0:{}s:19:"validation_failures";a:0:{}s:27:"\0DUP_Build_Progress\0package";r:65;}}s:29:"\0DUP_Archive\0tmpFilterDirsAll";a:0:{}s:24:"\0DUP_Archive\0wpCorePaths";a:3:{i:0;s:40:"C:/wamp64/www/wordpress_hehocom/wp-admin";i:1;s:43:"C:/wamp64/www/wordpress_hehocom/wp-includes";i:2;s:52:"C:/wamp64/www/wordpress_hehocom/wp-content/languages";}s:29:"\0DUP_Archive\0wpCoreExactPaths";a:7:{i:0;s:31:"C:/wamp64/www/wordpress_hehocom";i:1;s:31:"C:/wamp64/www/wordpress_hehocom";i:2;s:42:"C:/wamp64/www/wordpress_hehocom/wp-content";i:3;s:50:"C:/wamp64/www/wordpress_hehocom/wp-content/uploads";i:4;s:50:"C:/wamp64/www/wordpress_hehocom/wp-content/plugins";i:5;s:53:"C:/wamp64/www/wordpress_hehocom/wp-content/mu-plugins";i:6;s:49:"C:/wamp64/www/wordpress_hehocom/wp-content/themes";}s:31:"\0DUP_Archive\0relativeFiltersDir";a:2:{i:0;s:63:"C:/wamp64/www/wordpress_hehocom/wp-content/backups-dup-lite/tmp";i:1;s:15:"backups-dup-pro";}s:24:"\0DUP_Archive\0listFileObj";N;s:23:"\0DUP_Archive\0listDirObj";N;}s:9:"Installer";r:86;s:8:"Database";r:105;s:13:"BuildProgress";r:144;}', 'auto'),
(380, 'duplicator_email_summary_info', '{"CL_-=_-=":"Duplicator\\\\Utils\\\\Email\\\\EmailSummary","manualPackageIds":[1],"failedPackageIds":[]}', 'auto'),
(434, 'wpmdb_usage', 'a:2:{s:6:"action";s:8:"savefile";s:4:"time";i:1729157290;}', 'off') ;

#
# Fin du contenu des données de la table `wp_options`
# --------------------------------------------------------



#
# Supprimer toute table existante `wp_postmeta`
#

DROP TABLE IF EXISTS `wp_postmeta`;


#
# Structure de la table `wp_postmeta`
#

CREATE TABLE `wp_postmeta` (
  `meta_id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `post_id` bigint unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci,
  PRIMARY KEY (`meta_id`),
  KEY `post_id` (`post_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=MyISAM AUTO_INCREMENT=93 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;


#
# Données de la table `wp_postmeta`
#
INSERT INTO `wp_postmeta` ( `meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(1, 2, '_wp_page_template', 'default'),
(2, 3, '_wp_page_template', 'default'),
(4, 2, '_edit_lock', '1729097373:1'),
(5, 2, '_wp_trash_meta_status', 'publish'),
(6, 2, '_wp_trash_meta_time', '1729097585'),
(7, 2, '_wp_desired_post_slug', 'page-d-exemple'),
(10, 10, '_wp_attached_file', '2024/10/blog1.jpg'),
(11, 10, '_wp_attachment_metadata', 'a:6:{s:5:"width";i:1920;s:6:"height";i:560;s:4:"file";s:17:"2024/10/blog1.jpg";s:8:"filesize";i:791143;s:5:"sizes";a:8:{s:6:"medium";a:5:{s:4:"file";s:16:"blog1-300x88.jpg";s:5:"width";i:300;s:6:"height";i:88;s:9:"mime-type";s:10:"image/jpeg";s:8:"filesize";i:8711;}s:5:"large";a:5:{s:4:"file";s:18:"blog1-1024x299.jpg";s:5:"width";i:1024;s:6:"height";i:299;s:9:"mime-type";s:10:"image/jpeg";s:8:"filesize";i:78831;}s:9:"thumbnail";a:5:{s:4:"file";s:17:"blog1-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";s:8:"filesize";i:8835;}s:12:"medium_large";a:5:{s:4:"file";s:17:"blog1-768x224.jpg";s:5:"width";i:768;s:6:"height";i:224;s:9:"mime-type";s:10:"image/jpeg";s:8:"filesize";i:46558;}s:9:"1536x1536";a:5:{s:4:"file";s:18:"blog1-1536x448.jpg";s:5:"width";i:1536;s:6:"height";i:448;s:9:"mime-type";s:10:"image/jpeg";s:8:"filesize";i:157072;}s:13:"ocean-thumb-m";a:5:{s:4:"file";s:17:"blog1-600x560.jpg";s:5:"width";i:600;s:6:"height";i:560;s:9:"mime-type";s:10:"image/jpeg";s:8:"filesize";i:98913;}s:14:"ocean-thumb-ml";a:5:{s:4:"file";s:17:"blog1-800x450.jpg";s:5:"width";i:800;s:6:"height";i:450;s:9:"mime-type";s:10:"image/jpeg";s:8:"filesize";i:107534;}s:13:"ocean-thumb-l";a:5:{s:4:"file";s:18:"blog1-1200x560.jpg";s:5:"width";i:1200;s:6:"height";i:560;s:9:"mime-type";s:10:"image/jpeg";s:8:"filesize";i:195256;}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(19, 13, '_edit_lock', '1729099078:1'),
(20, 14, '_wp_attached_file', '2024/10/blog2.jpg'),
(21, 14, '_wp_attachment_metadata', 'a:6:{s:5:"width";i:600;s:6:"height";i:500;s:4:"file";s:17:"2024/10/blog2.jpg";s:8:"filesize";i:295993;s:5:"sizes";a:3:{s:6:"medium";a:5:{s:4:"file";s:17:"blog2-300x250.jpg";s:5:"width";i:300;s:6:"height";i:250;s:9:"mime-type";s:10:"image/jpeg";s:8:"filesize";i:28164;}s:9:"thumbnail";a:5:{s:4:"file";s:17:"blog2-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";s:8:"filesize";i:8840;}s:14:"ocean-thumb-ml";a:5:{s:4:"file";s:17:"blog2-600x450.jpg";s:5:"width";i:600;s:6:"height";i:450;s:9:"mime-type";s:10:"image/jpeg";s:8:"filesize";i:94862;}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(24, 13, '_thumbnail_id', '14'),
(25, 16, '_edit_lock', '1729101078:1'),
(26, 17, '_wp_attached_file', '2024/10/blog3.jpg'),
(27, 17, '_wp_attachment_metadata', 'a:6:{s:5:"width";i:600;s:6:"height";i:500;s:4:"file";s:17:"2024/10/blog3.jpg";s:8:"filesize";i:112987;s:5:"sizes";a:3:{s:6:"medium";a:5:{s:4:"file";s:17:"blog3-300x250.jpg";s:5:"width";i:300;s:6:"height";i:250;s:9:"mime-type";s:10:"image/jpeg";s:8:"filesize";i:10868;}s:9:"thumbnail";a:5:{s:4:"file";s:17:"blog3-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";s:8:"filesize";i:5040;}s:14:"ocean-thumb-ml";a:5:{s:4:"file";s:17:"blog3-600x450.jpg";s:5:"width";i:600;s:6:"height";i:450;s:9:"mime-type";s:10:"image/jpeg";s:8:"filesize";i:26989;}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(28, 17, '_wp_attachment_image_alt', 'Photo myristate d\'Isopropyle'),
(31, 16, '_thumbnail_id', '17'),
(32, 19, '_edit_lock', '1729100960:1'),
(33, 19, '_wp_page_template', 'page-blog.php'),
(34, 21, '_edit_lock', '1729100978:1'),
(35, 21, '_wp_page_template', 'page-technique.php'),
(36, 23, '_menu_item_type', 'post_type'),
(37, 23, '_menu_item_menu_item_parent', '0'),
(38, 23, '_menu_item_object_id', '21'),
(39, 23, '_menu_item_object', 'page'),
(40, 23, '_menu_item_target', ''),
(41, 23, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(42, 23, '_menu_item_xfn', ''),
(43, 23, '_menu_item_url', ''),
(45, 23, '_menu_item_template', ''),
(46, 23, '_menu_item_mega_template', '0'),
(47, 23, '_menu_item_nolink', ''),
(48, 23, '_menu_item_category_post', ''),
(49, 23, '_menu_item_megamenu', ''),
(50, 23, '_menu_item_megamenu_auto_width', ''),
(51, 23, '_menu_item_megamenu_col', ''),
(52, 23, '_menu_item_megamenu_heading', ''),
(53, 23, '_menu_item_megamenu_widgetarea', '0'),
(54, 23, '_menu_item_icon', ''),
(55, 24, '_menu_item_type', 'post_type'),
(56, 24, '_menu_item_menu_item_parent', '0'),
(57, 24, '_menu_item_object_id', '19'),
(58, 24, '_menu_item_object', 'page'),
(59, 24, '_menu_item_target', ''),
(60, 24, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(61, 24, '_menu_item_xfn', ''),
(62, 24, '_menu_item_url', ''),
(64, 24, '_menu_item_template', ''),
(65, 24, '_menu_item_mega_template', '0'),
(66, 24, '_menu_item_nolink', ''),
(67, 24, '_menu_item_category_post', ''),
(68, 24, '_menu_item_megamenu', ''),
(69, 24, '_menu_item_megamenu_auto_width', ''),
(70, 24, '_menu_item_megamenu_col', ''),
(71, 24, '_menu_item_megamenu_heading', ''),
(72, 24, '_menu_item_megamenu_widgetarea', '0'),
(73, 24, '_menu_item_icon', ''),
(78, 25, '_edit_lock', '1729128440:1'),
(79, 10, '_wp_attachment_image_alt', 'Photo blog bougie'),
(82, 25, '_thumbnail_id', '10'),
(83, 27, '_wp_attached_file', '2024/10/logo.png'),
(84, 27, '_wp_attachment_metadata', 'a:6:{s:5:"width";i:225;s:6:"height";i:225;s:4:"file";s:16:"2024/10/logo.png";s:8:"filesize";i:1570;s:5:"sizes";a:1:{s:9:"thumbnail";a:5:{s:4:"file";s:16:"logo-150x150.png";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:9:"image/png";s:8:"filesize";i:3115;}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(85, 27, '_wp_attachment_image_alt', 'Logo Hehocom'),
(86, 28, '_edit_lock', '1729128897:1'),
(87, 28, '_wp_trash_meta_status', 'publish'),
(88, 28, '_wp_trash_meta_time', '1729128915'),
(90, 29, '_customize_restore_dismissed', '1'),
(91, 30, '_wp_trash_meta_status', 'publish'),
(92, 30, '_wp_trash_meta_time', '1729129253') ;

#
# Fin du contenu des données de la table `wp_postmeta`
# --------------------------------------------------------



#
# Supprimer toute table existante `wp_posts`
#

DROP TABLE IF EXISTS `wp_posts`;


#
# Structure de la table `wp_posts`
#

CREATE TABLE `wp_posts` (
  `ID` bigint unsigned NOT NULL AUTO_INCREMENT,
  `post_author` bigint unsigned NOT NULL DEFAULT '0',
  `post_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_title` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_excerpt` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_status` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'publish',
  `comment_status` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'open',
  `ping_status` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'open',
  `post_password` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `post_name` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `to_ping` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `pinged` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_modified_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content_filtered` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_parent` bigint unsigned NOT NULL DEFAULT '0',
  `guid` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `menu_order` int NOT NULL DEFAULT '0',
  `post_type` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'post',
  `post_mime_type` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_count` bigint NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`),
  KEY `post_name` (`post_name`(191)),
  KEY `type_status_date` (`post_type`,`post_status`,`post_date`,`ID`),
  KEY `post_parent` (`post_parent`),
  KEY `post_author` (`post_author`)
) ENGINE=MyISAM AUTO_INCREMENT=31 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;


#
# Données de la table `wp_posts`
#
INSERT INTO `wp_posts` ( `ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(2, 1, '2024-10-16 18:29:19', '2024-10-16 16:29:19', '<!-- wp:paragraph -->\n<p>"Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum."</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p></p>\n<!-- /wp:paragraph -->', 'Je suis un test', '', 'trash', 'closed', 'open', '', 'page-d-exemple__trashed', '', '', '2024-10-16 18:53:05', '2024-10-16 16:53:05', '', 0, 'http://localhost/wordpress_hehocom/?page_id=2', 0, 'page', '', 0),
(3, 1, '2024-10-16 18:29:19', '2024-10-16 16:29:19', '<!-- wp:heading -->\n<h2 class="wp-block-heading">Qui sommes-nous ?</h2>\n<!-- /wp:heading -->\n<!-- wp:paragraph -->\n<p><strong class="privacy-policy-tutorial">Texte suggéré : </strong>L’adresse de notre site est : http://localhost/wordpress_hehocom.</p>\n<!-- /wp:paragraph -->\n<!-- wp:heading -->\n<h2 class="wp-block-heading">Commentaires</h2>\n<!-- /wp:heading -->\n<!-- wp:paragraph -->\n<p><strong class="privacy-policy-tutorial">Texte suggéré : </strong>Quand vous laissez un commentaire sur notre site, les données inscrites dans le formulaire de commentaire, ainsi que votre adresse IP et l’agent utilisateur de votre navigateur sont collectés pour nous aider à la détection des commentaires indésirables.</p>\n<!-- /wp:paragraph -->\n<!-- wp:paragraph -->\n<p>Une chaîne anonymisée créée à partir de votre adresse e-mail (également appelée hash) peut être envoyée au service Gravatar pour vérifier si vous utilisez ce dernier. Les clauses de confidentialité du service Gravatar sont disponibles ici : https://automattic.com/privacy/. Après validation de votre commentaire, votre photo de profil sera visible publiquement à coté de votre commentaire.</p>\n<!-- /wp:paragraph -->\n<!-- wp:heading -->\n<h2 class="wp-block-heading">Médias</h2>\n<!-- /wp:heading -->\n<!-- wp:paragraph -->\n<p><strong class="privacy-policy-tutorial">Texte suggéré : </strong>Si vous téléversez des images sur le site, nous vous conseillons d’éviter de téléverser des images contenant des données EXIF de coordonnées GPS. Les personnes visitant votre site peuvent télécharger et extraire des données de localisation depuis ces images.</p>\n<!-- /wp:paragraph -->\n<!-- wp:heading -->\n<h2 class="wp-block-heading">Cookies</h2>\n<!-- /wp:heading -->\n<!-- wp:paragraph -->\n<p><strong class="privacy-policy-tutorial">Texte suggéré : </strong>Si vous déposez un commentaire sur notre site, il vous sera proposé d’enregistrer votre nom, adresse e-mail et site dans des cookies. C’est uniquement pour votre confort afin de ne pas avoir à saisir ces informations si vous déposez un autre commentaire plus tard. Ces cookies expirent au bout d’un an.</p>\n<!-- /wp:paragraph -->\n<!-- wp:paragraph -->\n<p>Si vous vous rendez sur la page de connexion, un cookie temporaire sera créé afin de déterminer si votre navigateur accepte les cookies. Il ne contient pas de données personnelles et sera supprimé automatiquement à la fermeture de votre navigateur.</p>\n<!-- /wp:paragraph -->\n<!-- wp:paragraph -->\n<p>Lorsque vous vous connecterez, nous mettrons en place un certain nombre de cookies pour enregistrer vos informations de connexion et vos préférences d’écran. La durée de vie d’un cookie de connexion est de deux jours, celle d’un cookie d’option d’écran est d’un an. Si vous cochez « Se souvenir de moi », votre cookie de connexion sera conservé pendant deux semaines. Si vous vous déconnectez de votre compte, le cookie de connexion sera effacé.</p>\n<!-- /wp:paragraph -->\n<!-- wp:paragraph -->\n<p>En modifiant ou en publiant une publication, un cookie supplémentaire sera enregistré dans votre navigateur. Ce cookie ne comprend aucune donnée personnelle. Il indique simplement l’ID de la publication que vous venez de modifier. Il expire au bout d’un jour.</p>\n<!-- /wp:paragraph -->\n<!-- wp:heading -->\n<h2 class="wp-block-heading">Contenu embarqué depuis d’autres sites</h2>\n<!-- /wp:heading -->\n<!-- wp:paragraph -->\n<p><strong class="privacy-policy-tutorial">Texte suggéré : </strong>Les articles de ce site peuvent inclure des contenus intégrés (par exemple des vidéos, images, articles…). Le contenu intégré depuis d’autres sites se comporte de la même manière que si le visiteur se rendait sur cet autre site.</p>\n<!-- /wp:paragraph -->\n<!-- wp:paragraph -->\n<p>Ces sites web pourraient collecter des données sur vous, utiliser des cookies, embarquer des outils de suivis tiers, suivre vos interactions avec ces contenus embarqués si vous disposez d’un compte connecté sur leur site web.</p>\n<!-- /wp:paragraph -->\n<!-- wp:heading -->\n<h2 class="wp-block-heading">Utilisation et transmission de vos données personnelles</h2>\n<!-- /wp:heading -->\n<!-- wp:paragraph -->\n<p><strong class="privacy-policy-tutorial">Texte suggéré : </strong>Si vous demandez une réinitialisation de votre mot de passe, votre adresse IP sera incluse dans l’e-mail de réinitialisation.</p>\n<!-- /wp:paragraph -->\n<!-- wp:heading -->\n<h2 class="wp-block-heading">Durées de stockage de vos données</h2>\n<!-- /wp:heading -->\n<!-- wp:paragraph -->\n<p><strong class="privacy-policy-tutorial">Texte suggéré : </strong>Si vous laissez un commentaire, le commentaire et ses métadonnées sont conservés indéfiniment. Cela permet de reconnaître et approuver automatiquement les commentaires suivants au lieu de les laisser dans la file de modération.</p>\n<!-- /wp:paragraph -->\n<!-- wp:paragraph -->\n<p>Pour les comptes qui s’inscrivent sur notre site (le cas échéant), nous stockons également les données personnelles indiquées dans leur profil. Tous les comptes peuvent voir, modifier ou supprimer leurs informations personnelles à tout moment (à l’exception de leur identifiant). Les gestionnaires du site peuvent aussi voir et modifier ces informations.</p>\n<!-- /wp:paragraph -->\n<!-- wp:heading -->\n<h2 class="wp-block-heading">Les droits que vous avez sur vos données</h2>\n<!-- /wp:heading -->\n<!-- wp:paragraph -->\n<p><strong class="privacy-policy-tutorial">Texte suggéré : </strong>Si vous avez un compte ou si vous avez laissé des commentaires sur le site, vous pouvez demander à recevoir un fichier contenant toutes les données personnelles que nous possédons à votre sujet, incluant celles que vous nous avez fournies. Vous pouvez également demander la suppression des données personnelles vous concernant. Cela ne prend pas en compte les données stockées à des fins administratives, légales ou pour des raisons de sécurité.</p>\n<!-- /wp:paragraph -->\n<!-- wp:heading -->\n<h2 class="wp-block-heading">Où vos données sont envoyées</h2>\n<!-- /wp:heading -->\n<!-- wp:paragraph -->\n<p><strong class="privacy-policy-tutorial">Texte suggéré : </strong>Les commentaires des visiteurs peuvent être vérifiés à l’aide d’un service automatisé de détection des commentaires indésirables.</p>\n<!-- /wp:paragraph -->\n', 'Politique de confidentialité', '', 'draft', 'closed', 'open', '', 'politique-de-confidentialite', '', '', '2024-10-16 18:29:19', '2024-10-16 16:29:19', '', 0, 'http://localhost/wordpress_hehocom/?page_id=3', 0, 'page', '', 0),
(4, 0, '2024-10-16 18:29:20', '2024-10-16 16:29:20', '<!-- wp:page-list /-->', 'Navigation', '', 'publish', 'closed', 'closed', '', 'navigation', '', '', '2024-10-16 18:29:20', '2024-10-16 16:29:20', '', 0, 'http://localhost/wordpress_hehocom/2024/10/16/navigation/', 0, 'wp_navigation', '', 0),
(5, 1, '2024-10-16 18:29:35', '0000-00-00 00:00:00', '', 'Brouillon auto', '', 'auto-draft', 'open', 'open', '', '', '', '', '2024-10-16 18:29:35', '0000-00-00 00:00:00', '', 0, 'http://localhost/wordpress_hehocom/?p=5', 0, 'post', '', 0),
(6, 1, '2024-10-16 18:30:21', '2024-10-16 16:30:21', '{"version":3,"isGlobalStylesUserThemeJSON":true}', 'Custom Styles', '', 'publish', 'closed', 'closed', '', 'wp-global-styles-twentytwentyfour', '', '', '2024-10-16 18:30:21', '2024-10-16 16:30:21', '', 0, 'http://localhost/wordpress_hehocom/2024/10/16/wp-global-styles-twentytwentyfour/', 0, 'wp_global_styles', '', 0),
(7, 1, '2024-10-16 18:31:34', '2024-10-16 16:31:34', '', 'Page d’exemple', '', 'inherit', 'closed', 'closed', '', '2-revision-v1', '', '', '2024-10-16 18:31:34', '2024-10-16 16:31:34', '', 2, 'http://localhost/wordpress_hehocom/?p=7', 0, 'revision', '', 0),
(8, 1, '2024-10-16 18:48:01', '2024-10-16 16:48:01', '<!-- wp:paragraph -->\n<p>"Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum."</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p></p>\n<!-- /wp:paragraph -->', 'Je suis un test', '', 'inherit', 'closed', 'closed', '', '2-revision-v1', '', '', '2024-10-16 18:48:01', '2024-10-16 16:48:01', '', 2, 'http://localhost/wordpress_hehocom/?p=8', 0, 'revision', '', 0),
(10, 1, '2024-10-16 19:16:00', '2024-10-16 17:16:00', '', 'blog1', '', 'inherit', 'open', 'closed', '', 'blog1', '', '', '2024-10-16 20:55:22', '2024-10-16 18:55:22', '', 0, 'http://localhost/wordpress_hehocom/wp-content/uploads/2024/10/blog1.jpg', 0, 'attachment', 'image/jpeg', 0),
(13, 1, '2024-10-16 19:20:22', '2024-10-16 17:20:22', '<!-- wp:paragraph -->\n<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p></p>\n<!-- /wp:paragraph -->', 'Mes suspensions parfumées de Noël', '', 'publish', 'open', 'open', '', 'mes-suspensions-parfumees-de-noel', '', '', '2024-10-16 19:20:22', '2024-10-16 17:20:22', '', 0, 'http://localhost/wordpress_hehocom/?p=13', 0, 'post', '', 0),
(14, 1, '2024-10-16 19:20:15', '2024-10-16 17:20:15', '', 'blog2', '', 'inherit', 'open', 'closed', '', 'blog2', '', '', '2024-10-16 19:20:15', '2024-10-16 17:20:15', '', 13, 'http://localhost/wordpress_hehocom/wp-content/uploads/2024/10/blog2.jpg', 0, 'attachment', 'image/jpeg', 0),
(15, 1, '2024-10-16 19:20:22', '2024-10-16 17:20:22', '<!-- wp:paragraph -->\n<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p></p>\n<!-- /wp:paragraph -->', 'Mes suspensions parfumées de Noël', '', 'inherit', 'closed', 'closed', '', '13-revision-v1', '', '', '2024-10-16 19:20:22', '2024-10-16 17:20:22', '', 13, 'http://localhost/wordpress_hehocom/?p=15', 0, 'revision', '', 0),
(16, 1, '2024-10-16 19:21:23', '2024-10-16 17:21:23', '<!-- wp:paragraph -->\n<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p></p>\n<!-- /wp:paragraph -->', 'Tout savoir sur le Myristate d\'Isopropyle (MIP)', '', 'publish', 'open', 'open', '', 'tout-savoir-sur-le-myristate-disopropyle-mip', '', '', '2024-10-16 19:21:23', '2024-10-16 17:21:23', '', 0, 'http://localhost/wordpress_hehocom/?p=16', 0, 'post', '', 0),
(17, 1, '2024-10-16 19:20:53', '2024-10-16 17:20:53', '', 'blog3', 'test', 'inherit', 'open', 'closed', '', 'blog3', '', '', '2024-10-16 19:21:21', '2024-10-16 17:21:21', '', 16, 'http://localhost/wordpress_hehocom/wp-content/uploads/2024/10/blog3.jpg', 0, 'attachment', 'image/jpeg', 0),
(18, 1, '2024-10-16 19:21:23', '2024-10-16 17:21:23', '<!-- wp:paragraph -->\n<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p></p>\n<!-- /wp:paragraph -->', 'Tout savoir sur le Myristate d\'Isopropyle (MIP)', '', 'inherit', 'closed', 'closed', '', '16-revision-v1', '', '', '2024-10-16 19:21:23', '2024-10-16 17:21:23', '', 16, 'http://localhost/wordpress_hehocom/?p=18', 0, 'revision', '', 0),
(19, 1, '2024-10-16 19:51:42', '2024-10-16 17:51:42', '', 'Blog', '', 'publish', 'closed', 'closed', '', 'blog', '', '', '2024-10-16 19:51:42', '2024-10-16 17:51:42', '', 0, 'http://localhost/wordpress_hehocom/?page_id=19', 0, 'page', '', 0),
(20, 1, '2024-10-16 19:51:42', '2024-10-16 17:51:42', '', 'Blog', '', 'inherit', 'closed', 'closed', '', '19-revision-v1', '', '', '2024-10-16 19:51:42', '2024-10-16 17:51:42', '', 19, 'http://localhost/wordpress_hehocom/?p=20', 0, 'revision', '', 0),
(21, 1, '2024-10-16 19:52:00', '2024-10-16 17:52:00', '', 'Technique', '', 'publish', 'closed', 'closed', '', 'technique', '', '', '2024-10-16 19:52:00', '2024-10-16 17:52:00', '', 0, 'http://localhost/wordpress_hehocom/?page_id=21', 0, 'page', '', 0),
(22, 1, '2024-10-16 19:52:00', '2024-10-16 17:52:00', '', 'Technique', '', 'inherit', 'closed', 'closed', '', '21-revision-v1', '', '', '2024-10-16 19:52:00', '2024-10-16 17:52:00', '', 21, 'http://localhost/wordpress_hehocom/?p=22', 0, 'revision', '', 0),
(23, 1, '2024-10-16 19:53:03', '2024-10-16 17:53:03', ' ', '', '', 'publish', 'closed', 'closed', '', '23', '', '', '2024-10-16 19:53:03', '2024-10-16 17:53:03', '', 0, 'http://localhost/wordpress_hehocom/?p=23', 2, 'nav_menu_item', '', 0),
(24, 1, '2024-10-16 19:53:03', '2024-10-16 17:53:03', ' ', '', '', 'publish', 'closed', 'closed', '', '24', '', '', '2024-10-16 19:53:03', '2024-10-16 17:53:03', '', 0, 'http://localhost/wordpress_hehocom/?p=24', 1, 'nav_menu_item', '', 0),
(25, 1, '2024-10-16 20:55:49', '2024-10-16 18:55:49', '<!-- wp:paragraph -->\n<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p></p>\n<!-- /wp:paragraph -->', 'Créez votre bougie automnale en dégradé de couleurs', '', 'publish', 'open', 'open', '', 'creez-votre-bougie-automnale-en-degrade-de-couleurs', '', '', '2024-10-16 20:55:49', '2024-10-16 18:55:49', '', 0, 'http://localhost/wordpress_hehocom/?p=25', 0, 'post', '', 0),
(26, 1, '2024-10-16 20:55:49', '2024-10-16 18:55:49', '<!-- wp:paragraph -->\n<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p></p>\n<!-- /wp:paragraph -->', 'Créez votre bougie automnale en dégradé de couleurs', '', 'inherit', 'closed', 'closed', '', '25-revision-v1', '', '', '2024-10-16 20:55:49', '2024-10-16 18:55:49', '', 25, 'http://localhost/wordpress_hehocom/?p=26', 0, 'revision', '', 0),
(27, 1, '2024-10-17 03:28:53', '2024-10-17 01:28:53', '', 'logo', '', 'inherit', 'open', 'closed', '', 'logo', '', '', '2024-10-17 03:29:03', '2024-10-17 01:29:03', '', 0, 'http://localhost/wordpress_hehocom/wp-content/uploads/2024/10/logo.png', 0, 'attachment', 'image/png', 0),
(28, 1, '2024-10-17 03:35:15', '2024-10-17 01:35:15', '{"hehocom::ocean_disable_google_font":{"value":true,"type":"theme_mod","user_id":1,"date_modified_gmt":"2024-10-17 01:33:20"},"hehocom::ocean_local_google_font":{"value":true,"type":"theme_mod","user_id":1,"date_modified_gmt":"2024-10-17 01:33:20"},"hehocom::ocean_preload_local_google_font":{"value":true,"type":"theme_mod","user_id":1,"date_modified_gmt":"2024-10-17 01:33:20"},"hehocom::heading_h1_typography[font-family]":{"value":"Balthazar","type":"theme_mod","user_id":1,"date_modified_gmt":"2024-10-17 01:33:20"},"hehocom::body_typography[font-weight]":{"value":"600","type":"theme_mod","user_id":1,"date_modified_gmt":"2024-10-17 01:34:57"},"hehocom::heading_h1_typography[font-size]":{"value":180,"type":"theme_mod","user_id":1,"date_modified_gmt":"2024-10-17 01:34:20"},"hehocom::heading_h1_typography[letter-spacing]":{"value":0,"type":"theme_mod","user_id":1,"date_modified_gmt":"2024-10-17 01:34:20"},"hehocom::heading_h1_typography[line-height]":{"value":0,"type":"theme_mod","user_id":1,"date_modified_gmt":"2024-10-17 01:34:20"},"hehocom::body_typography[font-family]":{"value":"Work Sans","type":"theme_mod","user_id":1,"date_modified_gmt":"2024-10-17 01:34:57"},"page_for_posts":{"value":"0","type":"option","user_id":1,"date_modified_gmt":"2024-10-17 01:35:15"}}', '', '', 'trash', 'closed', 'closed', '', '35d5d91d-3b6b-413b-b61c-9723e3227384', '', '', '2024-10-17 03:35:15', '2024-10-17 01:35:15', '', 0, 'http://localhost/wordpress_hehocom/?p=28', 0, 'customize_changeset', '', 0),
(29, 1, '2024-10-17 03:39:24', '0000-00-00 00:00:00', '{"hehocom::heading_h3_typography[font-family]":{"value":"Work Sans","type":"theme_mod","user_id":1,"date_modified_gmt":"2024-10-17 01:39:00"},"hehocom::heading_h1_typography[font-family]":{"value":"Work Sans","type":"theme_mod","user_id":1,"date_modified_gmt":"2024-10-17 01:39:24"}}', '', '', 'auto-draft', 'closed', 'closed', '', '6c28706e-4c50-40ad-931e-bf910b6e0f3e', '', '', '2024-10-17 03:39:24', '2024-10-17 01:39:24', '', 0, 'http://localhost/wordpress_hehocom/?p=29', 0, 'customize_changeset', '', 0),
(30, 1, '2024-10-17 03:40:53', '2024-10-17 01:40:53', '{"show_on_front":{"value":"posts","type":"option","user_id":1,"date_modified_gmt":"2024-10-17 01:40:53"},"hehocom::heading_h2_typography[font-family]":{"value":"Work Sans","type":"theme_mod","user_id":1,"date_modified_gmt":"2024-10-17 01:40:53"},"hehocom::heading_h2_typography[font-size]":{"value":17,"type":"theme_mod","user_id":1,"date_modified_gmt":"2024-10-17 01:40:53"},"hehocom::heading_h3_typography[font-family]":{"value":"Work Sans","type":"theme_mod","user_id":1,"date_modified_gmt":"2024-10-17 01:40:53"},"hehocom::heading_h4_typography[font-family]":{"value":"Work Sans","type":"theme_mod","user_id":1,"date_modified_gmt":"2024-10-17 01:40:53"}}', '', '', 'trash', 'closed', 'closed', '', '9d03b961-1c33-49e8-8288-f79efc1a93d2', '', '', '2024-10-17 03:40:53', '2024-10-17 01:40:53', '', 0, 'http://localhost/wordpress_hehocom/2024/10/17/9d03b961-1c33-49e8-8288-f79efc1a93d2/', 0, 'customize_changeset', '', 0) ;

#
# Fin du contenu des données de la table `wp_posts`
# --------------------------------------------------------



#
# Supprimer toute table existante `wp_simply_static_pages`
#

DROP TABLE IF EXISTS `wp_simply_static_pages`;


#
# Structure de la table `wp_simply_static_pages`
#

CREATE TABLE `wp_simply_static_pages` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `build_id` bigint unsigned DEFAULT NULL,
  `post_id` bigint unsigned DEFAULT NULL,
  `found_on_id` bigint unsigned DEFAULT NULL,
  `site_id` bigint unsigned DEFAULT NULL,
  `url` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `redirect_url` text COLLATE utf8mb4_unicode_520_ci,
  `file_path` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `http_status_code` smallint DEFAULT NULL,
  `content_type` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `content_hash` binary(20) DEFAULT NULL,
  `error_message` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `status_message` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `handler` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `json` text COLLATE utf8mb4_unicode_520_ci,
  `last_checked_at` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `last_modified_at` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `last_transferred_at` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_at` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`),
  KEY `url` (`url`(250)),
  KEY `last_checked_at` (`last_checked_at`),
  KEY `last_modified_at` (`last_modified_at`),
  KEY `last_transferred_at` (`last_transferred_at`)
) ENGINE=MyISAM AUTO_INCREMENT=155 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;


#
# Données de la table `wp_simply_static_pages`
#
INSERT INTO `wp_simply_static_pages` ( `id`, `build_id`, `post_id`, `found_on_id`, `site_id`, `url`, `redirect_url`, `file_path`, `http_status_code`, `content_type`, `content_hash`, `error_message`, `status_message`, `handler`, `json`, `last_checked_at`, `last_modified_at`, `last_transferred_at`, `created_at`, `updated_at`) VALUES
(78, NULL, NULL, 0, 1, 'http://localhost/wordpress_hehocom/', NULL, '/index.html', 200, 'text/html; charset=UTF-8', UNHEX('3230313664303330626535363534636330376466'), NULL, 'URL d\'origine', NULL, NULL, '2024-10-17 03:54:09', '2024-10-17 03:54:11', '0000-00-00 00:00:00', '2024-10-17 03:54:09', '2024-10-17 03:54:11'),
(79, NULL, NULL, 0, 1, 'http://localhost/wordpress_hehocom/sitemap.xml', 'http://localhost/wordpress_hehocom/sitemap_index.xml', '/sitemap.xml', 301, 'text/html; charset=UTF-8', UNHEX('6433646131636534643566363736346261623261'), NULL, 'Sitemap URL', 'Simply_Static\\Yoast_Sitemap_Handler', NULL, '2024-10-17 03:54:13', '2024-10-17 03:54:13', '0000-00-00 00:00:00', '2024-10-17 03:54:09', '2024-10-17 03:54:13'),
(80, NULL, NULL, 0, 1, 'http://localhost/wordpress_hehocom/sitemap_index.xml', NULL, '/sitemap_index.xml', 200, 'text/xml; charset=UTF-8', UNHEX('3863393663316361636339306332396435633561'), NULL, 'Sitemap URL', 'Simply_Static\\Yoast_Sitemap_Handler', NULL, '2024-10-17 03:54:13', '2024-10-17 03:54:13', '0000-00-00 00:00:00', '2024-10-17 03:54:09', '2024-10-17 03:54:13'),
(81, NULL, 21, 78, 1, 'http://localhost/wordpress_hehocom/technique/', NULL, '/technique/index.html', 200, 'text/html; charset=UTF-8', UNHEX('3530633063666239366561623636336365306634'), NULL, NULL, 'Simply_Static\\Page_Handler', NULL, '2024-10-17 03:54:13', '2024-10-17 03:54:16', '0000-00-00 00:00:00', '2024-10-17 03:54:11', '2024-10-17 03:54:16'),
(82, NULL, 25, 78, 1, 'http://localhost/wordpress_hehocom/2024/10/16/creez-votre-bougie-automnale-en-degrade-de-couleurs/', NULL, '/2024/10/16/creez-votre-bougie-automnale-en-degrade-de-couleurs/index.html', 200, 'text/html; charset=UTF-8', UNHEX('3730393661316334326539323437303962633636'), NULL, NULL, 'Simply_Static\\Page_Handler', NULL, '2024-10-17 03:54:16', '2024-10-17 03:54:18', '0000-00-00 00:00:00', '2024-10-17 03:54:11', '2024-10-17 03:54:18'),
(83, NULL, 16, 78, 1, 'http://localhost/wordpress_hehocom/2024/10/16/tout-savoir-sur-le-myristate-disopropyle-mip/', NULL, '/2024/10/16/tout-savoir-sur-le-myristate-disopropyle-mip/index.html', 200, 'text/html; charset=UTF-8', UNHEX('6466646165326437636362666437323161353539'), NULL, NULL, 'Simply_Static\\Page_Handler', NULL, '2024-10-17 03:54:18', '2024-10-17 03:54:20', '0000-00-00 00:00:00', '2024-10-17 03:54:11', '2024-10-17 03:54:20'),
(84, NULL, 13, 78, 1, 'http://localhost/wordpress_hehocom/2024/10/16/mes-suspensions-parfumees-de-noel/', NULL, '/2024/10/16/mes-suspensions-parfumees-de-noel/index.html', 200, 'text/html; charset=UTF-8', UNHEX('3663653638353863663931643936663666666539'), NULL, NULL, 'Simply_Static\\Page_Handler', NULL, '2024-10-17 03:54:20', '2024-10-17 03:54:22', '0000-00-00 00:00:00', '2024-10-17 03:54:11', '2024-10-17 03:54:22'),
(85, NULL, NULL, 78, 1, 'http://localhost/wordpress_hehocom/wp-content/themes/hehocom/assets/img/logo.png', NULL, '/wp-content/themes/hehocom/assets/img/logo.png', 200, 'image/png', UNHEX('6131613730643339613562313762363939646237'), NULL, NULL, 'Simply_Static\\Page_Handler', NULL, '2024-10-17 03:54:22', '2024-10-17 03:54:22', '0000-00-00 00:00:00', '2024-10-17 03:54:11', '2024-10-17 03:54:22'),
(86, NULL, NULL, 78, 1, 'http://localhost/wordpress_hehocom/wp-content/themes/hehocom/assets/img/blog/fleche-droite-marron.svg', NULL, '/wp-content/themes/hehocom/assets/img/blog/fleche-droite-marron.svg', 200, 'image/svg+xml', UNHEX('6264643239633566653462633361643163376338'), NULL, NULL, 'Simply_Static\\Page_Handler', NULL, '2024-10-17 03:54:22', '2024-10-17 03:54:22', '0000-00-00 00:00:00', '2024-10-17 03:54:11', '2024-10-17 03:54:22'),
(87, NULL, NULL, 78, 1, 'http://localhost/wordpress_hehocom/wp-content/uploads/2024/10/blog1-1024x299.jpg', NULL, '/wp-content/uploads/2024/10/blog1-1024x299.jpg', 200, 'image/jpeg', UNHEX('6338343037633238316265666631613765393962'), NULL, NULL, 'Simply_Static\\Page_Handler', NULL, '2024-10-17 03:54:22', '2024-10-17 03:54:22', '0000-00-00 00:00:00', '2024-10-17 03:54:11', '2024-10-17 03:54:22'),
(88, NULL, NULL, 78, 1, 'http://localhost/wordpress_hehocom/wp-content/uploads/2024/10/blog1-300x88.jpg', NULL, '/wp-content/uploads/2024/10/blog1-300x88.jpg', 200, 'image/jpeg', UNHEX('6430666464366566373332313064313830663130'), NULL, NULL, 'Simply_Static\\Page_Handler', NULL, '2024-10-17 03:54:22', '2024-10-17 03:54:22', '0000-00-00 00:00:00', '2024-10-17 03:54:11', '2024-10-17 03:54:22'),
(89, NULL, NULL, 78, 1, 'http://localhost/wordpress_hehocom/wp-content/uploads/2024/10/blog1-768x224.jpg', NULL, '/wp-content/uploads/2024/10/blog1-768x224.jpg', 200, 'image/jpeg', UNHEX('3561316238656430323430313161353933393966'), NULL, NULL, 'Simply_Static\\Page_Handler', NULL, '2024-10-17 03:54:22', '2024-10-17 03:54:22', '0000-00-00 00:00:00', '2024-10-17 03:54:11', '2024-10-17 03:54:22'),
(90, NULL, NULL, 78, 1, 'http://localhost/wordpress_hehocom/wp-content/uploads/2024/10/blog1-1536x448.jpg', NULL, '/wp-content/uploads/2024/10/blog1-1536x448.jpg', 200, 'image/jpeg', UNHEX('3239336337333839353963653136636164646230'), NULL, NULL, 'Simply_Static\\Page_Handler', NULL, '2024-10-17 03:54:23', '2024-10-17 03:54:23', '0000-00-00 00:00:00', '2024-10-17 03:54:11', '2024-10-17 03:54:23'),
(91, NULL, NULL, 78, 1, 'http://localhost/wordpress_hehocom/wp-content/uploads/2024/10/blog1.jpg', NULL, '/wp-content/uploads/2024/10/blog1.jpg', 200, 'image/jpeg', UNHEX('6530646437373132373666336164313836326433'), NULL, NULL, 'Simply_Static\\Page_Handler', NULL, '2024-10-17 03:54:23', '2024-10-17 03:54:23', '0000-00-00 00:00:00', '2024-10-17 03:54:11', '2024-10-17 03:54:23'),
(92, NULL, NULL, 78, 1, 'http://localhost/wordpress_hehocom/wp-content/themes/hehocom/assets/img/blog/fleche-droite-blanche.svg', NULL, '/wp-content/themes/hehocom/assets/img/blog/fleche-droite-blanche.svg', 200, 'image/svg+xml', UNHEX('3366623864616565343235393465396234353832'), NULL, NULL, 'Simply_Static\\Page_Handler', NULL, '2024-10-17 03:54:23', '2024-10-17 03:54:23', '0000-00-00 00:00:00', '2024-10-17 03:54:11', '2024-10-17 03:54:23'),
(93, NULL, NULL, 78, 1, 'http://localhost/wordpress_hehocom/wp-content/uploads/2024/10/blog3-300x250.jpg', NULL, '/wp-content/uploads/2024/10/blog3-300x250.jpg', 200, 'image/jpeg', UNHEX('6361376336653039323766626336306433616234'), NULL, NULL, 'Simply_Static\\Page_Handler', NULL, '2024-10-17 03:54:23', '2024-10-17 03:54:23', '0000-00-00 00:00:00', '2024-10-17 03:54:11', '2024-10-17 03:54:23'),
(94, NULL, NULL, 78, 1, 'http://localhost/wordpress_hehocom/wp-content/uploads/2024/10/blog3.jpg', NULL, '/wp-content/uploads/2024/10/blog3.jpg', 200, 'image/jpeg', UNHEX('3663313865653332383137646136323639323664'), NULL, NULL, 'Simply_Static\\Page_Handler', NULL, '2024-10-17 03:54:23', '2024-10-17 03:54:23', '0000-00-00 00:00:00', '2024-10-17 03:54:11', '2024-10-17 03:54:23'),
(95, NULL, NULL, 78, 1, 'http://localhost/wordpress_hehocom/wp-content/uploads/2024/10/blog2-300x250.jpg', NULL, '/wp-content/uploads/2024/10/blog2-300x250.jpg', 200, 'image/jpeg', UNHEX('6139326464393263663661316133616634336335'), NULL, NULL, 'Simply_Static\\Page_Handler', NULL, '2024-10-17 03:54:23', '2024-10-17 03:54:23', '0000-00-00 00:00:00', '2024-10-17 03:54:11', '2024-10-17 03:54:23'),
(96, NULL, NULL, 78, 1, 'http://localhost/wordpress_hehocom/wp-content/uploads/2024/10/blog2.jpg', NULL, '/wp-content/uploads/2024/10/blog2.jpg', 200, 'image/jpeg', UNHEX('3335353365333463366464353138326330306335'), NULL, NULL, 'Simply_Static\\Page_Handler', NULL, '2024-10-17 03:54:23', '2024-10-17 03:54:23', '0000-00-00 00:00:00', '2024-10-17 03:54:11', '2024-10-17 03:54:23'),
(97, NULL, NULL, 78, 1, 'http://localhost/wordpress_hehocom/wp-includes/js/jquery/jquery.min.js', NULL, '/wp-includes/js/jquery/jquery.min.js', 200, 'application/javascript', UNHEX('3739636433353837643536356166653239303037'), NULL, NULL, 'Simply_Static\\Page_Handler', NULL, '2024-10-17 03:54:23', '2024-10-17 03:54:23', '0000-00-00 00:00:00', '2024-10-17 03:54:11', '2024-10-17 03:54:23'),
(98, NULL, NULL, 78, 1, 'http://localhost/wordpress_hehocom/wp-includes/js/jquery/jquery-migrate.min.js', NULL, '/wp-includes/js/jquery/jquery-migrate.min.js', 200, 'application/javascript', UNHEX('3361643063313065353031616332613962666131'), NULL, NULL, 'Simply_Static\\Page_Handler', NULL, '2024-10-17 03:54:23', '2024-10-17 03:54:23', '0000-00-00 00:00:00', '2024-10-17 03:54:11', '2024-10-17 03:54:23'),
(99, NULL, NULL, 78, 1, 'http://localhost/wordpress_hehocom/wp-includes/js/imagesloaded.min.js', NULL, '/wp-includes/js/imagesloaded.min.js', 200, 'application/javascript', UNHEX('3930623061646233376437306666656335663931'), NULL, NULL, 'Simply_Static\\Page_Handler', NULL, '2024-10-17 03:54:23', '2024-10-17 03:54:23', '0000-00-00 00:00:00', '2024-10-17 03:54:11', '2024-10-17 03:54:23'),
(100, NULL, NULL, 78, 1, 'http://localhost/wordpress_hehocom/wp-content/themes/oceanwp/assets/js/theme.min.js', NULL, '/wp-content/themes/oceanwp/assets/js/theme.min.js', 200, 'application/javascript', UNHEX('3361363033346136343431626164363631633530'), NULL, NULL, 'Simply_Static\\Page_Handler', NULL, '2024-10-17 03:54:23', '2024-10-17 03:54:23', '0000-00-00 00:00:00', '2024-10-17 03:54:11', '2024-10-17 03:54:23'),
(101, NULL, NULL, 78, 1, 'http://localhost/wordpress_hehocom/wp-content/themes/oceanwp/assets/js/drop-down-mobile-menu.min.js', NULL, '/wp-content/themes/oceanwp/assets/js/drop-down-mobile-menu.min.js', 200, 'application/javascript', UNHEX('6530633630616132386231653139616632343164'), NULL, NULL, 'Simply_Static\\Page_Handler', NULL, '2024-10-17 03:54:23', '2024-10-17 03:54:23', '0000-00-00 00:00:00', '2024-10-17 03:54:11', '2024-10-17 03:54:23'),
(102, NULL, NULL, 78, 1, 'http://localhost/wordpress_hehocom/wp-content/themes/oceanwp/assets/js/drop-down-search.min.js', NULL, '/wp-content/themes/oceanwp/assets/js/drop-down-search.min.js', 200, 'application/javascript', UNHEX('6139353563393634366137323866383235306633'), NULL, NULL, 'Simply_Static\\Page_Handler', NULL, '2024-10-17 03:54:23', '2024-10-17 03:54:23', '0000-00-00 00:00:00', '2024-10-17 03:54:11', '2024-10-17 03:54:23'),
(103, NULL, NULL, 78, 1, 'http://localhost/wordpress_hehocom/wp-content/themes/oceanwp/assets/js/vendors/magnific-popup.min.js', NULL, '/wp-content/themes/oceanwp/assets/js/vendors/magnific-popup.min.js', 200, 'application/javascript', UNHEX('3662326531383263393961303036356261313730'), NULL, NULL, 'Simply_Static\\Page_Handler', NULL, '2024-10-17 03:54:23', '2024-10-17 03:54:23', '0000-00-00 00:00:00', '2024-10-17 03:54:11', '2024-10-17 03:54:23'),
(104, NULL, NULL, 78, 1, 'http://localhost/wordpress_hehocom/wp-content/themes/oceanwp/assets/js/ow-lightbox.min.js', NULL, '/wp-content/themes/oceanwp/assets/js/ow-lightbox.min.js', 200, 'application/javascript', UNHEX('3266303438613963613837323762313639653736'), NULL, NULL, 'Simply_Static\\Page_Handler', NULL, '2024-10-17 03:54:23', '2024-10-17 03:54:23', '0000-00-00 00:00:00', '2024-10-17 03:54:11', '2024-10-17 03:54:23'),
(105, NULL, NULL, 78, 1, 'http://localhost/wordpress_hehocom/wp-content/themes/oceanwp/assets/js/vendors/flickity.pkgd.min.js', NULL, '/wp-content/themes/oceanwp/assets/js/vendors/flickity.pkgd.min.js', 200, 'application/javascript', UNHEX('6539366432376539633033366462343935623666'), NULL, NULL, 'Simply_Static\\Page_Handler', NULL, '2024-10-17 03:54:23', '2024-10-17 03:54:23', '0000-00-00 00:00:00', '2024-10-17 03:54:11', '2024-10-17 03:54:23'),
(106, NULL, NULL, 78, 1, 'http://localhost/wordpress_hehocom/wp-content/themes/oceanwp/assets/js/ow-slider.min.js', NULL, '/wp-content/themes/oceanwp/assets/js/ow-slider.min.js', 200, 'application/javascript', UNHEX('3537393962373835383165643539363833343663'), NULL, NULL, 'Simply_Static\\Page_Handler', NULL, '2024-10-17 03:54:23', '2024-10-17 03:54:23', '0000-00-00 00:00:00', '2024-10-17 03:54:11', '2024-10-17 03:54:23'),
(107, NULL, NULL, 78, 1, 'http://localhost/wordpress_hehocom/wp-content/themes/oceanwp/assets/js/scroll-effect.min.js', NULL, '/wp-content/themes/oceanwp/assets/js/scroll-effect.min.js', 200, 'application/javascript', UNHEX('6335353731636538623161333135393032333532'), NULL, NULL, 'Simply_Static\\Page_Handler', NULL, '2024-10-17 03:54:23', '2024-10-17 03:54:23', '0000-00-00 00:00:00', '2024-10-17 03:54:11', '2024-10-17 03:54:23'),
(108, NULL, NULL, 78, 1, 'http://localhost/wordpress_hehocom/wp-content/themes/oceanwp/assets/js/scroll-top.min.js', NULL, '/wp-content/themes/oceanwp/assets/js/scroll-top.min.js', 200, 'application/javascript', UNHEX('3263393332333764306532336434616339346265'), NULL, NULL, 'Simply_Static\\Page_Handler', NULL, '2024-10-17 03:54:23', '2024-10-17 03:54:23', '0000-00-00 00:00:00', '2024-10-17 03:54:11', '2024-10-17 03:54:23'),
(109, NULL, NULL, 78, 1, 'http://localhost/wordpress_hehocom/wp-content/themes/oceanwp/assets/js/select.min.js', NULL, '/wp-content/themes/oceanwp/assets/js/select.min.js', 200, 'application/javascript', UNHEX('6366313337393334626334656638633062306334'), NULL, NULL, 'Simply_Static\\Page_Handler', NULL, '2024-10-17 03:54:23', '2024-10-17 03:54:23', '0000-00-00 00:00:00', '2024-10-17 03:54:11', '2024-10-17 03:54:23'),
(110, NULL, NULL, 78, 1, 'http://localhost/wordpress_hehocom/feed/', NULL, '/feed/index.xml', 200, 'application/rss+xml; charset=UTF-8', UNHEX('3461343533376537326362646437353261313339'), NULL, NULL, 'Simply_Static\\Page_Handler', NULL, '2024-10-17 03:54:23', '2024-10-17 03:54:24', '0000-00-00 00:00:00', '2024-10-17 03:54:11', '2024-10-17 03:54:24'),
(111, NULL, NULL, 78, 1, 'http://localhost/wordpress_hehocom/comments/feed/', NULL, '/comments/feed/index.xml', 200, 'application/rss+xml; charset=UTF-8', UNHEX('6239313936363930646432323037653236336464'), NULL, NULL, 'Simply_Static\\Page_Handler', NULL, '2024-10-17 03:54:24', '2024-10-17 03:54:25', '0000-00-00 00:00:00', '2024-10-17 03:54:11', '2024-10-17 03:54:25'),
(112, NULL, NULL, 78, 1, 'http://localhost/wordpress_hehocom/wp-includes/css/dist/block-library/style.min.css', NULL, '/wp-includes/css/dist/block-library/style.min.css', 200, 'text/css', UNHEX('6532336263313865663162306637386637303130'), NULL, NULL, 'Simply_Static\\Page_Handler', NULL, '2024-10-17 03:54:25', '2024-10-17 03:54:25', '0000-00-00 00:00:00', '2024-10-17 03:54:11', '2024-10-17 03:54:25'),
(113, NULL, NULL, 78, 1, 'http://localhost/wordpress_hehocom/wp-content/themes/oceanwp/style.css', NULL, '/wp-content/themes/oceanwp/style.css', 200, 'text/css', UNHEX('3861643433633334333934373933393733656438'), NULL, NULL, 'Simply_Static\\Page_Handler', NULL, '2024-10-17 03:54:25', '2024-10-17 03:54:25', '0000-00-00 00:00:00', '2024-10-17 03:54:11', '2024-10-17 03:54:25'),
(114, NULL, NULL, 78, 1, 'http://localhost/wordpress_hehocom/wp-content/themes/hehocom/style.css', NULL, '/wp-content/themes/hehocom/style.css', 200, 'text/css', UNHEX('3730353536656430363131656533363339336634'), NULL, NULL, 'Simply_Static\\Page_Handler', NULL, '2024-10-17 03:54:25', '2024-10-17 03:54:25', '0000-00-00 00:00:00', '2024-10-17 03:54:11', '2024-10-17 03:54:25'),
(115, NULL, NULL, 78, 1, 'http://localhost/wordpress_hehocom/wp-content/themes/oceanwp/assets/fonts/fontawesome/css/all.min.css', NULL, '/wp-content/themes/oceanwp/assets/fonts/fontawesome/css/all.min.css', 200, 'text/css', UNHEX('3766666561636566383766616132353932306138'), NULL, NULL, 'Simply_Static\\Page_Handler', NULL, '2024-10-17 03:54:25', '2024-10-17 03:54:25', '0000-00-00 00:00:00', '2024-10-17 03:54:11', '2024-10-17 03:54:25'),
(116, NULL, NULL, 78, 1, 'http://localhost/wordpress_hehocom/wp-content/themes/oceanwp/assets/css/third/simple-line-icons.min.css', NULL, '/wp-content/themes/oceanwp/assets/css/third/simple-line-icons.min.css', 200, 'text/css', UNHEX('3462366261346232333038623134633865626338'), NULL, NULL, 'Simply_Static\\Page_Handler', NULL, '2024-10-17 03:54:25', '2024-10-17 03:54:25', '0000-00-00 00:00:00', '2024-10-17 03:54:11', '2024-10-17 03:54:25'),
(117, NULL, NULL, 78, 1, 'http://localhost/wordpress_hehocom/wp-content/themes/oceanwp/assets/css/style.min.css', NULL, '/wp-content/themes/oceanwp/assets/css/style.min.css', 200, 'text/css', UNHEX('3566366130303631346364373962643763613766'), NULL, NULL, 'Simply_Static\\Page_Handler', NULL, '2024-10-17 03:54:25', '2024-10-17 03:54:25', '0000-00-00 00:00:00', '2024-10-17 03:54:11', '2024-10-17 03:54:25'),
(118, NULL, NULL, 78, 1, 'http://localhost/wordpress_hehocom/wp-json/', NULL, NULL, NULL, NULL, NULL, NULL, 'Do not save or follow', 'Simply_Static\\Page_Handler', NULL, '2024-10-17 03:54:25', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '2024-10-17 03:54:11', '2024-10-17 03:54:25', NULL),
(119, NULL, NULL, 78, 1, 'http://localhost/wordpress_hehocom/xmlrpc.php', NULL, NULL, NULL, NULL, NULL, NULL, 'Do not save or follow', 'Simply_Static\\Page_Handler', NULL, '2024-10-17 03:54:25', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '2024-10-17 03:54:11', '2024-10-17 03:54:25', NULL),
(120, NULL, NULL, 80, 1, 'http://localhost/wordpress_hehocom/main-sitemap.xsl', NULL, '/main-sitemap.xsl', 200, 'text/xml;charset=UTF-8', UNHEX('3432346265633339323836336334373338653337'), NULL, NULL, 'Simply_Static\\Yoast_Sitemap_Handler', NULL, '2024-10-17 03:54:25', '2024-10-17 03:54:25', '0000-00-00 00:00:00', '2024-10-17 03:54:13', '2024-10-17 03:54:25'),
(121, NULL, NULL, 80, 1, 'http://localhost/wordpress_hehocom/post-sitemap.xml', NULL, '/post-sitemap.xml', 200, 'text/xml; charset=UTF-8', UNHEX('6435373334366532323561366436346639666630'), NULL, NULL, 'Simply_Static\\Yoast_Sitemap_Handler', NULL, '2024-10-17 03:54:25', '2024-10-17 03:54:26', '0000-00-00 00:00:00', '2024-10-17 03:54:13', '2024-10-17 03:54:26'),
(122, NULL, NULL, 80, 1, 'http://localhost/wordpress_hehocom/page-sitemap.xml', NULL, '/page-sitemap.xml', 200, 'text/xml; charset=UTF-8', UNHEX('6632636662336464343138616435363830343334'), NULL, NULL, 'Simply_Static\\Yoast_Sitemap_Handler', NULL, '2024-10-17 03:54:26', '2024-10-17 03:54:26', '0000-00-00 00:00:00', '2024-10-17 03:54:13', '2024-10-17 03:54:26'),
(123, NULL, NULL, 80, 1, 'http://localhost/wordpress_hehocom/category-sitemap.xml', NULL, '/category-sitemap.xml', 200, 'text/xml; charset=UTF-8', UNHEX('3337346333363333386163306464383361613464'), NULL, NULL, 'Simply_Static\\Yoast_Sitemap_Handler', NULL, '2024-10-17 03:54:26', '2024-10-17 03:54:26', '0000-00-00 00:00:00', '2024-10-17 03:54:13', '2024-10-17 03:54:26'),
(124, NULL, NULL, 80, 1, 'http://localhost/wordpress_hehocom/author-sitemap.xml', NULL, '/author-sitemap.xml', 200, 'text/xml; charset=UTF-8', UNHEX('6333346266303936396533623037306264623666'), NULL, NULL, 'Simply_Static\\Yoast_Sitemap_Handler', NULL, '2024-10-17 03:54:26', '2024-10-17 03:54:27', '0000-00-00 00:00:00', '2024-10-17 03:54:13', '2024-10-17 03:54:27'),
(125, NULL, NULL, 81, 1, 'http://localhost/wordpress_hehocom/wp-content/themes/hehocom/assets/img/technic/curly.webp', NULL, '/wp-content/themes/hehocom/assets/img/technic/curly.webp', 200, 'image/webp', UNHEX('6333643634363566323832383138333961356665'), NULL, NULL, 'Simply_Static\\Page_Handler', NULL, '2024-10-17 03:54:27', '2024-10-17 03:54:27', '0000-00-00 00:00:00', '2024-10-17 03:54:16', '2024-10-17 03:54:27'),
(126, NULL, NULL, 81, 1, 'http://localhost/wordpress_hehocom/wp-json/wp/v2/pages/21', NULL, NULL, NULL, NULL, NULL, NULL, 'Do not save or follow', 'Simply_Static\\Page_Handler', NULL, '2024-10-17 03:54:27', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '2024-10-17 03:54:16', '2024-10-17 03:54:27', NULL),
(127, NULL, NULL, 81, 1, 'http://localhost/wordpress_hehocom/wp-json/oembed/1.0/embed', NULL, NULL, NULL, NULL, NULL, NULL, 'Do not save or follow', 'Simply_Static\\Page_Handler', NULL, '2024-10-17 03:54:27', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '2024-10-17 03:54:16', '2024-10-17 03:54:27', NULL),
(128, NULL, NULL, 82, 1, 'http://localhost/wordpress_hehocom/author/valentinrndn/', NULL, '/author/valentinrndn/index.html', 200, 'text/html; charset=UTF-8', UNHEX('3266333635656230303466663638613439363765'), NULL, NULL, 'Simply_Static\\Page_Handler', NULL, '2024-10-17 03:54:27', '2024-10-17 03:54:28', '0000-00-00 00:00:00', '2024-10-17 03:54:18', '2024-10-17 03:54:28'),
(129, NULL, NULL, 82, 1, 'http://localhost/wordpress_hehocom/category/non-classe/', NULL, '/category/non-classe/index.html', 200, 'text/html; charset=UTF-8', UNHEX('3235633838313262636165383064636161356236'), NULL, NULL, 'Simply_Static\\Page_Handler', NULL, '2024-10-17 03:54:28', '2024-10-17 03:54:31', '0000-00-00 00:00:00', '2024-10-17 03:54:18', '2024-10-17 03:54:31'),
(130, NULL, NULL, 82, 1, 'http://localhost/wordpress_hehocom/wp-includes/js/comment-reply.min.js', NULL, '/wp-includes/js/comment-reply.min.js', 200, 'application/javascript', UNHEX('6462333661373766366161613230363362666265'), NULL, NULL, 'Simply_Static\\Page_Handler', NULL, '2024-10-17 03:54:31', '2024-10-17 03:54:31', '0000-00-00 00:00:00', '2024-10-17 03:54:18', '2024-10-17 03:54:31'),
(131, NULL, 25, 82, 1, 'http://localhost/wordpress_hehocom/2024/10/16/creez-votre-bougie-automnale-en-degrade-de-couleurs/feed/', NULL, '/2024/10/16/creez-votre-bougie-automnale-en-degrade-de-couleurs/feed/index.xml', 200, 'application/rss+xml; charset=UTF-8', UNHEX('3736373930363233373038343637623138393335'), NULL, NULL, 'Simply_Static\\Page_Handler', NULL, '2024-10-17 03:54:31', '2024-10-17 03:54:31', '0000-00-00 00:00:00', '2024-10-17 03:54:18', '2024-10-17 03:54:31'),
(132, NULL, NULL, 82, 1, 'http://localhost/wordpress_hehocom/wp-json/wp/v2/posts/25', NULL, NULL, NULL, NULL, NULL, NULL, 'Do not save or follow', 'Simply_Static\\Page_Handler', NULL, '2024-10-17 03:54:31', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '2024-10-17 03:54:18', '2024-10-17 03:54:31', NULL),
(133, NULL, 16, 83, 1, 'http://localhost/wordpress_hehocom/2024/10/16/tout-savoir-sur-le-myristate-disopropyle-mip/feed/', NULL, '/2024/10/16/tout-savoir-sur-le-myristate-disopropyle-mip/feed/index.xml', 200, 'application/rss+xml; charset=UTF-8', UNHEX('6236316365346332396431633037323432643335'), NULL, NULL, 'Simply_Static\\Page_Handler', NULL, '2024-10-17 03:54:31', '2024-10-17 03:54:32', '0000-00-00 00:00:00', '2024-10-17 03:54:20', '2024-10-17 03:54:32'),
(134, NULL, NULL, 83, 1, 'http://localhost/wordpress_hehocom/wp-json/wp/v2/posts/16', NULL, NULL, NULL, NULL, NULL, NULL, 'Do not save or follow', 'Simply_Static\\Page_Handler', NULL, '2024-10-17 03:54:32', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '2024-10-17 03:54:20', '2024-10-17 03:54:32', NULL),
(135, NULL, 13, 84, 1, 'http://localhost/wordpress_hehocom/2024/10/16/mes-suspensions-parfumees-de-noel/feed/', NULL, '/2024/10/16/mes-suspensions-parfumees-de-noel/feed/index.xml', 200, 'application/rss+xml; charset=UTF-8', UNHEX('3164663961653863343537356133626332323462'), NULL, NULL, 'Simply_Static\\Page_Handler', NULL, '2024-10-17 03:54:32', '2024-10-17 03:54:32', '0000-00-00 00:00:00', '2024-10-17 03:54:22', '2024-10-17 03:54:32'),
(136, NULL, NULL, 84, 1, 'http://localhost/wordpress_hehocom/wp-json/wp/v2/posts/13', NULL, NULL, NULL, NULL, NULL, NULL, 'Do not save or follow', 'Simply_Static\\Page_Handler', NULL, '2024-10-17 03:54:32', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '2024-10-17 03:54:22', '2024-10-17 03:54:32', NULL),
(137, NULL, 19, 110, 1, 'http://localhost/wordpress_hehocom', 'http://localhost/wordpress_hehocom/?simply_static_page=137', NULL, 301, 'text/html; charset=iso-8859-1', NULL, NULL, NULL, 'Simply_Static\\Page_Handler', NULL, '2024-10-17 03:54:32', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '2024-10-17 03:54:24', '2024-10-17 03:54:32', NULL),
(138, NULL, NULL, 115, 1, 'http://localhost/wordpress_hehocom/wp-content/themes/oceanwp/assets/fonts/fontawesome/webfonts/fa-brands-400.woff2', NULL, '/wp-content/themes/oceanwp/assets/fonts/fontawesome/webfonts/fa-brands-400.woff2', 200, 'font/woff2', UNHEX('3337333336316564373536623166653638636532'), NULL, NULL, 'Simply_Static\\Page_Handler', NULL, '2024-10-17 03:54:32', '2024-10-17 03:54:32', '0000-00-00 00:00:00', '2024-10-17 03:54:25', '2024-10-17 03:54:32'),
(139, NULL, NULL, 115, 1, 'http://localhost/wordpress_hehocom/wp-content/themes/oceanwp/assets/fonts/fontawesome/webfonts/fa-brands-400.ttf', NULL, '/wp-content/themes/oceanwp/assets/fonts/fontawesome/webfonts/fa-brands-400.ttf', 200, 'font/ttf', UNHEX('6438623335363865396438613164336330316338'), NULL, NULL, 'Simply_Static\\Page_Handler', NULL, '2024-10-17 03:54:32', '2024-10-17 03:54:32', '0000-00-00 00:00:00', '2024-10-17 03:54:25', '2024-10-17 03:54:32'),
(140, NULL, NULL, 115, 1, 'http://localhost/wordpress_hehocom/wp-content/themes/oceanwp/assets/fonts/fontawesome/webfonts/fa-regular-400.woff2', NULL, '/wp-content/themes/oceanwp/assets/fonts/fontawesome/webfonts/fa-regular-400.woff2', 200, 'font/woff2', UNHEX('3037666330616531346262333138373833393038'), NULL, NULL, 'Simply_Static\\Page_Handler', NULL, '2024-10-17 03:54:32', '2024-10-17 03:54:32', '0000-00-00 00:00:00', '2024-10-17 03:54:25', '2024-10-17 03:54:32'),
(141, NULL, NULL, 115, 1, 'http://localhost/wordpress_hehocom/wp-content/themes/oceanwp/assets/fonts/fontawesome/webfonts/fa-regular-400.ttf', NULL, '/wp-content/themes/oceanwp/assets/fonts/fontawesome/webfonts/fa-regular-400.ttf', 200, 'font/ttf', UNHEX('3264373839306531326166623737343930313132'), NULL, NULL, 'Simply_Static\\Page_Handler', NULL, '2024-10-17 03:54:32', '2024-10-17 03:54:32', '0000-00-00 00:00:00', '2024-10-17 03:54:25', '2024-10-17 03:54:32'),
(142, NULL, NULL, 115, 1, 'http://localhost/wordpress_hehocom/wp-content/themes/oceanwp/assets/fonts/fontawesome/webfonts/fa-solid-900.woff2', NULL, '/wp-content/themes/oceanwp/assets/fonts/fontawesome/webfonts/fa-solid-900.woff2', 200, 'font/woff2', UNHEX('3937663039343263363632376464643839666236'), NULL, NULL, 'Simply_Static\\Page_Handler', NULL, '2024-10-17 03:54:32', '2024-10-17 03:54:32', '0000-00-00 00:00:00', '2024-10-17 03:54:25', '2024-10-17 03:54:32'),
(143, NULL, NULL, 115, 1, 'http://localhost/wordpress_hehocom/wp-content/themes/oceanwp/assets/fonts/fontawesome/webfonts/fa-solid-900.ttf', NULL, '/wp-content/themes/oceanwp/assets/fonts/fontawesome/webfonts/fa-solid-900.ttf', 200, 'font/ttf', UNHEX('6539616365353537633361613430333330376631'), NULL, NULL, 'Simply_Static\\Page_Handler', NULL, '2024-10-17 03:54:32', '2024-10-17 03:54:32', '0000-00-00 00:00:00', '2024-10-17 03:54:25', '2024-10-17 03:54:32'),
(144, NULL, NULL, 115, 1, 'http://localhost/wordpress_hehocom/wp-content/themes/oceanwp/assets/fonts/fontawesome/webfonts/fa-v4compatibility.woff2', NULL, '/wp-content/themes/oceanwp/assets/fonts/fontawesome/webfonts/fa-v4compatibility.woff2', 200, 'font/woff2', UNHEX('3335373934383932666132623461656465343165'), NULL, NULL, 'Simply_Static\\Page_Handler', NULL, '2024-10-17 03:54:32', '2024-10-17 03:54:32', '0000-00-00 00:00:00', '2024-10-17 03:54:25', '2024-10-17 03:54:32'),
(145, NULL, NULL, 115, 1, 'http://localhost/wordpress_hehocom/wp-content/themes/oceanwp/assets/fonts/fontawesome/webfonts/fa-v4compatibility.ttf', NULL, '/wp-content/themes/oceanwp/assets/fonts/fontawesome/webfonts/fa-v4compatibility.ttf', 200, 'font/ttf', UNHEX('3332316438396336356631373436663131313334'), NULL, NULL, 'Simply_Static\\Page_Handler', NULL, '2024-10-17 03:54:32', '2024-10-17 03:54:32', '0000-00-00 00:00:00', '2024-10-17 03:54:25', '2024-10-17 03:54:32'),
(146, NULL, NULL, 116, 1, 'http://localhost/wordpress_hehocom/wp-content/themes/oceanwp/assets/fonts/simple-line-icons/Simple-Line-Icons.eot', NULL, '/wp-content/themes/oceanwp/assets/fonts/simple-line-icons/Simple-Line-Icons.eot', 200, 'application/vnd.ms-fontobject', UNHEX('6163363631383432303262353437386530623630'), NULL, NULL, 'Simply_Static\\Page_Handler', NULL, '2024-10-17 03:54:32', '2024-10-17 03:54:32', '0000-00-00 00:00:00', '2024-10-17 03:54:25', '2024-10-17 03:54:32'),
(147, NULL, NULL, 116, 1, 'http://localhost/wordpress_hehocom/wp-content/themes/oceanwp/assets/fonts/simple-line-icons/Simple-Line-Icons.woff2', NULL, '/wp-content/themes/oceanwp/assets/fonts/simple-line-icons/Simple-Line-Icons.woff2', 200, 'font/woff2', UNHEX('3564613630333130346434643665333632383234'), NULL, NULL, 'Simply_Static\\Page_Handler', NULL, '2024-10-17 03:54:32', '2024-10-17 03:54:32', '0000-00-00 00:00:00', '2024-10-17 03:54:25', '2024-10-17 03:54:32'),
(148, NULL, NULL, 116, 1, 'http://localhost/wordpress_hehocom/wp-content/themes/oceanwp/assets/fonts/simple-line-icons/Simple-Line-Icons.ttf', NULL, '/wp-content/themes/oceanwp/assets/fonts/simple-line-icons/Simple-Line-Icons.ttf', 200, 'font/ttf', UNHEX('3966666238316135613131313132653239326632'), NULL, NULL, 'Simply_Static\\Page_Handler', NULL, '2024-10-17 03:54:32', '2024-10-17 03:54:32', '0000-00-00 00:00:00', '2024-10-17 03:54:25', '2024-10-17 03:54:32'),
(149, NULL, NULL, 116, 1, 'http://localhost/wordpress_hehocom/wp-content/themes/oceanwp/assets/fonts/simple-line-icons/Simple-Line-Icons.woff', NULL, '/wp-content/themes/oceanwp/assets/fonts/simple-line-icons/Simple-Line-Icons.woff', 200, 'font/woff', UNHEX('6464643231313839646537373966313631363334'), NULL, NULL, 'Simply_Static\\Page_Handler', NULL, '2024-10-17 03:54:32', '2024-10-17 03:54:32', '0000-00-00 00:00:00', '2024-10-17 03:54:25', '2024-10-17 03:54:32'),
(150, NULL, NULL, 116, 1, 'http://localhost/wordpress_hehocom/wp-content/themes/oceanwp/assets/fonts/simple-line-icons/Simple-Line-Icons.svg', NULL, '/wp-content/themes/oceanwp/assets/fonts/simple-line-icons/Simple-Line-Icons.svg', 200, 'image/svg+xml', UNHEX('3166333836373138343439643664666435623165'), NULL, NULL, 'Simply_Static\\Page_Handler', NULL, '2024-10-17 03:54:32', '2024-10-17 03:54:32', '0000-00-00 00:00:00', '2024-10-17 03:54:25', '2024-10-17 03:54:32'),
(151, NULL, NULL, 128, 1, 'http://localhost/wordpress_hehocom/author/valentinrndn/feed/', NULL, '/author/valentinrndn/feed/index.xml', 200, 'application/rss+xml; charset=UTF-8', UNHEX('6336376638633636313563346430623038336430'), NULL, NULL, 'Simply_Static\\Page_Handler', NULL, '2024-10-17 03:54:33', '2024-10-17 03:54:33', '0000-00-00 00:00:00', '2024-10-17 03:54:28', '2024-10-17 03:54:33'),
(152, NULL, NULL, 128, 1, 'http://localhost/wordpress_hehocom/wp-json/wp/v2/users/1', NULL, NULL, NULL, NULL, NULL, NULL, 'Do not save or follow', 'Simply_Static\\Page_Handler', NULL, '2024-10-17 03:54:33', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '2024-10-17 03:54:28', '2024-10-17 03:54:33', NULL),
(153, NULL, NULL, 129, 1, 'http://localhost/wordpress_hehocom/category/non-classe/feed/', NULL, '/category/non-classe/feed/index.xml', 200, 'application/rss+xml; charset=UTF-8', UNHEX('3236333366343436653130646239306466653735'), NULL, NULL, 'Simply_Static\\Page_Handler', NULL, '2024-10-17 03:54:33', '2024-10-17 03:54:33', '0000-00-00 00:00:00', '2024-10-17 03:54:31', '2024-10-17 03:54:33'),
(154, NULL, NULL, 129, 1, 'http://localhost/wordpress_hehocom/wp-json/wp/v2/categories/1', NULL, NULL, NULL, NULL, NULL, NULL, 'Do not save or follow', 'Simply_Static\\Page_Handler', NULL, '2024-10-17 03:54:33', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '2024-10-17 03:54:31', '2024-10-17 03:54:33', NULL) ;

#
# Fin du contenu des données de la table `wp_simply_static_pages`
# --------------------------------------------------------



#
# Supprimer toute table existante `wp_term_relationships`
#

DROP TABLE IF EXISTS `wp_term_relationships`;


#
# Structure de la table `wp_term_relationships`
#

CREATE TABLE `wp_term_relationships` (
  `object_id` bigint unsigned NOT NULL DEFAULT '0',
  `term_taxonomy_id` bigint unsigned NOT NULL DEFAULT '0',
  `term_order` int NOT NULL DEFAULT '0',
  PRIMARY KEY (`object_id`,`term_taxonomy_id`),
  KEY `term_taxonomy_id` (`term_taxonomy_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;


#
# Données de la table `wp_term_relationships`
#
INSERT INTO `wp_term_relationships` ( `object_id`, `term_taxonomy_id`, `term_order`) VALUES
(6, 2, 0),
(13, 1, 0),
(16, 1, 0),
(23, 3, 0),
(24, 3, 0),
(25, 1, 0) ;

#
# Fin du contenu des données de la table `wp_term_relationships`
# --------------------------------------------------------



#
# Supprimer toute table existante `wp_term_taxonomy`
#

DROP TABLE IF EXISTS `wp_term_taxonomy`;


#
# Structure de la table `wp_term_taxonomy`
#

CREATE TABLE `wp_term_taxonomy` (
  `term_taxonomy_id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `term_id` bigint unsigned NOT NULL DEFAULT '0',
  `taxonomy` varchar(32) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `description` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `parent` bigint unsigned NOT NULL DEFAULT '0',
  `count` bigint NOT NULL DEFAULT '0',
  PRIMARY KEY (`term_taxonomy_id`),
  UNIQUE KEY `term_id_taxonomy` (`term_id`,`taxonomy`),
  KEY `taxonomy` (`taxonomy`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;


#
# Données de la table `wp_term_taxonomy`
#
INSERT INTO `wp_term_taxonomy` ( `term_taxonomy_id`, `term_id`, `taxonomy`, `description`, `parent`, `count`) VALUES
(1, 1, 'category', '', 0, 3),
(2, 2, 'wp_theme', '', 0, 1),
(3, 3, 'nav_menu', '', 0, 2) ;

#
# Fin du contenu des données de la table `wp_term_taxonomy`
# --------------------------------------------------------



#
# Supprimer toute table existante `wp_termmeta`
#

DROP TABLE IF EXISTS `wp_termmeta`;


#
# Structure de la table `wp_termmeta`
#

CREATE TABLE `wp_termmeta` (
  `meta_id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `term_id` bigint unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci,
  PRIMARY KEY (`meta_id`),
  KEY `term_id` (`term_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;


#
# Données de la table `wp_termmeta`
#

#
# Fin du contenu des données de la table `wp_termmeta`
# --------------------------------------------------------



#
# Supprimer toute table existante `wp_terms`
#

DROP TABLE IF EXISTS `wp_terms`;


#
# Structure de la table `wp_terms`
#

CREATE TABLE `wp_terms` (
  `term_id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `slug` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `term_group` bigint NOT NULL DEFAULT '0',
  PRIMARY KEY (`term_id`),
  KEY `slug` (`slug`(191)),
  KEY `name` (`name`(191))
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;


#
# Données de la table `wp_terms`
#
INSERT INTO `wp_terms` ( `term_id`, `name`, `slug`, `term_group`) VALUES
(1, 'Non classé', 'non-classe', 0),
(2, 'twentytwentyfour', 'twentytwentyfour', 0),
(3, 'principal', 'principal', 0) ;

#
# Fin du contenu des données de la table `wp_terms`
# --------------------------------------------------------



#
# Supprimer toute table existante `wp_usermeta`
#

DROP TABLE IF EXISTS `wp_usermeta`;


#
# Structure de la table `wp_usermeta`
#

CREATE TABLE `wp_usermeta` (
  `umeta_id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci,
  PRIMARY KEY (`umeta_id`),
  KEY `user_id` (`user_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=MyISAM AUTO_INCREMENT=26 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;


#
# Données de la table `wp_usermeta`
#
INSERT INTO `wp_usermeta` ( `umeta_id`, `user_id`, `meta_key`, `meta_value`) VALUES
(1, 1, 'nickname', 'valentinrndn'),
(2, 1, 'first_name', ''),
(3, 1, 'last_name', ''),
(4, 1, 'description', ''),
(5, 1, 'rich_editing', 'true'),
(6, 1, 'syntax_highlighting', 'true'),
(7, 1, 'comment_shortcuts', 'false'),
(8, 1, 'admin_color', 'fresh'),
(9, 1, 'use_ssl', '0'),
(10, 1, 'show_admin_bar_front', 'true'),
(11, 1, 'locale', ''),
(12, 1, 'wp_capabilities', 'a:1:{s:13:"administrator";b:1;}'),
(13, 1, 'wp_user_level', '10'),
(14, 1, 'dismissed_wp_pointers', ''),
(15, 1, 'show_welcome_panel', '1'),
(16, 1, 'session_tokens', 'a:1:{s:64:"78fd3a2747cbbec46efe7097167d84e99678467f528783c7287173dff9954500";a:4:{s:10:"expiration";i:1730305773;s:2:"ip";s:3:"::1";s:2:"ua";s:111:"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36";s:5:"login";i:1729096173;}}'),
(17, 1, 'wp_dashboard_quick_press_last_post_id', '5'),
(18, 1, 'wp_persisted_preferences', 'a:4:{s:4:"core";a:2:{s:26:"isComplementaryAreaVisible";b:1;s:10:"openPanels";a:3:{i:0;s:11:"post-status";i:1;s:23:"taxonomy-panel-category";i:2;s:23:"taxonomy-panel-post_tag";}}s:14:"core/edit-post";a:1:{s:12:"welcomeGuide";b:0;}s:9:"_modified";s:24:"2024-10-16T18:54:29.151Z";s:14:"core/edit-site";a:1:{s:12:"welcomeGuide";b:0;}}'),
(19, 1, 'wp_user-settings', 'libraryContent=browse'),
(20, 1, 'wp_user-settings-time', '1729099161'),
(21, 1, 'managenav-menuscolumnshidden', 'a:5:{i:0;s:11:"link-target";i:1;s:11:"css-classes";i:2;s:3:"xfn";i:3;s:11:"description";i:4;s:15:"title-attribute";}'),
(22, 1, 'metaboxhidden_nav-menus', 'a:2:{i:0;s:12:"add-post_tag";i:1;s:15:"add-post_format";}'),
(24, 1, '_yoast_wpseo_introductions', 'a:1:{s:25:"ai-fix-assessments-upsell";b:1;}'),
(25, 1, '_yoast_wpseo_profile_updated', '1729129483') ;

#
# Fin du contenu des données de la table `wp_usermeta`
# --------------------------------------------------------



#
# Supprimer toute table existante `wp_users`
#

DROP TABLE IF EXISTS `wp_users`;


#
# Structure de la table `wp_users`
#

CREATE TABLE `wp_users` (
  `ID` bigint unsigned NOT NULL AUTO_INCREMENT,
  `user_login` varchar(60) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_pass` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_nicename` varchar(50) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_email` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_url` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_registered` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `user_activation_key` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_status` int NOT NULL DEFAULT '0',
  `display_name` varchar(250) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`ID`),
  KEY `user_login_key` (`user_login`),
  KEY `user_nicename` (`user_nicename`),
  KEY `user_email` (`user_email`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;


#
# Données de la table `wp_users`
#
INSERT INTO `wp_users` ( `ID`, `user_login`, `user_pass`, `user_nicename`, `user_email`, `user_url`, `user_registered`, `user_activation_key`, `user_status`, `display_name`) VALUES
(1, 'valentinrndn', '$P$Bf3oxEj5sAWTHypmCMsdRxmCdkVx7D0', 'valentinrndn', 'valentinrenaudin2206@gmail.com', 'http://localhost/wordpress_hehocom', '2024-10-16 16:29:19', '', 0, 'valentinrndn') ;

#
# Fin du contenu des données de la table `wp_users`
# --------------------------------------------------------



#
# Supprimer toute table existante `wp_yoast_indexable`
#

DROP TABLE IF EXISTS `wp_yoast_indexable`;


#
# Structure de la table `wp_yoast_indexable`
#

CREATE TABLE `wp_yoast_indexable` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `permalink` longtext COLLATE utf8mb4_unicode_520_ci,
  `permalink_hash` varchar(40) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `object_id` bigint DEFAULT NULL,
  `object_type` varchar(32) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `object_sub_type` varchar(32) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `author_id` bigint DEFAULT NULL,
  `post_parent` bigint DEFAULT NULL,
  `title` text COLLATE utf8mb4_unicode_520_ci,
  `description` mediumtext COLLATE utf8mb4_unicode_520_ci,
  `breadcrumb_title` text COLLATE utf8mb4_unicode_520_ci,
  `post_status` varchar(20) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `is_public` tinyint(1) DEFAULT NULL,
  `is_protected` tinyint(1) DEFAULT '0',
  `has_public_posts` tinyint(1) DEFAULT NULL,
  `number_of_pages` int unsigned DEFAULT NULL,
  `canonical` longtext COLLATE utf8mb4_unicode_520_ci,
  `primary_focus_keyword` varchar(191) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `primary_focus_keyword_score` int DEFAULT NULL,
  `readability_score` int DEFAULT NULL,
  `is_cornerstone` tinyint(1) DEFAULT '0',
  `is_robots_noindex` tinyint(1) DEFAULT '0',
  `is_robots_nofollow` tinyint(1) DEFAULT '0',
  `is_robots_noarchive` tinyint(1) DEFAULT '0',
  `is_robots_noimageindex` tinyint(1) DEFAULT '0',
  `is_robots_nosnippet` tinyint(1) DEFAULT '0',
  `twitter_title` text COLLATE utf8mb4_unicode_520_ci,
  `twitter_image` longtext COLLATE utf8mb4_unicode_520_ci,
  `twitter_description` longtext COLLATE utf8mb4_unicode_520_ci,
  `twitter_image_id` varchar(191) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `twitter_image_source` text COLLATE utf8mb4_unicode_520_ci,
  `open_graph_title` text COLLATE utf8mb4_unicode_520_ci,
  `open_graph_description` longtext COLLATE utf8mb4_unicode_520_ci,
  `open_graph_image` longtext COLLATE utf8mb4_unicode_520_ci,
  `open_graph_image_id` varchar(191) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `open_graph_image_source` text COLLATE utf8mb4_unicode_520_ci,
  `open_graph_image_meta` mediumtext COLLATE utf8mb4_unicode_520_ci,
  `link_count` int DEFAULT NULL,
  `incoming_link_count` int DEFAULT NULL,
  `prominent_words_version` int unsigned DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `blog_id` bigint NOT NULL DEFAULT '1',
  `language` varchar(32) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `region` varchar(32) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `schema_page_type` varchar(64) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `schema_article_type` varchar(64) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `has_ancestors` tinyint(1) DEFAULT '0',
  `estimated_reading_time_minutes` int DEFAULT NULL,
  `version` int DEFAULT '1',
  `object_last_modified` datetime DEFAULT NULL,
  `object_published_at` datetime DEFAULT NULL,
  `inclusive_language_score` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `object_type_and_sub_type` (`object_type`,`object_sub_type`),
  KEY `object_id_and_type` (`object_id`,`object_type`),
  KEY `permalink_hash_and_object_type` (`permalink_hash`,`object_type`),
  KEY `subpages` (`post_parent`,`object_type`,`post_status`,`object_id`),
  KEY `prominent_words` (`prominent_words_version`,`object_type`,`object_sub_type`,`post_status`),
  KEY `published_sitemap_index` (`object_published_at`,`is_robots_noindex`,`object_type`,`object_sub_type`)
) ENGINE=MyISAM AUTO_INCREMENT=14 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;


#
# Données de la table `wp_yoast_indexable`
#
INSERT INTO `wp_yoast_indexable` ( `id`, `permalink`, `permalink_hash`, `object_id`, `object_type`, `object_sub_type`, `author_id`, `post_parent`, `title`, `description`, `breadcrumb_title`, `post_status`, `is_public`, `is_protected`, `has_public_posts`, `number_of_pages`, `canonical`, `primary_focus_keyword`, `primary_focus_keyword_score`, `readability_score`, `is_cornerstone`, `is_robots_noindex`, `is_robots_nofollow`, `is_robots_noarchive`, `is_robots_noimageindex`, `is_robots_nosnippet`, `twitter_title`, `twitter_image`, `twitter_description`, `twitter_image_id`, `twitter_image_source`, `open_graph_title`, `open_graph_description`, `open_graph_image`, `open_graph_image_id`, `open_graph_image_source`, `open_graph_image_meta`, `link_count`, `incoming_link_count`, `prominent_words_version`, `created_at`, `updated_at`, `blog_id`, `language`, `region`, `schema_page_type`, `schema_article_type`, `has_ancestors`, `estimated_reading_time_minutes`, `version`, `object_last_modified`, `object_published_at`, `inclusive_language_score`) VALUES
(1, 'http://localhost/wordpress_hehocom/category/non-classe/', '55:97bc319f297b45f4a3ce2531ca17e8c8', 1, 'term', 'category', NULL, NULL, NULL, NULL, 'Non classé', NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, '2024-10-17 01:28:26', '2024-10-17 01:28:27', 1, NULL, NULL, NULL, NULL, 0, NULL, 2, '2024-10-16 18:55:49', '2024-10-16 17:20:22', NULL),
(2, 'http://localhost/wordpress_hehocom/?page_id=3', '45:53670797af10de9c3a15a6b84dd7ef15', 3, 'post', 'page', 1, 0, NULL, NULL, 'Politique de confidentialité', 'draft', 0, 0, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-10-17 01:28:26', '2024-10-17 01:28:26', 1, NULL, NULL, NULL, NULL, 0, NULL, 2, '2024-10-16 16:29:19', '2024-10-16 16:29:19', 0),
(3, 'http://localhost/wordpress_hehocom/author/valentinrndn/', '55:8264ea1656a7c2c06cc6bfd307eefd9f', 1, 'user', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, NULL, 'https://0.gravatar.com/avatar/9700c217bb680f06e7f8ee45e0d21af5?s=500&d=mm&r=g', NULL, NULL, 'gravatar-image', NULL, NULL, 'https://0.gravatar.com/avatar/9700c217bb680f06e7f8ee45e0d21af5?s=500&d=mm&r=g', NULL, 'gravatar-image', NULL, NULL, NULL, NULL, '2024-10-17 01:28:26', '2024-10-17 01:28:26', 1, NULL, NULL, NULL, NULL, 0, NULL, 2, '2024-10-16 18:55:49', '2024-10-16 16:30:21', NULL),
(4, 'http://localhost/wordpress_hehocom/', '35:429a6a7bb621f2063c30b2221ed006f8', 19, 'post', 'page', 1, 0, NULL, NULL, 'Blog', 'publish', NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, '2024-10-17 01:28:26', '2024-10-17 01:28:27', 1, NULL, NULL, NULL, NULL, 0, NULL, 2, '2024-10-16 17:51:42', '2024-10-16 17:51:42', 0),
(5, 'http://localhost/wordpress_hehocom/technique/', '45:70d3bd3e5853c18512d97e9790fb1062', 21, 'post', 'page', 1, 0, NULL, NULL, 'Technique', 'publish', NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, '2024-10-17 01:28:26', '2024-10-17 01:28:27', 1, NULL, NULL, NULL, NULL, 0, NULL, 2, '2024-10-16 17:52:00', '2024-10-16 17:52:00', 0),
(6, 'http://localhost/wordpress_hehocom/?page_id=2', '45:4a74f8291393a29efcafaaa57d8aef17', 2, 'post', 'page', 1, 0, NULL, NULL, 'Je suis un test', 'trash', 0, 0, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-10-17 01:28:26', '2024-10-17 01:28:26', 1, NULL, NULL, NULL, NULL, 0, NULL, 2, '2024-10-16 16:53:05', '2024-10-16 16:29:19', 0),
(7, 'http://localhost/wordpress_hehocom/2024/10/16/mes-suspensions-parfumees-de-noel/', '80:339e238c9120e2d6f3c1dbfd623f7bf4', 13, 'post', 'post', 1, 0, NULL, NULL, 'Mes suspensions parfumées de Noël', 'publish', NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, NULL, 'http://localhost/wordpress_hehocom/wp-content/uploads/2024/10/blog2.jpg', NULL, '14', 'featured-image', NULL, NULL, 'http://localhost/wordpress_hehocom/wp-content/uploads/2024/10/blog2.jpg', '14', 'featured-image', '{"width":600,"height":500,"filesize":295993,"url":"http:\\/\\/localhost\\/wordpress_hehocom\\/wp-content\\/uploads\\/2024\\/10\\/blog2.jpg","path":"C:\\\\wamp64\\\\www\\\\wordpress_hehocom\\/wp-content\\/uploads\\/2024\\/10\\/blog2.jpg","size":"full","id":14,"alt":"","pixels":300000,"type":"image\\/jpeg"}', 0, NULL, NULL, '2024-10-17 01:28:26', '2024-10-17 01:28:27', 1, NULL, NULL, NULL, NULL, 0, NULL, 2, '2024-10-16 17:20:22', '2024-10-16 17:20:22', 0),
(8, 'http://localhost/wordpress_hehocom/2024/10/16/tout-savoir-sur-le-myristate-disopropyle-mip/', '91:8393081ba6bd134d7f990cd5ab441f5a', 16, 'post', 'post', 1, 0, NULL, NULL, 'Tout savoir sur le Myristate d&rsquo;Isopropyle (MIP)', 'publish', NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, NULL, 'http://localhost/wordpress_hehocom/wp-content/uploads/2024/10/blog3.jpg', NULL, '17', 'featured-image', NULL, NULL, 'http://localhost/wordpress_hehocom/wp-content/uploads/2024/10/blog3.jpg', '17', 'featured-image', '{"width":600,"height":500,"filesize":112987,"url":"http:\\/\\/localhost\\/wordpress_hehocom\\/wp-content\\/uploads\\/2024\\/10\\/blog3.jpg","path":"C:\\\\wamp64\\\\www\\\\wordpress_hehocom\\/wp-content\\/uploads\\/2024\\/10\\/blog3.jpg","size":"full","id":17,"alt":"Photo myristate d\'Isopropyle","pixels":300000,"type":"image\\/jpeg"}', 0, NULL, NULL, '2024-10-17 01:28:26', '2024-10-17 01:28:27', 1, NULL, NULL, NULL, NULL, 0, NULL, 2, '2024-10-16 17:21:23', '2024-10-16 17:21:23', 0),
(9, 'http://localhost/wordpress_hehocom/2024/10/16/creez-votre-bougie-automnale-en-degrade-de-couleurs/', '98:9fb1a828e0a76806c7bbec233dc0ad4f', 25, 'post', 'post', 1, 0, NULL, NULL, 'Créez votre bougie automnale en dégradé de couleurs', 'publish', NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, NULL, 'http://localhost/wordpress_hehocom/wp-content/uploads/2024/10/blog1.jpg', NULL, '10', 'featured-image', NULL, NULL, 'http://localhost/wordpress_hehocom/wp-content/uploads/2024/10/blog1.jpg', '10', 'featured-image', '{"width":1920,"height":560,"filesize":791143,"url":"http:\\/\\/localhost\\/wordpress_hehocom\\/wp-content\\/uploads\\/2024\\/10\\/blog1.jpg","path":"C:\\\\wamp64\\\\www\\\\wordpress_hehocom\\/wp-content\\/uploads\\/2024\\/10\\/blog1.jpg","size":"full","id":10,"alt":"Photo blog bougie","pixels":1075200,"type":"image\\/jpeg"}', 0, NULL, NULL, '2024-10-17 01:28:26', '2024-10-17 01:28:27', 1, NULL, NULL, NULL, NULL, 0, NULL, 2, '2024-10-16 18:55:49', '2024-10-16 18:55:49', 0),
(10, NULL, NULL, NULL, 'system-page', '404', NULL, NULL, 'Page non trouvée %%sep%% %%sitename%%', NULL, 'Erreur 404 : Page introuvable', NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 0, 1, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-10-17 01:28:26', '2024-10-17 01:28:26', 1, NULL, NULL, NULL, NULL, 0, NULL, 1, NULL, NULL, NULL),
(11, NULL, NULL, NULL, 'system-page', 'search-result', NULL, NULL, 'Vous avez cherché %%searchphrase%% %%page%% %%sep%% %%sitename%%', NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 0, 1, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-10-17 01:28:26', '2024-10-17 01:28:26', 1, NULL, NULL, NULL, NULL, 0, NULL, 1, NULL, NULL, NULL),
(12, NULL, NULL, NULL, 'date-archive', NULL, NULL, NULL, '%%date%% %%page%% %%sep%% %%sitename%%', '', NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, 0, 1, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-10-17 01:28:26', '2024-10-17 01:28:26', 1, NULL, NULL, NULL, NULL, 0, NULL, 1, NULL, NULL, NULL),
(13, 'http://localhost/wordpress_hehocom/', '35:429a6a7bb621f2063c30b2221ed006f8', NULL, 'home-page', NULL, NULL, NULL, '%%sitename%% %%page%% %%sep%% %%sitedesc%%', '', 'Accueil', NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, '%%sitename%%', '', '', '0', NULL, NULL, NULL, NULL, NULL, '2024-10-17 01:30:20', '2024-10-17 01:30:20', 1, NULL, NULL, NULL, NULL, 0, NULL, 2, '2024-10-16 18:55:49', '2024-10-16 17:20:22', NULL) ;

#
# Fin du contenu des données de la table `wp_yoast_indexable`
# --------------------------------------------------------



#
# Supprimer toute table existante `wp_yoast_indexable_hierarchy`
#

DROP TABLE IF EXISTS `wp_yoast_indexable_hierarchy`;


#
# Structure de la table `wp_yoast_indexable_hierarchy`
#

CREATE TABLE `wp_yoast_indexable_hierarchy` (
  `indexable_id` int unsigned NOT NULL,
  `ancestor_id` int unsigned NOT NULL,
  `depth` int unsigned DEFAULT NULL,
  `blog_id` bigint NOT NULL DEFAULT '1',
  PRIMARY KEY (`indexable_id`,`ancestor_id`),
  KEY `indexable_id` (`indexable_id`),
  KEY `ancestor_id` (`ancestor_id`),
  KEY `depth` (`depth`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;


#
# Données de la table `wp_yoast_indexable_hierarchy`
#
INSERT INTO `wp_yoast_indexable_hierarchy` ( `indexable_id`, `ancestor_id`, `depth`, `blog_id`) VALUES
(1, 0, 0, 1),
(2, 0, 0, 1),
(3, 0, 0, 1),
(4, 0, 0, 1),
(5, 0, 0, 1),
(6, 0, 0, 1),
(7, 0, 0, 1),
(8, 0, 0, 1),
(9, 0, 0, 1) ;

#
# Fin du contenu des données de la table `wp_yoast_indexable_hierarchy`
# --------------------------------------------------------



#
# Supprimer toute table existante `wp_yoast_migrations`
#

DROP TABLE IF EXISTS `wp_yoast_migrations`;


#
# Structure de la table `wp_yoast_migrations`
#

CREATE TABLE `wp_yoast_migrations` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `version` varchar(191) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `wp_yoast_migrations_version` (`version`)
) ENGINE=MyISAM AUTO_INCREMENT=25 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;


#
# Données de la table `wp_yoast_migrations`
#
INSERT INTO `wp_yoast_migrations` ( `id`, `version`) VALUES
(1, '20171228151840'),
(2, '20171228151841'),
(3, '20190529075038'),
(4, '20191011111109'),
(5, '20200408101900'),
(6, '20200420073606'),
(7, '20200428123747'),
(8, '20200428194858'),
(9, '20200429105310'),
(10, '20200430075614'),
(11, '20200430150130'),
(12, '20200507054848'),
(13, '20200513133401'),
(14, '20200609154515'),
(15, '20200616130143'),
(16, '20200617122511'),
(17, '20200702141921'),
(18, '20200728095334'),
(19, '20201202144329'),
(20, '20201216124002'),
(21, '20201216141134'),
(22, '20210817092415'),
(23, '20211020091404'),
(24, '20230417083836') ;

#
# Fin du contenu des données de la table `wp_yoast_migrations`
# --------------------------------------------------------



#
# Supprimer toute table existante `wp_yoast_primary_term`
#

DROP TABLE IF EXISTS `wp_yoast_primary_term`;


#
# Structure de la table `wp_yoast_primary_term`
#

CREATE TABLE `wp_yoast_primary_term` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `post_id` bigint DEFAULT NULL,
  `term_id` bigint DEFAULT NULL,
  `taxonomy` varchar(32) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `blog_id` bigint NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`),
  KEY `post_taxonomy` (`post_id`,`taxonomy`),
  KEY `post_term` (`post_id`,`term_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;


#
# Données de la table `wp_yoast_primary_term`
#

#
# Fin du contenu des données de la table `wp_yoast_primary_term`
# --------------------------------------------------------



#
# Supprimer toute table existante `wp_yoast_seo_links`
#

DROP TABLE IF EXISTS `wp_yoast_seo_links`;


#
# Structure de la table `wp_yoast_seo_links`
#

CREATE TABLE `wp_yoast_seo_links` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `url` varchar(255) DEFAULT NULL,
  `post_id` bigint unsigned DEFAULT NULL,
  `target_post_id` bigint unsigned DEFAULT NULL,
  `type` varchar(8) DEFAULT NULL,
  `indexable_id` int unsigned DEFAULT NULL,
  `target_indexable_id` int unsigned DEFAULT NULL,
  `height` int unsigned DEFAULT NULL,
  `width` int unsigned DEFAULT NULL,
  `size` int unsigned DEFAULT NULL,
  `language` varchar(32) DEFAULT NULL,
  `region` varchar(32) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `link_direction` (`post_id`,`type`),
  KEY `indexable_link_direction` (`indexable_id`,`type`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3;


#
# Données de la table `wp_yoast_seo_links`
#

#
# Fin du contenu des données de la table `wp_yoast_seo_links`
# --------------------------------------------------------

#
# Add constraints back in and apply any alter data queries.
#

