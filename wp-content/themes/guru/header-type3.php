<!DOCTYPE html>
<!--[if lt IE 7]>  <html class="ie ie6 lte9 lte8 lte7" <?php language_attributes(); ?>> <![endif]-->
<!--[if IE 7]>     <html class="ie ie7 lte9 lte8 lte7" <?php language_attributes(); ?>> <![endif]-->
<!--[if IE 8]>     <html class="ie ie8 lte9 lte8" <?php language_attributes(); ?>> <![endif]-->
<!--[if IE 9]>     <html class="ie ie9 lte9" <?php language_attributes(); ?>> <![endif]-->
<!--[if gt IE 9]>  <html> <![endif]-->
<!--[if !IE]><!--> <html <?php language_attributes(); ?>> <!--<![endif]-->
<head>
	<meta charset="<?php bloginfo( 'charset' ); ?>" />    
	<?php is_dt_theme_moible_view(); ?>
	<meta name="description" content="<?php bloginfo('description'); ?>"/>
	<meta name="author" content="designthemes"/>
    
    <!--[if lt IE 9]> 
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
    <![endif]-->
	
	<title><?php dt_theme_public_title(); ?></title>

	<link rel="alternate" type="application/rss+xml" title="RSS 2.0" href="<?php bloginfo('rss2_url'); ?>" />
	<link rel="profile" href="http://gmpg.org/xfn/11" />
	<link rel="pingback" href="<?php bloginfo('pingback_url'); ?>" />

<?php
	//LOAD THEME STYLES...
	if(dt_theme_option('integration', 'enable-header-code') != '') echo stripslashes(dt_theme_option('integration', 'header-code'));	
	wp_head(); ?>
</head>
    
<body <?php if(dt_theme_option("appearance","layout") == "boxed") body_class('boxed'); else body_class(); ?>>
    <div class="main-content">
	<!-- wrapper div starts here -->
    <div id="wrapper">
    
		<?php if(dt_theme_option('general', 'header-top-bar') != true): ?>
            <div class="top-bar">
                <div class="container">
                	<div class="float-left">
						<?php echo do_shortcode(stripslashes(dt_theme_option('general', 'top-bar-left-content'))); ?>
                    </div>
                	<div class="float-right"><?php
						if(dt_theme_is_plugin_active('woothemes-sensei/woothemes-sensei.php')):
							$arr_sensei = get_option('woothemes-sensei-settings');
							
							if(!is_user_logged_in()): ?>
                            	<a href="<?php echo get_permalink($arr_sensei['my_course_page']);?>" title="<?php _e('Login / Register Now', 'iamd_text_domain');?>"><?php _e('Login&nbsp;&nbsp;/&nbsp;&nbsp;Register Now', 'iamd_text_domain');?></a><?php
							else:
								$current_user = wp_get_current_user();
								echo '<a href="'.get_permalink($arr_sensei['my_course_page']).'">'.get_avatar( $current_user->ID, 38).'<span>'.__('Welcome', 'iamd_text_domain').'&nbsp;'.$current_user->display_name.'</span>'.'</a>'.'&nbsp;&nbsp;/&nbsp;&nbsp;';
								echo '<a href="'.wp_logout_url(get_permalink()).'" title="'.__('Logout', 'iamd_text_domain').'">'.__('Logout', 'iamd_text_domain').'</a>';
							endif;
						endif;
                    ?></div>
                </div>
            </div>
        <?php endif; ?>
        
    	<!-- header starts here -->
        <div id="header-wrapper">
        <header>
	    	<!-- main menu container starts here -->
            <div class="menu-main-menu-container header3">
                <div id="logo">
                    <?php if(dt_theme_option('general', 'logo') == true and dt_theme_option('general', 'logo-url') != ""): ?>
                            <a href="<?php echo home_url(); ?>" title="<?php bloginfo('title'); ?>"><img src="<?php echo dt_theme_option('general', 'logo-url'); ?>" alt="<?php bloginfo('title'); ?>" title="<?php bloginfo('title'); ?>" /></a>                           
                    <?php elseif(dt_theme_option('general', 'logo') == true and dt_theme_option('general', 'logo-url') == ""): ?>
                            <a href="<?php echo home_url(); ?>" title="<?php bloginfo('title'); ?>"><img src="<?php echo get_template_directory_uri(); ?>/images/logo.png" alt="<?php bloginfo('title'); ?>" title="<?php bloginfo('title'); ?>" /></a>
                    <?php else: ?>
                        <div class="logo-title"><h1 id="site-title"><a href="<?php echo home_url(); ?>" title="<?php bloginfo('title'); ?>"><?php bloginfo('title'); ?></a></h1><h2 id="site-description"><?php bloginfo('description'); ?></h2></div>
                    <?php endif; ?>
                </div>
                <div class="container">
					<div id="primary-menu">
                        <nav id="main-menu"><?php
                            //CHECK ONE-PAGE / NORMAL PAGE..
                            if( is_page_template('tpl-onepage.php') ):
                                $meta = get_post_meta($post->ID, '_tpl_default_settings', true);
                                $cmenu = "<li class='menu-item menu-item-type-post_type menu-item-object-page'><a href='".home_url()."/#".$post->post_name."'>".__('Home', 'iamd_text_domain')."</a></li>";
                                wp_nav_menu( array('menu' => $meta['onepage_menu'], 'container'  => false, 'menu_id' => 'menu-main-menu', 'menu_class' => 'onepage_menu menu', 'fallback_cb' => 'dt_theme_default_navigation', 'walker' => new DTOnePageMenuWalker(), 'items_wrap' => '<ul id="%1$s" class="%2$s">'.$cmenu.'%3$s</ul>',));
                            else:
                                wp_nav_menu( array('theme_location' => 'primary-menu', 'container'  => false, 'menu_id' => 'menu-main-menu', 'menu_class' => 'menu', 'fallback_cb' => 'dt_theme_default_navigation', 'walker' => new DTFrontEndMenuWalker()));
                            endif; ?>
                        </nav>
					</div>                        
                </div>
            </div><!-- main menu container ends here -->
        </header>
        </div>
        <!-- header ends here -->