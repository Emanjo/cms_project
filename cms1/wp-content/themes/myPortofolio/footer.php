<footer>
  <div class="container footer">
    <?php
      $custom_logo_id = get_theme_mod( 'custom_logo' );
      $logo = wp_get_attachment_image_src( $custom_logo_id , 'full' );
      if ( has_custom_logo() ) {
              echo '<a href="' . home_url() . '"><img class="footer-logo" src="'. esc_url( $logo[0] ) .'" alt="logo of the site (EAJ)"></a>';
      } else {
              echo '<h1>'. get_bloginfo( 'name' ) .'</h1>';
      }
    ?>

    <div>
      <p>2018 &copy; Emil André Johannessen</p>
      <?php echo do_shortcode('[DISPLAY_ULTIMATE_SOCIAL_ICONS]'); ?>
    </div>

    <?php
      $defaultsSecondary = array(
        'container' => false,
        'theme_location' => 'secondary',
      );
    ?>

    <div class="footer-ul">
      <?php
        wp_nav_menu( $defaultsSecondary );
      ?>
    </div>

  </div>

  <?php wp_footer(); ?>
  
</footer>

</body>

</html>
