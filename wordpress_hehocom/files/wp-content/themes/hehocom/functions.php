<?php
function hehocom_styles() {
    // Charger le style du thème parent
    wp_enqueue_style( 'parent-style', get_template_directory_uri() . '/style.css' );

    // Charger le style du thème enfant
    wp_enqueue_style( 'child-style', get_stylesheet_directory_uri() . '/style.css', array('parent-style'));
}
add_action( 'wp_enqueue_scripts', 'hehocom_styles' );



function register_my_menu() {
    register_nav_menu('menu-principal', __( 'Menu Principal' ));
}
add_action( 'init', 'register_my_menu' );



function hehocom_enqueue_styles() {
    // Charger Google Fonts avec plusieurs familles
    wp_enqueue_style( 'google-fonts', 'https://fonts.googleapis.com/css2?family=Balthazar&family=Work+Sans:wght@100;400;900&display=swap', false );
}
add_action( 'wp_enqueue_scripts', 'hehocom_enqueue_styles' );
