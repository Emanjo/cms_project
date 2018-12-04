<?php get_header(); ?>
<main>
  <div class="intro intro-desktop">
    <?php if( !dynamic_sidebar('home-pic') ): ?>
          <div class="warning">
            <p>You need to add a widget to sidebar "Profile picture". It is important that is is an image or else this will not work properly</p>
          </div>
      <?php endif; ?>
    <h1><?php bloginfo( 'name' ); ?></h1>
    <p><?php bloginfo( 'description' ); ?></p>
    </div>
  <div class="padding-intro-bottom"></div>
  <div class="container">
    <h1>Latest posts</h1>
    <div class="latest-posts">
        <?php $latest_blog_posts = new WP_Query( array( 'posts_per_page' => 3 ) );
        if ( $latest_blog_posts->have_posts() ) : while ( $latest_blog_posts->have_posts() ) : $latest_blog_posts->the_post();?>
          <div class="post">
            <?php if ( has_post_thumbnail() ) : ?>
              <a href="<?php the_permalink(); ?>" title="<?php the_title_attribute(); ?>"> <img class="post-pic" src="<?php the_post_thumbnail_url(); ?>"></a>
              <h1><?php the_title(); ?></h1>
              <?php the_excerpt(); ?>
              <a class="buttonlink-down" href="<?php the_permalink(); ?>"> <button type="button" name="button" class="post-button">Read more</button> </a>
            <?php endif; ?>
          </div>
        <?php endwhile; endif; ?>
    </div>
  </div>
  <div class="portfolio-items-container">
  <h1>Portfolio</h1>
  <div class="latest-posts portfolio">
    <?php
    $args = array('post_type' => 'portfolio', 'orderby' => 'name');
    $loop = new WP_Query( $args );

    if( $loop->have_posts() ):  while( $loop->have_posts() ): $loop->the_post();?>
        <div class="post">
          <?php if ( has_post_thumbnail() ) : ?>
          <a href="<?php the_permalink(); ?>" title="<?php the_title_attribute(); ?>"> <img class="post-pic" src="<?php the_post_thumbnail_url(); ?>"></a>
          <h1><?php the_title(); ?></h1>
          <?php the_excerpt(); ?>
          <?php endif; ?>
        </div>
      <?php endwhile; endif;?>
  </div>
  </div>
</main>
<?php get_footer(); ?>
