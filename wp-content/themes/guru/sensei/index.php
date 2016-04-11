<?php
#Before main content
add_action( 'sensei_before_main_content', 'dt_sensei_before_main_content', 10);
if( !function_exists('dt_sensei_before_main_content') ) {
	function dt_sensei_before_main_content() {
		
		if(is_singular('course')) :
			$page_layout = dt_theme_option('sensei',"course-layout");
			$page_layout = !empty($page_layout) ? $page_layout : "content-full-width";
			
		elseif(is_singular('lesson')) :
			$page_layout = dt_theme_option('sensei',"lesson-layout");
			$page_layout = !empty($page_layout) ? $page_layout : "content-full-width";

		elseif(is_singular('quiz')) :
			$page_layout = dt_theme_option('sensei',"quiz-layout");
			$page_layout = !empty($page_layout) ? $page_layout : "content-full-width";

		elseif(taxonomy_exists('course-category')):
			$page_layout = dt_theme_option('sensei',"course-category-layout");
			$page_layout = !empty($page_layout) ? $page_layout : "content-full-width";
		endif;
		
		if(!is_front_page() and !is_home()):
			if(dt_theme_option('general', 'disable-breadcrumb') != "on"): ?>
                <section class="breadcrumb-wrapper">
                    <div class="container">
                        <h1><?php
                        	if(is_post_type_archive('course')) _e("Courses", 'iamd_text_domain');
                        	elseif(is_post_type_archive('lesson')) _e("Lessons", 'iamd_text_domain');
							elseif(is_singular('course') || is_singular('lesson') || is_singular('quiz')) the_title();
							elseif(taxonomy_exists('course-category')){ _e('Archive of : ', 'iamd_text_domain'); echo single_cat_title(); } ?></h1>
                        <?php new dt_theme_breadcrumb; ?>
                    </div>                      
                </section><?php
			endif;
		endif;
		
		echo '<div class="content">';
		echo '<div class="container">';
			echo '<section class="'.$page_layout.'" id="primary">';
	}
}

#After main content
add_action( 'sensei_after_main_content', 'dt_sensei_after_main_content', 20);
if( !function_exists('dt_sensei_after_main_content') ) {
	function dt_sensei_after_main_content() {

		 echo "</section>";

		if(is_singular('course')) :
			$page_layout = dt_theme_option('sensei',"course-layout");
			$page_layout = !empty($page_layout) ? $page_layout : "content-full-width";
			
		elseif(is_singular('lesson')) :
			$page_layout = dt_theme_option('sensei',"lesson-layout");
			$page_layout = !empty($page_layout) ? $page_layout : "content-full-width";

		elseif(is_singular('quiz')) :
			$page_layout = dt_theme_option('sensei',"quiz-layout");
			$page_layout = !empty($page_layout) ? $page_layout : "content-full-width";

		elseif(taxonomy_exists('course-category')):
			$page_layout = dt_theme_option('sensei',"course-category-layout");
			$page_layout = !empty($page_layout) ? $page_layout : "content-full-width";
		endif;

		$show_sidebar = false;
		$sidebar_class= "";
			
		switch($page_layout):
			case 'with-left-sidebar':
				$show_sidebar 	= 	true;
				$sidebar_class 	=	"left-sidebar";
			break;
			
			case 'with-right-sidebar':
				$show_sidebar 	= 	true;
			break;
		endswitch;
		
		if($show_sidebar):
			echo "<section id='secondary' class='{$sidebar_class}'>";
				get_sidebar();
			echo '</section>';
		endif;
	  
		echo '</div>';
	echo '</div>';
	}
}

#Remove lesson archive title
add_filter('lesson_archive_title', 'dt_lesson_archive_title', 10);
function dt_lesson_archive_title() {
	return false;
}

#Remove course category archive title
add_filter('course_category_archive_title', 'dt_course_category_archive_title', 10);
function dt_course_category_archive_title() {
	return false;
}

#Remove course category archive title
add_filter('course_archive_title', 'dt_course_archive_title', 10);
function dt_course_archive_title() {
	return false;
} ?>