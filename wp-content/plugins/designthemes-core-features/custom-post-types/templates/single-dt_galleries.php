<?php get_header();

	while(have_posts()): the_post();
	
	  //GETTING META VALUES...
	  $meta_set = get_post_meta($post->ID, '_gallery_settings', true);
	  $page_layout = !empty($meta_set['layout']) ? $meta_set['layout'] : 'single-gallery-layout-one';
	
	  //BREADCRUMP...
	  if(dt_theme_option('general', 'disable-breadcrumb') != "on"): ?>
          <!-- breadcrumb starts here -->
          <section class="breadcrumb-wrapper">
              <div class="container">
                  <h1><?php the_title(); ?></h1>
                  <?php new dt_theme_breadcrumb; ?>
              </div>                      
          </section>
          <!-- breadcrumb ends here --><?php
	  endif; ?>

	  <!-- content starts here -->
	  <div class="content">
          <div class="container">
              <section class="content-full-width" id="primary">
                  <article id="post-<?php the_ID(); ?>" <?php post_class(); ?>><?php
				  
					//CHECKING LAYOUTs...
                	if($page_layout == "single-gallery-layout-one"):
						include(dirname(__FILE__).'/inc/gallery-single-layout-one.php');
					else:
						include(dirname(__FILE__).'/inc/gallery-single-layout-two.php');
					endif;
					
					if(isset($meta_set['show-related-items']) != ""):
					
						$design_type = dt_theme_option('specialty', 'archives-gallery-design');
						$feature_image = 'gallery-fourcol';
						
						//POST DESIGN CHECK...
						if($design_type != "default") {
							$feature_image = "gallery-with-shape";
						}
						else {
							$design_type = "default no-space";
						}
						
						//FOR RELATED PROJECTS...
						$args = array('orderby' =>	'rand', 'post_type' => 'dt_galleries', 'post__not_in' => array(get_the_ID()), 'posts_per_page' => 4);
						
						$the_query = new WP_Query($args);
						if($the_query->have_posts()): ?>
                        
                        <div class="margin40"></div>
                        <div class='hr-title'><h4><?php _e('Recent Gallery', 'dt_themes'); ?></h4><div class='title-sep'><span></span></div></div>
	                        <div class="margin10"></div>
                            <div class="gallery-container"><?php
								while($the_query->have_posts()): $the_query->the_post(); ?>
                                    <div class="<?php echo $design_type; ?> gallery dt-sc-one-fourth column">
                                      <figure class="gallery-thumb <?php echo $design_type; ?>"><?php
										if($design_type != 'default no-space'): ?>
											<img class="item-mask" alt="mask" src="<?php echo get_template_directory_uri(); ?>/skins/<?php echo dt_theme_option('appearance','skin'); ?>/images/<?php echo $design_type; ?>.png" /><?php
										endif;
									  
                                        $fullimg = wp_get_attachment_image_src(get_post_thumbnail_id($post->ID), 'full', false);
                                        $currenturl = $fullimg[0];
                                        $currenticon = "fa-search";
                                        $pmeta_set = get_post_meta($post->ID, '_gallery_settings', true);
                                        if( @array_key_exists('items_thumbnail', $pmeta_set) && ($pmeta_set ['items_name'] [0] == 'video' )) {
                                            $currenturl = $pmeta_set ['items'] [0];
                                            $currenticon = "fa-video-camera";
                                        }
                                        //GALLERY IMAGES...
                                        if(has_post_thumbnail()):
                                            $attr = array('title' => get_the_title(), 'alt' => get_the_title());
                                            the_post_thumbnail($feature_image, $attr); 
                                        else: ?>
                                            <img src="http://placehold.it/940X470.jpg&text=No Image" alt="<?php the_title(); ?>" title="<?php the_title(); ?>" /><?php
                                        endif; ?>
                                        <div class="image-overlay">
                                            <a class="link" href="<?php the_permalink(); ?>"> <span class="fa fa-eye"> </span> </a>                
                                            <a class="zoom" title="<?php the_title(); ?>" data-gal="prettyPhoto[gallery]" href="<?php echo $currenturl; ?>"><span class="fa <?php echo $currenticon; ?>"> </span></a>
                                        </div>                        
                                      </figure>
                                      <div class="gallery-detail">
                                        <div class="gallery-title">
                                            <h4><a href="<?php the_permalink(); ?>"><?php the_title(); ?></a></h4>
                                            <p><?php echo get_the_term_list($post->ID, 'gallery_entries', ' ', ', ', ' '); ?></p>
                                        </div>
                                      </div>
                                    </div><?php
								endwhile; ?>
                            </div><?php
						endif;	
				    endif; ?>
                  </article>
              </section>
          </div>
      </div>
      <!-- content ends here -->      
	<?php endwhile; ?>

<?php get_footer(); ?>