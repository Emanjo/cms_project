<?php get_header(); ?>
<main>
  <div class="container">
    <h1>Blog</h1>
    <div class="latest-posts">
      <?php if( have_posts() ):  while( have_posts() ): the_post();?>
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
