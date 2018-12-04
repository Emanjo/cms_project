<?php

  function myPortofolio_script_enqueue() {
    wp_enqueue_style('resetStyle', get_template_directory_uri() . '/css/normalize.css', array(), '1.0.0', 'all');
    wp_enqueue_style('fontStyle',  'http://fonts.googleapis.com/css?family=Open+Sans:300italic,400italic,700italic,400,700,300', false);
    wp_enqueue_style('mainStyle', get_template_directory_uri() . '/css/main.css', array(), '1.0.0', 'all');
  }

  add_action('wp_enqueue_scripts', 'myPortofolio_script_enqueue');

  function myPortofolio_theme_setup() {
    add_theme_support('menus');
     add_theme_support('post-thumbnails');
    register_nav_menu('primary', 'menu for header');
    register_nav_menu('secondary', 'menu for footer');
  }

  add_action('init','myPortofolio_theme_setup');

  function themeslug_filter_front_page_template( $template ) {
    return is_home() ? '' : $template;
  }

  add_filter( 'frontpage_template', 'themeslug_filter_front_page_template' );

  function custom_logo_setup() {

  $defaults = array(
      'height'      => 65,
      'width'       => 100,
      'flex-height' => true,
      'flex-width'  => true,
      'header-text' => array( 'site-title', 'site-description' ),
  );
  add_theme_support( 'custom-logo', $defaults );
  }

  add_action( 'after_setup_theme', 'custom_logo_setup' );

  function wpt_create_profile_picture( $name, $id, $description ) {

  	register_sidebar(array(
  		'name' => __( $name ),
  		'id' => $id,
  		'description' => __( $description ),
  		'before_widget' => '<div class="profile-picture">',
  		'after_widget' => '</div>',
  		'before_title' => '',
  		'after_title' => ''
  	));

  }

  wpt_create_profile_picture( 'Profile picture', 'home-pic', 'The profile-picture used on the front-page' );

  function wpt_create_sidebar( $name, $id, $description ) {

  	register_sidebar(array(
  		'name' => __( $name ),
  		'id' => $id,
  		'description' => __( $description ),
  		'before_widget' => '<div class="widget">',
  		'after_widget' => '</div>',
  		'before_title' => '<h1>',
  		'after_title' => '</h1>'
  	));

  }

  wpt_create_sidebar( 'Sidebar', 'sidebar', 'The sidebar of the sidebar templates' );

  function myPortfolio_custom_post_type() {
    $labels = array(
      'name' => 'Portfolio',
      'singular_name' => 'Portfolio',
      'add_new' => 'Add Item',
      'all_items' => 'All Items',
      'add_new_item' => 'Add Item',
      'edit_item' => 'Edit Item',
      'new_item' => 'New Item',
      'view_item' => 'View Item',
      'search_item' => 'Search Portfolio',
      'not_found' => 'Portfolio item not found!',
      'not_found_in_trash' => 'No portfolio item found in trash!',
      'parent_item_colon' => 'Parent Item'
    );

    $args = array(
      'labels' => $labels,
      'public' => true,
      'has_archive' => false,
      'publicly_queryable' => true,
      'query_var' => true,
      'rewrite' => true,
      'capability_type' => 'post',
      'hierarchical' => false,
      'supports' => array (
        'title',
        'editor',
        'excerpt',
        'thumbnail',
        'revisions'
      ),
      'taxonomies' => array('category','post_tag'),
      'menu_position' => 5,
      'exclude_from_search' => false
    );

    register_post_type('portfolio', $args);
  }

  add_action('init','myPortfolio_custom_post_type');


?>
