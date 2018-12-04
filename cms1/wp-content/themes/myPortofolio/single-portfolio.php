<?php get_header(); ?>
<main>
      <div class="container">
        <div class="single-post">
          <?php if ( have_posts() ) : while ( have_posts() ) : the_post(); ?>
            <?php if ( has_post_thumbnail() ) : ?>
              <img src="<?php the_post_thumbnail_url(); ?>" title="<?php the_title_attribute(); ?>">
            <?php endif; ?>
          <h1><?php the_title(); ?></h1>
          <small><?php the_time('F j, Y'); ?> at <?php the_time('G:i'); ?></small>
            <?php the_content(); ?>
        <?php endwhile;  endif; ?>
        </div>
      </div>
    </main>
    <?php get_footer(); ?>
