<?php
/* 
	Template Name: Events Template
*/
	get_header();

	while(have_posts()): the_post();
		
	  //GETTING META VALUES...
	  $page_layout = "";
	  
	  if(is_tax('tribe_events_cat')) $page_layout = dt_theme_option('events', 'event-category-layout');
		
	  elseif(in_array('events-single', get_body_class())) $page_layout = dt_theme_option('events', 'event-detail-layout');
		
	  elseif(in_array('events-archive', get_body_class())) $page_layout = dt_theme_option('events', 'event-archive-layout');
		
	  else $page_layout = dt_theme_option('events', 'event-archive-layout');
		
	  //BREADCRUMP...
	  if(!is_front_page() and !is_home()):
		  if(dt_theme_option('general', 'disable-breadcrumb') != "on"): ?>
			  <!-- breadcrumb starts here -->
			  <section class="breadcrumb-wrapper">
				  <div class="container">
					  <h1><?php
					  if(in_array('events-archive', get_body_class()))
					  	echo __('Events', 'iamd_text_domain');
						
					  elseif(in_array('events-single', get_body_class()))
					  	echo __('Event Details', 'iamd_text_domain'); ?></h1>
					  <?php new dt_theme_breadcrumb; ?>
				  </div>
			  </section>
			  <!-- breadcrumb ends here --><?php
		  endif;
	  endif; ?>
      
	  <!-- content starts here -->
	  <div class="content">
          <div class="container">
              <section class="<?php echo $page_layout; ?>" id="primary">
                  <article id="post-<?php the_ID(); ?>" <?php post_class(); ?>><?php
                      //PAGE TOP CODE...
                      the_content();
                      wp_link_pages(array('before' => '<div class="page-link"><strong>'.__('Pages:', 'iamd_text_domain').'</strong> ', 'after' => '</div>', 'next_or_number' => 'number'));
                      edit_post_link(__('Edit', 'iamd_text_domain'), '<span class="edit-link">', '</span>' ); ?>
                  </article>
              </section>
              <?php if($page_layout != 'content-full-width' && $page_layout == 'with-left-sidebar'): ?>
                  <section class="left-sidebar" id="secondary"><?php get_sidebar(); ?></section>
              <?php elseif($page_layout != 'content-full-width' && $page_layout == 'with-right-sidebar'): ?>    
                  <section id="secondary"><?php get_sidebar(); ?></section>
              <?php endif;
        endwhile; ?>        	
          </div>
      </div>
      <!-- content ends here -->

<?php get_footer(); ?>