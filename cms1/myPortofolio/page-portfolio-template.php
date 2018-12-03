<?php
/*
  Template Name: Portfolio Template
*/
?>
<?php get_header(); ?>
<main>
  <div class="container">
    <h1>Portfolio</h1>
    <div class="latest-posts portfolio">
      <?php
      $args = array('post_type' => 'portfolio', 'orderby' => 'date');
      $loop = new WP_Query( $args );

      if( $loop->have_posts() ):  while( $loop->have_posts() ): $loop->the_post();?>
          <div class="post">
            <?php if ( has_post_thumbnail() ) : ?>
            <a href="<?php the_permalink(); ?>" title="<?php the_title_attribute(); ?>"> <img class="post-pic" src="<?php the_post_thumbnail_url(); ?>"></a>
            <h1><?php the_title(); ?></h1>
            <?php the_excerpt(); ?>
            <a class="buttonlink-down" href="<?php the_permalink(); ?>"> <button type="button" name="button" class="post-button">Read more</button> </a>
            <?php endif; ?>
          </div>
        <?php endwhile; endif;?>
    </div>
  </div>
</main>
<?php get_footer(); ?>
