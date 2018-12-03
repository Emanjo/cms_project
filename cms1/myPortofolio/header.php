<!DOCTYPE html>
<html lang="en" dir="ltr">

<head>
  <meta charset="utf-8">
  <title><?php wp_title(); ?></title>
  <?php wp_head(); ?>
</head>

<body>
  <header>
    <div class="container container-header">
      <?php
          $custom_logo_id = get_theme_mod( 'custom_logo' );
          $logo = wp_get_attachment_image_src( $custom_logo_id , 'full' );
          if ( has_custom_logo() ) {
                  echo '<a href="' . home_url() . '"><img class="header-logo" src="'. esc_url( $logo[0] ) .'" alt="logo of the site (EAJ)"></a>';
          } else {
                  echo '<h1>'. get_bloginfo( 'name' ) .'</h1>';
          }
          ?>
      <nav>
        <?php
          $defaultsPrimary = array(
            'container' => false,
            'theme_location' => 'primary',
          );

          wp_nav_menu( $defaultsPrimary );

         ?>
      </nav>
      <div class="intro intro-mobile">
        <?php if( !dynamic_sidebar('home-pic') ): ?>
                    <p>You need to add a widget to sidebar "Profile picture"</p>
                  <?php endif; ?>
        <h1><?php bloginfo( 'name' ) ?></h1>
        <p><?php bloginfo( 'description' ) ?></p>
      </div>
    </div>
  </header>
