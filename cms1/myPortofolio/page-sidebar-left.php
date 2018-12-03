<?php
/*
  Template Name: Sidebar Left
*/
?>
<?php get_header(); ?>
    <main>
      <div class="container">
        <div class="sidebar-container">
          <div class="sidebar">
            <?php if( !dynamic_sidebar('sidebar') ): ?>
              <div class="warning">
                <p>You need to add a widget to sidebar "Sidebar"</p>
              </div>
              <?php endif; ?>
          </div>
          <div class="single-post single-post-item">
            <?php if ( have_posts() ) : while ( have_posts() ) : the_post(); ?>
            <h1><?php the_title(); ?></h1>
              <?php the_content(); ?>
            <?php endwhile;  endif; ?>
          </div>
        </div>
      </div>
    </main>
<?php get_footer(); ?>
