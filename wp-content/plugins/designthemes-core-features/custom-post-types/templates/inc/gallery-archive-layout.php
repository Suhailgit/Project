<?php
	//PERFORMING GALLERY POST LAYOUT...
	$page_layout = dt_theme_option('specialty', 'archives-layout');
	$page_layout = !empty($page_layout) ? $page_layout : 'with-left-sidebar';
	
	$post_layout = dt_theme_option('specialty', 'archives-post-layout');
	$post_layout = !empty($post_layout) ? $post_layout : 'one-half-column';
	
	$design_type = dt_theme_option('specialty', 'archives-gallery-design');
	$design_type = !empty($design_type) ? $design_type : 'default';
	
	$li_class = "";
	$feature_image = "";
	
	//POST LAYOUT CHECK...
	if($post_layout == "one-half-column") {
		$li_class = "gallery dt-sc-one-half column";
		$feature_image = "gallery-twocol";
	}
	elseif($post_layout == "one-third-column") {
		$li_class = "gallery dt-sc-one-third column";
		$feature_image = "gallery-threecol";
	}
	elseif($post_layout == "one-fourth-column") {
		$li_class = "gallery dt-sc-one-fourth column";
		$feature_image = "gallery-fourcol";
	}
	
	//PAGE LAYOUT CHECK...
	if($page_layout != "content-full-width") {
		$li_class = $li_class." with-sidebar";
		$feature_image = $feature_image."-sidebar";
	}
	
	//POST DESIGN CHECK...
	if($design_type != "default") {
		$feature_image = "gallery-with-shape";
	} else {
		$design_type = "default no-space";
	}

	global $wp_query;	//FOR PAGINATION PURPOSE...
	if(have_posts()): ?>
     
     <div class="gallery-container"><?php
		while(have_posts()): the_post(); ?>
			<div class="<?php echo $design_type." ".$li_class; ?>">
              <figure class="gallery-thumb <?php echo $design_type; ?>"><?php
                if($design_type != 'default no-space'): ?>
				    <img class="item-mask" alt="mask" src="<?php echo get_template_directory_uri(); ?>/skins/<?php echo dt_theme_option('appearance','skin'); ?>/images/<?php echo $design_type; ?>.png" /><?php
				endif;
				$fullimg = wp_get_attachment_image_src(get_post_thumbnail_id($post->ID), 'full', false);
				$currenturl = $fullimg[0];
				$currenticon = "fa-search";
				$pmeta_set = get_post_meta($post->ID, '_gallery_settings', true);
				if( @array_key_exists('items_thumbnail', $pmeta_set) && ($pmeta_set ['items_name'] [0] == 'video' )) {
					$currenturl = $pmeta_set ['items'][0];
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
     </div>
     <div class="margin40"></div><?php
	 //Pagination...
	 if($wp_query->max_num_pages > 1): ?>
		<div class="pagination-wrapper">
			<?php if(function_exists("dt_theme_pagination")) echo dt_theme_pagination("", $wp_query->max_num_pages, $wp_query); ?>
		</div><?php
	 endif;
	 wp_reset_query($wp_query);
	 else: ?>
		<h2><?php _e('Nothing Found.', 'dt_themes'); ?></h2>
		<p><?php _e('Apologies, but no results were found for the requested archive.', 'dt_themes'); ?></p><?php
	endif; ?>