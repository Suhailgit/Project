<?php
	$p_meta_set = get_post_meta($post->ID, '_gallery_settings', true);
	$page_layout = $p_meta_set['layout'];	
?>
<div class="gallery-thumb dt-sc-two-third column<?php if($page_layout == "single-gallery-layout-three") echo ' right-gallery'; else echo ' first'; ?>">
    <div class="gallery-slider-container">
        <ul class="gallery-slider"><?php
			//GETTING GALLERY VALUES...
			global $wp_embed;
				
			if(isset($p_meta_set['items']) != ""):
				foreach($p_meta_set['items'] as $key => $item):
				echo "<li>";
					if($p_meta_set ['items_name'] [$key] != 'video')
						echo "<img src='".$item."' alt='".$p_meta_set ['items_name'] [$key]."'>";
					else {
						//For Vimeo...
						if ( strpos($item, "vimeo") ) :
							$url = substr( strrchr($item, "/"),1);
							echo "<iframe src='http://player.vimeo.com/video/{$url}' width='620' height='510' frameborder='0'></iframe>";

						//For Youtube...
						elseif( strpos($item, "?v=") ):
							$url = substr( strrchr($item, "="),1);
							echo "<iframe src='http://www.youtube.com/embed/{$url}?wmode=opaque' width='620' height='510' frameborder='0'></iframe>";
						endif;
					}
				echo "</li>";
				endforeach;
			endif; ?>
        </ul>
    </div>        
</div>
<div class="dt-sc-one-third column<?php if($page_layout == "single-gallery-layout-three") echo ' first'; ?>">
    <div class="content-box">
		<h2><?php the_title(); ?></h2>
		<p><span class="fa fa-tag"></span><?php echo get_the_term_list($post->ID, 'gallery_entries', ' ', ', ', ' '); ?></p>
        
       	<?php the_content();
		wp_link_pages(array('before' => '<div class="page-link"><strong>'.__('Pages:', 'dt_themes').'</strong> ', 'after' => '</div>', 'next_or_number' => 'number'));
		edit_post_link(__('Edit', 'dt_themes'), '<span class="edit-link">', '</span>' ); ?>
        
		<div class="margin10"></div>
        
        <h4><?php _e('Project Details', 'dt_themes'); ?></h4>
        <ul class="project-details">
			<?php if(isset($p_meta_set['client'])): ?><li><i class="fa fa-user"></i><strong><?php _e('Client Name : ', 'dt_themes'); ?></strong><?php echo $p_meta_set['client']; ?></li><?php endif; ?>
            <?php if(isset($p_meta_set['location'])): ?><li><i class="fa fa-map-marker"></i><strong><?php _e('Location : ', 'dt_themes'); ?></strong><?php echo $p_meta_set['location']; ?></li><?php endif; ?>
            <?php if(isset($p_meta_set['url'])): ?><li><i class="fa fa-link"></i><strong><?php _e('Website : ', 'dt_themes'); ?></strong><a href="<?php echo $p_meta_set['url']; ?>" target="_blank"><?php echo $p_meta_set['url']; ?></a><?php endif; ?>
            <li><i class="fa fa-calendar"></i><strong><?php _e('Posted On : ', 'dt_themes'); ?></strong><?php echo get_the_date('d')." ".get_the_date('M')." ".get_the_date('Y'); ?></li>
        </ul>
        <?php if(isset($p_meta_set['show-social-share'])): ?><div class="gallery-share"><?php dt_theme_social_bookmarks('sb-gallery'); ?></div><?php endif; ?>
    </div>
</div>
<div class="margin20"></div>
<div class="dt-navigation">
    <div class="dt-prev"><?php previous_post_link('%link', '<i class="fa fa-angle-left"></i> %title'); ?></div>
    <div class="dt-next"><?php next_post_link('%link', '%title <i class="fa fa-angle-right"></i>'); ?></div>
</div>
<?php if(dt_theme_option('general', 'disable-gallery-comment') != true && (isset($p_meta_set['comment']) != "")) { echo '<div class="margin50"></div>'; comments_template('', true); } ?>