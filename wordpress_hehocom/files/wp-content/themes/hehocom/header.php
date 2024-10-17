<!DOCTYPE html>
<html <?php language_attributes(); ?>>
<head>
    <meta charset="<?php bloginfo( 'charset' ); ?>">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title><?php bloginfo( 'name' ); ?></title>
    <?php wp_head(); ?>
</head>
<body <?php body_class(); ?>>
    <header class="site-header">
        <div class="container">
            <div class="logo">
                <a href="<?php echo esc_url( home_url( '/' ) ); ?>">
                    <img src="<?php echo get_stylesheet_directory_uri(); ?>/assets/img/logo.png" alt="Logo">
                </a>
            </div>
            <nav class="main-navigation">
                <?php
                wp_nav_menu( array(
                    'theme_location' => 'menu-principal',
                    'menu_class'     => 'nav-menu',
                ) );
                ?>
            </nav>
        </div>
    </header>
