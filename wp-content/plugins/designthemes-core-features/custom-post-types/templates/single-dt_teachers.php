<?php get_header();

	while(have_posts()): the_post();
		
	  //GETTING META VALUES...
	  $meta_set = get_post_meta($post->ID, '_teacher_settings', true);
	  $page_layout = !empty($meta_set['layout']) ? $meta_set['layout'] : 'content-full-width';
	  
	  //BREADCRUMP...
	  if(!is_front_page() and !is_home()):
		  if(dt_theme_option('general', 'disable-breadcrumb') != "on"): ?>
			  <!-- breadcrumb starts here -->
			  <section class="breadcrumb-wrapper">
				  <div class="container">
					  <h1><?php the_title(); ?></h1>
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
                  <article id="post-<?php the_ID(); ?>" <?php post_class(); ?>>
				  	  <div class="hr-title"><?php the_title('<h2>'.__('About: ', 'dt_themes'), '</h2>');?><div class="title-sep"><span></span></div></div>
					  
                      <div class="column dt-sc-one-fourth first">
                          <div class="team-thumb"><?php
						  	  $teacher_meta = get_post_meta ( $post->ID, '_teacher_settings', TRUE );
							  
							  if(has_post_thumbnail()):
								$attr = array('title' => get_the_title()); the_post_thumbnail('full', $attr);
							  endif;
							  
                              if(function_exists('the_ratings')) { the_ratings(); }

							  $surls = array_key_exists("social-link", $teacher_meta) ?  $teacher_meta['social-link'] : '';
							  $sicon = array_key_exists("social-icon", $teacher_meta) ?  $teacher_meta['social-icon'] : '';
							  if(is_array($surls)): ?>
                                  <div class="dt-sc-social-icons">
                                    <ul><?php
                                        foreach($surls as $key => $u):
                                            echo '<li><a class="fa '.$sicon[$key].'" href="'.$u.'" title="'.ucfirst(substr($sicon[$key], 3)).'"></a></li>';
                                        endforeach; ?>
                                    </ul>
                                  </div><?php
							  endif; ?>	  
						  </div>
                      </div>
                      <div class="column dt-sc-three-fourth">
                          <ul class="dt-sc-fancy-list rounded-arrow"><?php
							  if(array_key_exists("role", $teacher_meta)): ?>
	                              <li><strong><?php _e('Role', 'dt_themes'); ?> : </strong><?php echo $teacher_meta['role']; ?></li><?php
							  endif;
							  if(array_key_exists("url", $teacher_meta)): ?>
	                              <li><strong><?php _e('Website', 'dt_themes'); ?> : </strong><a href="<?php echo $teacher_meta['url']; ?>"><?php echo $teacher_meta['url']; ?></a></li><?php
							  endif;
							  if(array_key_exists("exp", $teacher_meta)): ?>
	                              <li><strong><?php _e('Experience', 'dt_themes'); ?> : </strong><?php echo $teacher_meta['exp']; ?></li><?php
							  endif;
							  if(array_key_exists("course", $teacher_meta)): ?>
	                              <li><strong><?php _e('Courses Submitted', 'dt_themes'); ?> : </strong><?php echo $teacher_meta['course']; ?></li><?php
							  endif;
							  if(array_key_exists("special", $teacher_meta)): ?>
	                              <li><strong><?php _e('Specialist in', 'dt_themes'); ?> : </strong><?php echo $teacher_meta['special']; ?></li><?php
							  endif; ?>
                          </ul><?php
	                      the_content();
    	                  wp_link_pages(array('before' => '<div class="page-link"><strong>'.__('Pages:', 'dt_themes').'</strong> ', 'after' => '</div>', 'next_or_number' => 'number'));
        	              edit_post_link(__('Edit', 'dt_themes'), '<span class="edit-link">', '</span>' );
						  if(dt_theme_option('general', 'disable-teacher-comment') != true && (isset($meta_set['comment']) != "")) { comments_template('', true); } ?>
                      </div>
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