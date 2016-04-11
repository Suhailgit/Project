<?php
#CONTACT FORM SHORTCODE...
if(!function_exists('dt_contact_form')) {
	
	function dt_contact_form( $atts, $content = null ) {
		extract(shortcode_atts(array(
			'to_email' => get_bloginfo('admin_email'),
			'success_msg' => __('Thanks for Contacting Us, We will call back to you soon.', 'iamd_text_domain'),
			'error_msg' => __('Sorry your message not sent, Try again Later.', 'iamd_text_domain')
		), $atts));
		
		$out = '';
		$out .= '<div id="ajax_message"> </div>';
		$out .= '<form class="contact-frm" method="post" action="'.get_template_directory_uri().'/framework/sendmail.php">';
				$out .= '<div class="dt-sc-one-half column first">';
					$out .= '<input type="text" name="cname" placeholder="'.__('Name *', 'iamd_text_domain').'" />';
					$out .= '<input type="email" name="cemail" placeholder="'.__('Email *', 'iamd_text_domain').'" />';
					$out .= '<input type="text" name="csubject" placeholder="'.__('Subject', 'iamd_text_domain').'" />';
				$out .= '</div>';
				$out .= '<div class="dt-sc-one-half column">';
					$out .= '<textarea cols="12" rows="7" name="cmessage" placeholder="'.__('Message *', 'iamd_text_domain').'"></textarea>';
					$out .= '<input type="submit" name="submit" value="'.__('Submit', 'iamd_text_domain').'" class="dt-sc-button small" />';
				$out .= '</div>';
			$out .= '<input type="hidden" name="hidadminemail" value="'.$to_email.'" />';
			$out .= '<input type="hidden" name="hidsuccess" value="'.$success_msg.'" />';
			$out .= '<input type="hidden" name="hiderror" value="'.$error_msg.'" />';
		$out .= '</form>';
	
		return $out;
	}
	add_shortcode('dt_contact_form', 'dt_contact_form');
	add_shortcode('dt_sc_contact_form', 'dt_contact_form');
}

#STREET SHORTCODE...
if(!function_exists('dt_address')) {
	
	function dt_address($attrs, $content=null,$shortcodename="") {
		extract(shortcode_atts(array(
			'title' => ''
		), $attrs));
		
		$title = !empty($title) ? "<b>$title: </b>" : "";
		$content = strip_tags($content);
		
		$out = "<p> <span class='fa fa-map-marker'> </span>".$title.$content."</p>";
		return $out;
	}
	add_shortcode('dt_address','dt_address');
	add_shortcode('dt_sc_address','dt_address');
}

#PHONE NO SHORTCODE...
if(!function_exists('dt_phone')) {
	
	function dt_phone($attrs, $content=null,$shortcodename="") {
		extract(shortcode_atts(array(
			'title' => '',
			'no' => ''
		), $attrs));
	
		$title = !empty($title) ? "<b>$title: </b>" : "";
		
		$out = !empty($no) ? "<p> <span class='fa fa-phone'> </span>{$title}{$no} </p>" : "";
		return $out;
	}
	add_shortcode('dt_phone','dt_phone');
	add_shortcode('dt_sc_phone','dt_phone');
}

#EMAIL ID SHORTCODE...
if(!function_exists('dt_email')) {
	
	function dt_email($attrs, $content=null,$shortcodename="") {
		extract(shortcode_atts(array(
			'title' => '',
			'id' => ''
		), $attrs));
		
		$title = !empty($title) ? "<b>$title: </b>" : "";
		
		$out = !empty($id) ? "<p> <span class='fa fa-envelope'> </span>{$title}<a href='mailto:{$id}'>{$id}</a> </p>" : "";
		return $out;
	}
	add_shortcode('dt_email','dt_email');
	add_shortcode('dt_sc_email','dt_email');
}

#WEBSITE SHORTCODE...
if(!function_exists('dt_website')) {

	function dt_website($attrs, $content=null,$shortcodename="") {
		extract(shortcode_atts(array(
			'title' => '',
			'url' => ''
		), $attrs));
		
		$title = !empty($title) ? "<b>$title: </b>" : "";
		
		$out = "";
		if ( !empty( $url) ):
			$out  = "<p> <span class='fa fa-globe'> </span> {$title}<a href={$url}>";
			$url = preg_replace('#^[^:/.]*[:/]+#i', '',urldecode( $url ));
			$url = preg_replace('!\bwww3?\..*?\b!', '', $url);
			$out .= $url;	
			$out .= "</a> </p>";
		endif;
		return $out;
	}
	add_shortcode('dt_website','dt_website');
	add_shortcode('dt_sc_website','dt_website');
}

#SOCIAL ICONS...
if(!function_exists('dt_social')) {
	
	function dt_social($attrs, $content=null,$shortcodename="") {
		
		extract(shortcode_atts(array(
			'text' => ''
		), $attrs));
		
		$out = "";
		$text = !empty($text) ? "<p class='social-media-text'>$text</p>" : "";
		
		$dt_theme_options = get_option(IAMD_THEME_SETTINGS);

		if(is_array($dt_theme_options['social'])):
			$out .= "<ul class='social-media'>";
			foreach($dt_theme_options['social'] as $social):
				$link = $social['link'];
				$icon = $social['icon'];
				$out .= "<li>";
				$out .= "<a class='fa {$icon}' href='{$link}'></a>";
				$out .= "</li>"; 
			endforeach;
			$out .= "</ul>";
			$out .= $text;
		endif;			
		
		return $out;
	}
	add_shortcode('dt_social','dt_social'); 
}

#BLOG LIST...
if(!function_exists('dt_blog_posts')) {

	function dt_blog_posts( $atts, $content = null ) {
		extract(shortcode_atts(array(
			'show_feature_image' => 'true',
			'excerpt_length' => 35,
			'show_meta' => 'true',
			'limit' => -1,
			'categories' => '',
			'posts_column' => 'one-column',		// one-column, one-half-column, one-third-column
		), $atts));
		
		global $post;

		$meta_set = get_post_meta(get_queried_object_id(), '_tpl_default_settings', true);
		$page_layout = !empty($meta_set['layout']) ? $meta_set['layout'] : 'content-full-width';
		$post_layout = $posts_column;
		
		$article_class = "";
		$feature_image = "blog-full";
		$column = ""; $out = "";
	
		//POST LAYOUT CHECK...
		if($post_layout == "one-column") {
			$article_class = "column dt-sc-one-column blog-fullwidth";
		}
		elseif($post_layout == "one-half-column") {
			$article_class = "column dt-sc-one-half";
			$column = 2;
		}
		
		//PAGE LAYOUT CHECK...
		if($page_layout != "content-full-width") {
			$article_class = $article_class." with-sidebar";
		}
		
		//POST VALUES....
		if($categories == "") $categories = 0;
	
		//PERFORMING QUERY...
		if ( get_query_var('paged') ) { $paged = get_query_var('paged'); }
		elseif ( get_query_var('page') ) { $paged = get_query_var('page'); }
		else { $paged = 1; }
	
		$args = array('post_type' => 'post', 'paged' => $paged, 'posts_per_page' => $limit, 'cat' => $categories, 'ignore_sticky_posts' => 1);
		$the_query = new WP_Query($args);
		
		if($the_query->have_posts()): $i = 1;
		 while($the_query->have_posts()): $the_query->the_post();
			
			$temp_class = "";
			
			if($i == 1) $temp_class = $article_class." first"; else $temp_class = $article_class;
			if($i == $column) $i = 1; else $i = $i + 1;
			
				$out .= '<div class="'.$temp_class.'"><!-- Post Starts -->';
	
				$out .= '<article id="post-'.get_the_ID().'" class="'.implode(" ", get_post_class("blog-post", $post->ID)).'">';
				
					if($show_meta != "false"):
					
						$out .= '<div class="post-details"><!-- Post Details Starts -->';
						
								$out .= '<div class="date"><p><span>'.get_the_date('d').'</span><br>'.get_the_date('M').'&nbsp;'.get_the_date('Y').'</p></div>';
								
								$out .= '<div class="post-comments">';
									$commtext = "";
									if((wp_count_comments($post->ID)->approved) == 0)	$commtext = '0';
									else $commtext = wp_count_comments($post->ID)->approved;
									$out .= '<a href="'.get_permalink().'/#comments"><i class="fa fa-comment"></i> '.$commtext.'</a>';
								$out .= '</div>';
								
								$format = get_post_format();
						$out .= '</div><!-- Post Details ends -->';
					
					endif;				
					
					$out .= '<div class="post-content"><!-- Post Content Starts -->';
						
						$out .= '<div class="entry-thumb">';
							if(is_sticky()):
								$out .= '<div class="featured-post">'.__('Featured','iamd_text_domain').'</div>';
							endif;
							
							//POST FORMAT STARTS
							if( $format === "image" || empty($format) ):
							  $out .= '<a href="'.get_permalink().'" title="'.get_the_title().'">';
							  if(has_post_thumbnail() && $show_feature_image != 'false'):
								  $attr = array('title' => get_the_title()); $out .= get_the_post_thumbnail($post->ID, $feature_image, $attr);
						      else:
								  $out .= '<img src="http://placehold.it/840x340&text=Image" alt="'.get_the_title().'" />';
						      endif;
							  $out .= '</a>';
							elseif( $format === "gallery" ):
							  $post_meta = get_post_meta($post->ID ,'_dt_post_settings', true);
							  if( array_key_exists("items", $post_meta) ):
								  $out .= "<ul class='entry-gallery-post-slider'>";
								  foreach ( $post_meta['items'] as $item ) { $out .= "<li><img src='{$item}' alt='gal-img' /></li>";	}
								  $out .= "</ul>";
							  endif;
							elseif( $format === "video" ):
								  $post_meta =  get_post_meta($post->ID ,'_dt_post_settings', true);
								  if( array_key_exists('oembed-url', $post_meta) || array_key_exists('self-hosted-url', $post_meta) ):
									  if( array_key_exists('oembed-url', $post_meta) ):
										  $out .= "<div class='dt-video-wrap'>".wp_oembed_get($post_meta['oembed-url']).'</div>';
									  elseif( array_key_exists('self-hosted-url', $post_meta) ):
										  $out .= "<div class='dt-video-wrap'>".apply_filters( 'the_content', $post_meta['self-hosted-url'] ).'</div>';
									  endif;
								  endif;
							elseif( $format === "audio" ):
								  $post_meta =  get_post_meta($post->ID ,'_dt_post_settings', true);
								  if( array_key_exists('oembed-url', $post_meta) || array_key_exists('self-hosted-url', $post_meta) ):
									  if( array_key_exists('oembed-url', $post_meta) ):
										  $out .= wp_oembed_get($post_meta['oembed-url']);
									  elseif( array_key_exists('self-hosted-url', $post_meta) ):
										  $out .= apply_filters( 'the_content', $post_meta['self-hosted-url'] );
									  endif;
								  endif;
							else:
							  $out .= '<a href="'.get_permalink().'" title="'.get_the_title().'">';
							  if(has_post_thumbnail() && $show_feature_image != 'false'):
								  $attr = array('title' => get_the_title()); $out .= get_the_post_thumbnail($post->ID, $feature_image, $attr);
						      else:
								  $out .= '<img src="http://placehold.it/840x340&text=Image" alt="'.get_the_title().'" />';
						      endif;
							  $out .= '</a>';
					       endif;
						   //POST FORMAT ENDS
						$out .= '</div>';

						$out .= '<div class="entry-detail">';
							$out .= '<h2><a href="'.get_permalink().'">'.get_the_title().'</a></h2>';
							if($excerpt_length != "" || $excerpt_length != 0) $out .= dt_theme_excerpt($excerpt_length);
						$out .= '</div>';
					
						if($show_meta != "false"):
							$out .= '<div class="post-meta">';
	                        	$out .= '<div class="post-format"><span class="post-icon-format"> </span></div>';
								$out .= '<ul>';
									$out .= '<li><span class="fa fa-user"></span><a href="'.get_author_posts_url(get_the_author_meta('ID')).'">'.get_the_author_meta('display_name').'</a></li>';
									$categories = get_the_category();
									$thiscats = "";
									if($categories) {
									foreach($categories as $category) {
										$thiscats .= '<a href="'.get_category_link($category->term_id ).'" title="' . esc_attr( sprintf( __( "View all posts in %s",'iamd_text_domain' ), $category->name ) ) . '">'.$category->cat_name.'</a>, '; }
									$thiscats = substr($thiscats,0, (strlen($thiscats)-2));
									$out .= '<li><span class="fa fa-thumb-tack"></span>'.$thiscats.'</li>';
									}
									$out .= get_the_tag_list('<li><span class="fa fa-pencil"></span>', ', ', '</li>');
								$out .= '</ul>';
							$out .= '</div>';
						endif;
					$out .= '</div><!-- Post Content Ends -->';
				$out .= '</article>';
			$out .= '</div><!-- Post Ends -->';
		 endwhile;
		 
		else:
			$out .= '<h2>'.__('Nothing Found.', 'iamd_text_domain').'</h2>';
			$out .= '<p>'.__('Apologies, but no results were found for the requested archive.', 'iamd_text_domain').'</p>';
		endif;
		
		return $out;
	}
	add_shortcode('dt_blog_posts', 'dt_blog_posts');
	add_shortcode('dt_sc_blogposts', 'dt_blog_posts');
}

#MARGIN SHORTCODE...
if(!function_exists('dt_margin')) {
	
	function dt_margin( $atts, $content = null ) {
		extract(shortcode_atts(array(
			'value'	=> 20,	# 5 to 100
		), $atts));
		
		$out = "";	
		$out .= '<div class="margin'.$value.'"></div>';
		
		return $out;
	}
	add_shortcode('dt_margin', 'dt_margin');
	add_shortcode('dt_sc_margin', 'dt_margin');
}

#CONTACT BOX...
if(!function_exists('dt_contact_box')) {
	
	function dt_contact_box( $atts, $content = null ) {
		extract(shortcode_atts(array(
			'title'	=> __('Contact Info', 'iamd_text_domain'),
			'street' => '',
			'phone' => '',
			'email' => '',
			'web' => ''
		), $atts));
		
		$out = "";	
		$out .= '<div class="content-box">';
			if($title != NULL) $out .= '<h4>'.$title.'</h4>';
			$out .= '<ul>';
				if($street != NULL) $out .= '<li><span class="fa fa-map-marker"></span>'.$street.'</li>';
				if($email != NULL) $out .= '<li><span class="fa fa-envelope"></span><a href="mailto:'.$email.'">'.$email.'</a></li>';
				if($phone != NULL) $out .= '<li><span class="fa fa-phone"></span>'.$phone.'</li>';
				if($web != NULL) $out .= '<li><span class="fa fa-globe"></span><a href={$web}>'.$web.'</a></li>';
			$out .= '</ul>';
		$out .= '</div>';
		
		return $out;
	}
	add_shortcode('dt_contact_box', 'dt_contact_box');
	add_shortcode('dt_sc_contact_box', 'dt_contact_box');
}

#INTRO TEXT...
if(!function_exists('dt_intro_text')) {
	
	function dt_intro_text($attrs, $content=null, $shortcodename =""){
		extract(shortcode_atts(array( 'type'=>'type1','class'=>''), $attrs));
		$output = "";
		
		$content = do_shortcode( $content );
		$output .= "<div class='intro-text $type $class'>";
		
		if($type == 'type3') $output .= '<span class="dotted-line"></span>';
		
		$output .= $content;
		$output .= "</div>";
		return $output;
	}
	add_shortcode('dt_intro_text','dt_intro_text');
	add_shortcode('dt_sc_intro_text','dt_intro_text');
}

#JOIN NOW BUTTON...
if(!function_exists('dt_join_button')) {
	
	function dt_join_button($attrs, $content=null, $shortcodename =""){
		extract(shortcode_atts(array( 'link'=>'#', 'target'=>'', 'currency'=>''), $attrs));
		
		$currency = !empty($currency) ? $currency : "&euro;";
		$target = ($target) ? 'target="'.$target.'"' : '';
		$link = esc_url ( $link );
		$out = "<a href='{$link}' {$target} class='dt-join-btn'>{$content}<span>{$currency}</span></a>";		

		return $out;
	}
	add_shortcode('dt_join_button','dt_join_button');
	add_shortcode('dt_sc_join_button','dt_join_button');
}

#HR TITLE...
if(!function_exists('dt_hr_title')) {
	
	function dt_hr_title($attrs, $content=null, $shortcodename =""){
		extract(shortcode_atts(array( 'tag'=>'h2'), $attrs));
		
		$output = "<div class='hr-title'><$tag>".do_shortcode( $content )."</$tag><div class='title-sep'><span></span></div></div>";
		return $output;
	}
	add_shortcode('dt_hr_title','dt_hr_title');
	add_shortcode('dt_sc_hr_title','dt_hr_title');
}

#ROUND PRICING TABLE...
if(!function_exists('dt_pricing_round_text')) {
	
	function dt_pricing_round_text($attrs, $content=null, $shortcodename =""){
		extract(shortcode_atts(array( 'heading'=>'', 'midtitle'=>'', 'text'=>''), $attrs));
		
		$output = '<div class="dt-sc-tb-content"><div class="dt-sc-rounded">';
		
			if($heading != "") $output.= '<span>'.$heading.'</span>';
			if($midtitle != "") $output.= '<h3>'.$midtitle.'</h3>';
			
			$output .= '<hr>';
		
			if($text != "") $output.= '<p>'.$text.'</p>';
		
		$output .= '</div></div>';
		
		return $output;
	}
	add_shortcode('dt_pricing_round_text','dt_pricing_round_text');
}

#THEME SERVICE SHORTCODE...
if(!function_exists('dt_theme_service')) {

	function dt_theme_service($atts, $content = null) {
		extract(shortcode_atts(array(
			'icon_url' => '',
			'title'	=>	'',
			'subtitle' => ''
		), $atts));
		
		$out = '';

		$out .= '<div class="dt-sc-services">';
			$out .= '<div class="dt-sc-iconbox">';
				$out .= '<div class="dt-sc-icon">';
					$out .= '<img src="'.$icon_url.'" alt="service-alt" />';
				$out .= '</div>';
			$out .= '</div>';
		
			if($title != NULL) $out .= '<h3>'.$title.'</h3>';
			if($subtitle != NULL) $out .= '<span>'.$subtitle.'</span>';
			if($content != NULL) $out .= '<p>'.do_shortcode($content).'</p>';
		$out .= '</div>';
		
		return $out;
	}
	add_shortcode('dt_theme_service', 'dt_theme_service');
}

#ANIMATION DIV...
if(!function_exists('dt_animate_section')) {
	
	function dt_animate_section($atts, $content = null) {
		extract(shortcode_atts(array(
			'animation' => 'fadeIn',
			'delay' => '300',
		), $atts));

		$out = '';
		
		$out .= '<div class="animate" data-animation="'.$animation.'" data-delay="'.$delay.'">';
			$out .= do_shortcode($content);
		$out .= '</div>';
		
		return $out;
	}
	add_shortcode('dt_animate', 'dt_animate_section');
	add_shortcode('dt_sc_animate', 'dt_animate_section');
}

//FB LIKE...
add_shortcode('fblike','fblike');
function fblike( $attrs = null, $content = null,$shortcodename ="" ){
	extract(shortcode_atts(array('layout'=>'box_count','width'=>'','height'=>'','send'=>false,'show_faces'=>false,'action'=>'like','font'=> 'lucida+grande'
				,'colorscheme'=>'light'), $attrs));

	if ($layout == 'standard') { $width = '450'; $height = '35';  if ($show_faces == 'true') { $height = '80'; } }
	if ($layout == 'box_count') { $width = '55'; $height = '65'; }
	if ($layout == 'button_count') { $width = '90'; $height = '20'; }
	$layout = 'data-layout = "'.$layout.'" ';
	$width = 'data-width = "'.$width.'" ';
	$font = 'data-font = "'.str_replace("+", " ", $font).'" ';
	$colorscheme = 'data-colorscheme = "'.$colorscheme.'" ';
	$action = 'data-action = "'.$action.'" ';
	if ( $show_faces ) { $show_faces = 'data-show-faces = "true" '; } else { $show_faces = ''; }
	if ( $send ) { $send = 'data-send = "true" '; } else { $send = ''; }
	
    $out = '<div id="fb-root"></div><script>(function(d, s, id) {var js, fjs = d.getElementsByTagName(s)[0];if (d.getElementById(id)) return;js = d.createElement(s); js.id = id;js.src = "//connect.facebook.net/en_US/all.js#xfbml=1";fjs.parentNode.insertBefore(js, fjs);}(document, "script", "facebook-jssdk"));</script>';
	$out .= '<div class = "fb-like" data-href = "'.get_permalink().'" '.$layout.$width.$font.$colorscheme.$action.$show_faces.$send.'></div>';
return $out;
}

//GOOGLE PLUS...
add_shortcode('googleplusone','googleplusone');	
function googleplusone( $attrs = null, $content = null,$shortcodename ="" ){
	extract(shortcode_atts(array('size'=> '','lang'=> ''), $attrs));
	$size = empty($size) ? "size='small'" : "size='{$size}'";
	$lang = empty($lang) ? "{lang:en_GB}" : "{lang:'{$lang}'}";
	
	$out = '<script type="text/javascript" src="https://apis.google.com/js/plusone.js">'.$lang.'</script>';
	$out .= '<g:plusone '.$size.'></g:plusone>';
	return $out;
}

//TWITTER BUTTON...
add_shortcode('twitter','twitter');
function twitter( $attrs = null, $content = null,$shortcodename ="" ){
	extract(shortcode_atts(array('layout'=>'vertical','username'=>'','text'=>'','url'=>'','related'=> '','lang'=> ''), $attrs));
	
	$p_url= get_permalink();
	$p_title = get_the_title();
	
	$text = !empty($text) ? "data-text='{$text}'" :"data-text='{$p_title}'";
	$url = !empty($url) ? "data-url='{$url}'" :"data-url='{$p_url}'";
	$related = !empty($related) ? "data-related='{$related}'" :'';
	$lang = !empty($lang) ? "data-lang='{$lang}'" :'';
	$twitter_url = "http://twitter.com/share";
		$out = '<a href="{$twitter_url}" class="twitter-share-button" '.$url.' '.$lang.' '.$text.' '.$related.' data-count="'.$layout.'" data-via="'.$username.'">'.
	__('Tweet','iamd_text_domain').'</a>';
		$out .= '<script type="text/javascript" src="http://platform.twitter.com/widgets.js"></script>';
	return $out;	
}

//STUMBLEUPON...
add_shortcode('stumbleupon','stumbleupon');
function stumbleupon( $attrs = null, $content = null,$shortcodename ="" ){
	extract(shortcode_atts(array('layout'=>'5','url'=>get_permalink()),$attrs));
	$url = "&r='{$url}'";
	$out = '<script src="http://www.stumbleupon.com/hostedbadge.php?s='.$layout.$url.'"></script>';
return $out;	
}

//LINKEDIN...
add_shortcode('linkedin','linkedin');
function linkedin( $attrs = null, $content = null,$shortcodename ="" ){
	extract(shortcode_atts(array('layout'=>'2','url'=>get_permalink()),$attrs));
	
    	if ($url != '') { $url = "data-url='".$url."'"; }
	    if ($layout == '2') { $layout = 'right'; }
		if ($layout == '3') { $layout = 'top'; }
		$out = '<script type="text/javascript" src="http://platform.linkedin.com/in.js"></script><script type="in/share" data-counter = "'.$layout.'" '.$url.'></script>';
return $out;	
}

//DELICIES...
add_shortcode('delicious','delicious');
function delicious( $attrs = null, $content = null,$shortcodename ="" ){
	extract(shortcode_atts(array('text'=>__("Delicious",'iamd_text_domain')),$attrs));
	
	$delicious_url = "http://www.delicious.com/save";
	
	$out = '<img src="http://www.delicious.com/static/img/delicious.small.gif" height="10" width="10" alt="Delicious" />&nbsp;<a href="{$delicious_url}" onclick="window.open(&#39;http://www.delicious.com/save?v=5&noui&jump=close&url=&#39;+encodeURIComponent(location.href)+&#39;&title=&#39;+encodeURIComponent(document.title), &#39;delicious&#39;,&#39;toolbar=no,width=550,height=550&#39;); return false;">'.$text.'</a>';
return $out;	
}

//PINTEREST...
add_shortcode('pintrest','pintrest');
function pintrest( $attrs = null, $content = null,$shortcodename ="" ){
	extract(shortcode_atts(array('text'=>get_the_excerpt(),'layout'=>'horizontal','image'=>'','url'=>get_permalink(),'prompt'=>false),$attrs));
	$out = '<div class = "mysite_sociable"><a href="http://pinterest.com/pin/create/button/?url='.$url.'&media='.$image.'&description='.$text.'" class="pin-it-button" count-layout="'.$layout.'">'.__("Pin It",'iamd_text_domain').'</a>';
	$out .= '<script type="text/javascript" src="http://assets.pinterest.com/js/pinit.js"></script>';
	
	if($prompt):
		$out = '<a title="'.__('Pin It on Pinterest','iamd_text_domain').'" class="pin-it-button" href="javascript:void(0)">'.__("Pin It",'iamd_text_domain').'</a>';
		$out .= '<script type = "text/javascript">';
		$out .= 'jQuery(document).ready(function(){';
			$out .= 'jQuery(".pin-it-button").click(function(event) {';
			$out .= 'event.preventDefault();';
			$out .= 'jQuery.getScript("http://assets.pinterest.com/js/pinmarklet.js?r=" + Math.random()*99999999);';
			$out .= '});';
		$out .= '});';
		$out .= '</script>';
		$out .= '<style type = "text/css">a.pin-it-button {position: absolute;background: url(http://assets.pinterest.com/images/pinit6.png);font: 11px Arial, sans-serif;text-indent: -9999em;font-size: .01em;color: #CD1F1F;height: 20px;width: 43px;background-position: 0 -7px;}a.pin-it-button:hover {background-position: 0 -28px;}a.pin-it-button:active {background-position: 0 -49px;}</style>';
	
	endif;
	return $out;
}

//DIGG...
add_shortcode('digg','digg');
function digg( $attrs = null, $content = null,$shortcodename ="" ){
	extract(shortcode_atts(array('layout'=>'DiggMedium','url'=>get_permalink(),'title'=>get_the_title(),'type'=>'','description'=>get_the_content(),'related'=>''),$attrs));
	
	if ($title != '') { $title = "&title='".$title."'"; }
	if ($type != '') { $type = "rev='".$type."'"; }
	if ($description != '') { $description = "<span style = 'display: none;'>".$description."</span>"; }
	if ($related != '') { $related = "&related=no"; }

	$out = '<a class="DiggThisButton '.$layout.'" href="http://digg.com/submit?url='.$url.$title.$related.'"'.$type.'>'.$description.'</a>';
	$out .= '<script type = "text/javascript" src = "http://widgets.digg.com/buttons.js"></script>';
	return $out;
}

#WORKING HOURS SHORTCODE...
if(!function_exists('dt_working_hours')) {
	
	function dt_working_hours( $atts, $content = null ) {
		extract(shortcode_atts(array(
			'title'	=> '',
			'text'  => ''
		), $atts));
		
		$title = !empty($title) ? $title : '';
		$text =  !empty($text) ? '<span>'.$text.'</span>' : '';
		
		$out = "";
		$out .= '<p class="dt-working-hours">'.$title.$text.'</p>';
		
		return $out;
	}
	add_shortcode('dt_working_hours', 'dt_working_hours');
}

#PROGRESS CHART
if(!function_exists('dt_progress_chart')) {

	function dt_progress_chart($atts, $content = null) {
		extract(shortcode_atts(array(
			'percentage' => '20',
			'percent_text' => __('Save', 'iamd_text_domain'),
			'bgcolor' => '#f5f5f5',
			'fgcolor' => '#E74D3C',
			'title' => '',
			'subtitle' => '',
			'button_text' => '',
			'button_link' => '#',
			'button_size' => 'small',
			'button_color' => ''
		), $atts));
		
		$out = '';
		
		$out .= '<div class="progress-bar-wrapper">';
			$out .= '<div data-percent="'.$percentage.'" class="donutChart" data-fgcolor="'.$fgcolor.'" data-bgcolor="'.$bgcolor.'">'.$percent_text.'<br></div>';
			$out .= '<div class="progress-bar-content">';
				if($title != NULL) $out .= '<h4>'.$title.'</h4>';
				if($subtitle != NULL) $out .= '<span class="code">'.$subtitle.'</span>';
				if($content != NULL) $out .= '<p>'.do_shortcode($content).'</p>';
				if($button_text != NULL) $out .= '<a href="'.$button_link.'" class="dt-sc-button '.$button_size.' '.$button_color.'">'.$button_text.'<span class="fa fa-book"></span></a>';
			$out .= '</div>';
		$out .= '</div>';
		
		return $out;
	}
	add_shortcode('dt_progress_chart', 'dt_progress_chart');
	add_shortcode('dt_sc_progress_chart', 'dt_progress_chart');
}

#GALLERY ITEMS
if(!function_exists('dt_gallery_items')) {
	
	function dt_gallery_items( $atts, $content = null ) {
		extract(shortcode_atts(array(
			'limit' => -1,
			'categories' => '',
			'posts_column' => 'one-half-column', // one-third-column, one-fourth-column
			'filter' => '',
			'posts_design' => 'default' // shape-one, shape-two, shape-three
		), $atts));
		
		$meta_set = get_post_meta(get_queried_object_id(), '_tpl_default_settings', true);
		$page_layout = !empty($meta_set['layout']) ? $meta_set['layout'] : 'content-full-width';
		$post_layout = $posts_column;
		$design_type = $posts_design;
		
		$li_class = "";
		$feature_image = ""; $out = "";
		
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
		
		if(empty($categories)) {
			$cats = get_categories('taxonomy=gallery_entries&hide_empty=1');
			$cats = get_terms( array('gallery_entries'), array('fields' => 'ids'));		
		} else {
			$cats = explode(',', $categories);
		}
		
		//PERFORMING QUERY...
		if ( get_query_var('paged') ) { $paged = get_query_var('paged'); }
		elseif ( get_query_var('page') ) { $paged = get_query_var('page'); }
		else { $paged = 1; }
		
		//PERFORMING QUERY...	
		$args = array('post_type' => 'dt_galleries', 'paged' => $paged , 'posts_per_page' => $limit,
																					   'tax_query' => array( 
																							array( 
																									'taxonomy' => 'gallery_entries', 
																									'field' => 'id', 
																									'terms' => $cats
																							)));
		$the_query = new WP_Query($args);
		if($the_query->have_posts()): 
		
		 if($filter != "false"):
			 $out .= '<div class="sorting-container">';
				$out .= '<a data-filter="*" href="#" class="active-sort">'.__("All", "iamd_text_domain").'</a>';
					foreach($cats as $term) {
						$myterm = get_term_by('id', $term, 'gallery_entries');
						$out .= '<a href="#" data-filter=".'.strtolower($myterm->slug).'">'.$myterm->name.'</a>';
					}
			 $out .= '</div>';
		 endif;
		 
		 $out .= '<div class="gallery-container">';
			while($the_query->have_posts()): $the_query->the_post(); 
				$terms = wp_get_post_terms(get_the_ID(), 'gallery_entries', array("fields" => "slugs")); array_walk($terms, "arr_strfun");
				
				$out .= '<div class="'.$design_type." ".$li_class." ".strtolower(implode(" ", $terms)).'">';
				  $out .= '<figure class="gallery-thumb '.$design_type.'">';
					if($design_type != 'default no-space'):
						$out .= '<img alt="mask" class="item-mask" src="'.get_template_directory_uri().'/skins/'.dt_theme_option('appearance','skin').'/images/'.$design_type.'.png" />';
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
						$out .= get_the_post_thumbnail($post->ID, $feature_image, $attr);
					else:
						$out .= '<img src="http://placehold.it/940X470.jpg&text=No Image" alt="'.get_the_title().'" title="'.get_the_title().'" />';
					endif;
					$out .= '<div class="image-overlay">';
						$out .= '<a class="link" href="'.get_permalink().'"> <span class="fa fa-eye"> </span> </a>';
						$out .= '<a class="zoom" title="'.get_the_title().'" data-gal="prettyPhoto[gallery]" href="'.$currenturl.'"><span class="fa '.$currenticon.'"> </span></a>';
					$out .= '</div>';
				  $out .= '</figure>';
				  $out .= '<div class="gallery-detail">';
					$out .= '<div class="gallery-title">';
						$out .= '<h4><a href="'.get_permalink().'">'.get_the_title().'</a></h4>';
						$out .= '<p>'.get_the_term_list($post->ID, 'gallery_entries', ' ', ', ', ' ').'</p>';
					$out .= '</div>';
					
				  $out .= '</div>';
				$out .= '</div>';
			endwhile;
		 $out .= '</div>';
		 
		 else:
			$out .= '<h2>'.__("Nothing Found.", "iamd_text_domain").'</h2>';
			$out .= '<p>'.__("Apologies, but no results were found for the requested archive.", "iamd_text_domain").'</p>';
		endif;
	
		return $out;
	}
	add_shortcode('dt_gallery_items', 'dt_gallery_items');
	add_shortcode('dt_sc_gallery_items', 'dt_gallery_items');
}

//GALLERY CAROUSEL
if(!function_exists('dt_gallery_carousel')) {
	
	function dt_gallery_carousel($attrs, $content=null, $shortcodename =""){

		extract(shortcode_atts(array(
			'limit' => '',
			'categories' => '',
			'posts_design' => 'default' // shape-one, shape-two, shape-three
		), $attrs));

		global $post;
			
		$meta_set = get_post_meta(get_queried_object_id(), '_tpl_default_settings', true);
		$page_layout = !empty($meta_set['layout']) ? $meta_set['layout'] : 'content-full-width';
		$design_type = $posts_design;
		
		$li_class = "gallery dt-sc-one-fourth column";
		$feature_image = "gallery-fourcol"; $out = "";
		
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
		
		if(empty($categories)) {
			$cats = get_categories('taxonomy=gallery_entries&hide_empty=1');
			$cats = get_terms( array('gallery_entries'), array('fields' => 'ids'));		
		} else {
			$cats = explode(',', $categories);
		}
		
		//PERFORMING QUERY...	
		$args = array('post_type' => 'dt_galleries', 'posts_per_page' => $limit, 'tax_query' => array( 
																							array( 
																									'taxonomy' => 'gallery_entries', 
																									'field' => 'id', 
																									'terms' => $cats
																							)));
		$the_query = new WP_Query($args);
		if($the_query->have_posts()): 
		
		$out .= '<div class="gallery-carousel-container">';
		
			$out .= '<div class="gallery-carousel-arrows">';
				$out .= '<a class="prev-arrow" href=""><span class="fa fa-angle-left"></span></a>';
				$out .= '<a class="next-arrow" href=""><span class="fa fa-angle-right"></span></a>';
			$out .= '</div>';
			
			 $out .= '<div class="gallery-carousel-wrapper">';
				while($the_query->have_posts()): $the_query->the_post(); 
					$terms = wp_get_post_terms($post->ID, 'gallery_entries', array("fields" => "slugs")); array_walk($terms, "arr_strfun");
					
					$out .= '<div class="'.$design_type." ".$li_class." ".strtolower(implode(" ", $terms)).'">';
					  $out .= '<figure class="gallery-thumb '.$design_type.'">';
						if($design_type != 'default no-space'):
							$out .= '<img alt="mask" class="item-mask" src="'.get_template_directory_uri().'/skins/'.dt_theme_option('appearance','skin').'/images/'.$design_type.'.png" />';
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
							$out .= get_the_post_thumbnail($post->ID, $feature_image, $attr);
						else:
							$out .= '<img src="http://placehold.it/940X470.jpg&text=No Image" alt="'.get_the_title().'" title="'.get_the_title().'" />';
						endif;
						$out .= '<div class="image-overlay">';
							$out .= '<a class="link" href="'.get_permalink().'"> <span class="fa fa-eye"> </span> </a>';
							$out .= '<a class="zoom" title="'.get_the_title().'" data-gal="prettyPhoto[gallery]" href="'.$currenturl.'"><span class="fa '.$currenticon.'"> </span></a>';
						$out .= '</div>';
					  $out .= '</figure>';
					  $out .= '<div class="gallery-detail">';
						$out .= '<div class="gallery-title">';
							$out .= '<h4><a href="'.get_permalink().'">'.get_the_title().'</a></h4>';
							$out .= '<p>'.get_the_term_list($post->ID, 'gallery_entries', ' ', ', ', ' ').'</p>';
						$out .= '</div>';
						
					  $out .= '</div>';
					$out .= '</div>';
				endwhile;
				
			 $out .= '</div>';
		 $out .= '</div>';			 
		 
		 else:
			$out .= '<h2>'.__("Nothing Found.", "iamd_text_domain").'</h2>';
			$out .= '<p>'.__("Apologies, but no results were found for the requested archive.", "iamd_text_domain").'</p>';
		endif;
		
		return $out;
	}
	add_shortcode('dt_gallery_carousel','dt_gallery_carousel');
	add_shortcode('dt_sc_gallery_carousel','dt_gallery_carousel');
}

//SINGLE REVIEW
if(!function_exists('dt_review')) {
	
	function dt_review($attrs, $content=null, $shortcodename =""){

		extract(shortcode_atts(array(
			'name' => '',
			'role' => '',
			'image' => ''
		), $attrs));
		
		$out = '<div class="dt-review">';
			$out .= '<div class="dt-rev-author">';
				$out .= '<img src="'.$image.'" alt="'.$name.'" />';
				$out .= '<h4>'.$name.'</h4>';
				$out .= '<span>'.$role.'</span>';
			$out .= '</div>';
			$out .= '<blockquote>&quot; '.do_shortcode($content).' &quot;</blockquote>';
		$out .= '</div>';
		
		return $out;
	}
	add_shortcode('dt_review','dt_review');
}

//REVIEW WRAPPER
if(!function_exists('dt_review_carousel')) {
	
	function dt_review_carousel($attrs, $content=null, $shortcodename =""){

		$out = '<div class="reviews-carousel-wrapper">'.do_shortcode($content).'</div>';
		
		return $out;
	}
	add_shortcode('dt_review_carousel','dt_review_carousel');
}

#EVENTS LIST SHORTCODE...
if(!function_exists('dt_events_list') && dt_theme_is_plugin_active('the-events-calendar/the-events-calendar.php')) {
	
	function dt_events_list( $atts, $content = null ) {
		extract(shortcode_atts(array(
			'limit'  => '-1',
			'excerpt_length' => '15',
			'feature_image' => '', //Wordpress default thumbnails : small-thumb, thumb, medium
			'carousel' => ''
		), $atts));

		global $post; $out = "";
	
		$feature_image = empty($feature_image) ? 'thumb' : $feature_image;
	
		$all_events = tribe_get_events(array( 'eventDisplay'=>'all', 'posts_per_page'=> $limit ));

		foreach($all_events as $post) {
		  setup_postdata($post);
		  
		  	$out .= '<div class="dt-sc-one-column column" id="post-'.get_the_ID().'">';
			
				$out .= '<div class="event-container">';
				if ( has_post_thumbnail() && $feature_image != 'false'):
					$out .= '<div class="event-thumb">';
						$out .= '<a href="'.get_permalink().'" title="'.get_the_title().'">';
									$attr = array('title' => get_the_title()); $out .= get_the_post_thumbnail($post->ID, $feature_image, $attr);
						$out .= '</a>';
					$out .= '</div>';
				endif;					
				
				$out .= '<div class="event-content">';
					$out .= '<h2><a href="'.get_permalink().'">'.get_the_title().'</a></h2>';				
					$out .= '<div class="event-meta">'.tribe_get_start_date($post->ID, true, 'd M Y').'</div>';
					$out .= '<div class="event-excerpt">';
						$out .= dt_theme_excerpt($excerpt_length);
					$out .= '</div>';
				$out .= '</div>';
				$out .= '</div>';
				
			$out .= '</div>';
		}
		
		if($carousel == 'true') {
			return '<div class="dt-events-wrapper"><div class="dt-event-carousel">'.$out.'</div></div>';
		} else {
			return $out;
		}
	}
	add_shortcode('dt_events_list', 'dt_events_list');
	add_shortcode('dt_sc_events_list', 'dt_events_list');
}

//NUMBER COUNT...
if(!function_exists('dt_number_count')) {
	
	function dt_number_count($attrs, $content=null, $shortcodename =""){

		extract(shortcode_atts(array(
			'icon' => 'fa-group',
			'value' => '100',
			'title' => ''
		), $attrs));
		
		$out = "";
		$out .= '<div class="dt-sc-animate-num">';
			$out .= '<div class="dt-sc-icon">';
				$out .= '<i class="fa '.$icon.'"></i>';
			$out .= '</div>';
			
			$out .= '<span class="dt-sc-num-count" data-value="'.$value.'">'.$value.'</span>';
		
			if($title != NULL) $out .= '<h3>'.$title.'</h3>';
			if($content != NULL) $out .= '<p>'.do_shortcode($content).'</p>';
		$out .= '</div>';
		
		return $out;
	}
	add_shortcode('dt_number_count','dt_number_count');
	add_shortcode('dt_sc_number_count','dt_number_count');
}

//NEWSLETTER WRAPPER...
if(!function_exists('dt_newsletter')) {

	function dt_newsletter($attrs, $content=null, $shortcodename =""){

		extract(shortcode_atts(array(
			'title' => ''
		), $attrs));

		$out = "";
		$list_id = dt_theme_option('general','newsletter-listid');

		if( isset( $_REQUEST['dt_sc_mc_emailid']) ):
			//Calling mailchimp script...
			require_once(IAMD_FW."theme_widgets/mailchimp/MCAPI.class.php");
			$mcapi = new MCAPI( dt_theme_option('general','mailchimp-key') );

			if($mcapi->listSubscribe($_REQUEST['dt_sc_mc_listid'], $_REQUEST['dt_sc_mc_emailid']) ):
				$msg = '<span style="color:#75B632;">'.__('Success!&nbsp; Check your inbox or spam folder for a message containing a confirmation link.', 'iamd_text_domain').'</span>';
			else:
				$msg = '<span style="color:#D95B43;"><b>'.__('Error:', 'iamd_text_domain').'</b>&nbsp; '.$mcapi->errorMessage.'</span>';
			endif;
		endif;

		$out .= '<div class="margin30"></div>';
		$out .= '<div class="dt-sc-subscribe-wrapper">';
			$out .= '<h2>'.$title.'</h2>';
			$out .= '<form name="frmsubscribe" method="post" class="dt-sc-subscribe-frm">';
			$out .= '<input type="text" name="dt_sc_mc_name" required="" placeholder="'.__('Enter Name', 'iamd_text_domain').'" />';
			$out .= '<input type="email" name="dt_sc_mc_emailid" required="" placeholder="'.__('Enter Email', 'iamd_text_domain').'" />';
			$out .= "<input type='hidden' name='dt_sc_mc_listid' value='$list_id' />";
			$out .=	'<input type="submit" name="submit" class="dt-sc-button small" value="'.__('Subscribe', 'iamd_text_domain').'" />';
			$out .= '</form>';
			
			if ( isset ( $msg ) ) $out .= '<span class="dt_sc_mc_result">'.$msg.'</span>';
				
		$out .= '</div>';
		$out .= '<div class="margin10"></div>';

		return $out;
	}
	add_shortcode('dt_newsletter','dt_newsletter');
}

//Featured Courses...
if(!function_exists('dt_featured_courses') && dt_theme_is_plugin_active('woothemes-sensei/woothemes-sensei.php')) {
	
	function dt_featured_courses( $atts, $content = null ) {
		extract(shortcode_atts(array(
			'limit'  => '-1',
			'course_type' => '', // featured, paid, recent
			'carousel' => '',
			'categories' => ''
		), $atts));

		global $woothemes_sensei;
		$out = $args = "";
		$article_class = "column dt-sc-one-third";
		
		if(empty($categories)) {
			$cats = get_categories('taxonomy=course-category&hide_empty=1');
			$cats = get_terms( array('course-category'), array('fields' => 'ids'));
		} else {
			$cats = explode(',', $categories);
		}
	
		if($course_type == 'featured')
			$args = array('post_type' => 'course', 'posts_per_page' => $limit, 'tax_query' => array( array(
																									'taxonomy' => 'course-category',
																									'field' => 'id',
																									'terms' => $cats
																							)), 'meta_query' => array( array( 'key' => '_course_featured', 'value' => 'featured' ) ));
		elseif($course_type == 'paid')
			$args = array('post_type' => 'course', 'posts_per_page' => $limit, 'tax_query' => array( array(
																									'taxonomy' => 'course-category',
																									'field' => 'id',
																									'terms' => $cats
																							)), 'meta_query' => array( array( 'key' => '_course_woocommerce_product', 'value' => '-', 'compare' => '!=' ) ));
		else
			$args = array('post_type' => 'course', 'posts_per_page' => $limit, 'tax_query' => array( array( 
																									'taxonomy' => 'course-category',
																									'field' => 'id',
																									'terms' => $cats
																							)));

		$the_query = new WP_Query($args);
		
		if($the_query->have_posts()): $i = 1;
		 while($the_query->have_posts()): $the_query->the_post();
			
			$temp_class = ""; $column = 3;
			
			if($i == 1 && $carousel != 'true') $temp_class = $article_class." first"; else $temp_class = $article_class;
			if($i == $column) $i = 1; else $i = $i + 1;
			
				$out .= '<div class="'.$temp_class.'"><!-- Course Starts -->';
				$out .= '<article id="post-'.get_the_ID().'" class="'.implode(" ", get_post_class("dt-sc-course", get_the_ID())).'">';
				
					$out .= '<div class="dt-sc-course-thumb">';
						$out .= '<a href="'.get_permalink().'" title="'.get_the_title().'">';
							if(has_post_thumbnail()):
								$attr = array('title' => get_the_title()); $out .= get_the_post_thumbnail(get_the_ID(), 'full', $attr);
							else:
								$out .= '<img src="http://placehold.it/300x215&text=Image" alt="'.get_the_title().'" />';
							endif;
						$out .= '</a>';
					$out .= '</div>';
					
					$out .= '<div class="dt-sc-course-content">';
						$out .= '<p class="dt-sc-course-meta">'.get_the_term_list(get_the_ID(), 'course-category', ' ', ', ', ' ').'</p>';
						$out .= '<h2 class="dt-sc-course-title"><a href="'.get_permalink().'" title="'.get_the_title().'">'.get_the_title().'</a></h2>';
						$wooproductID = get_post_meta(get_the_ID(), '_course_woocommerce_product', true);
						if($wooproductID != '-' && !empty($wooproductID)) {
							$out .= '<a href="'.get_permalink($wooproductID).'" class="dt-sc-course-price">'.get_woocommerce_currency_symbol().get_post_meta($wooproductID, '_regular_price', true).'.00'.'</a>';
						} else {
							$out .= '<a href="'.wp_registration_url().'" class="dt-sc-course-price">'.__('Free', 'iamd_text_domain').'</a>';
						}
						$out .= '<span class="dt-sc-lessons">'.$woothemes_sensei->post_types->course->course_lesson_count(get_the_ID()).'&nbsp;'.__('Lessons', 'iamd_text_domain').'</span>';
					$out .= '</div>';
				
				$out .= '</article>';
			$out .= '</div><!-- Course Ends -->';
		 endwhile;
		 
		else:
			$out .= '<h2>'.__('Nothing Found.', 'iamd_text_domain').'</h2>';
			$out .= '<p>'.__('Apologies, but no results were found for the requested archive.', 'iamd_text_domain').'</p>';
		endif;
	
		if($carousel == 'true') {
			return '<div class="dt-courses-wrapper"><div class="course-carousel-arrows"><a class="prev-arrow fa fa-angle-left" href=""></a><a class="next-arrow fa fa-angle-right" href=""></a></div><div class="dt-courses-carousel">'.$out.'</div></div>';
		} else {
			return $out;
		}
	}
	add_shortcode('dt_featured_courses', 'dt_featured_courses');
	add_shortcode('dt_sc_featured_courses', 'dt_featured_courses');
} ?>