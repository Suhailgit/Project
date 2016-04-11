<!-- #sensei starts here-->
<div id="sensei" class="bpanel-content">
  	<!-- .bpanel-main-content starts here-->
    <div class="bpanel-main-content">
        <ul class="sub-panel">
            <li><a href="#my-sensei"><?php _e("Sensei Settings",'iamd_text_domain');?></a></li>
        </ul>
        
        
        <!-- #my-sensei starts here --> 
        <div id="my-sensei" class="tab-content">
        	<div class="bpanel-box">
<?php  if( class_exists('WooThemes_Sensei') ) : ?>

				<!-- Course Page -->
            	<div class="box-title"><h3><?php _e('Course Detail','iamd_text_domain');?></h3></div>
                <div class="box-content">
                	<!-- Course Detail Page Layout -->
                    <h6><?php _e('Layout','iamd_text_domain');?></h6>
                    <p class="note no-margin"> <?php _e("Choose the Course page layout","iamd_text_domain");?></p>
                    <div class="hr_invisible"> </div>
                    <div class="bpanel-option-set">
                    	<ul class="bpanel-layout-set">
                        <?php $layout = array('content-full-width'=>'without-sidebar','with-left-sidebar'=>'left-sidebar','with-right-sidebar'=>'right-sidebar');
							  $v = 	dt_theme_option('sensei',"course-layout");
							  $v = !empty($v) ? $v : "content-full-width";
							  
                        foreach($layout as $key => $value):
                            $class = ( $key ==  $v ) ? " class='selected' " : "";
                            echo "<li><a href='#' rel='{$key}' {$class}><img src='".IAMD_FW_URL."theme_options/images/columns/{$value}.png' /></a></li>";
                        endforeach; ?>
                        </ul>
                        <input name="mytheme[sensei][course-layout]" type="hidden" value="<?php echo $v;?>"/>
                    </div><!-- Course Detail Page Layout End-->
                </div><!-- Course Page -->

				<!-- Lesson Page -->
            	<div class="box-title"><h3><?php _e('Lesson Detail','iamd_text_domain');?></h3></div>
                <div class="box-content">
                	<!-- Lesson Detail Page Layout -->
                    <h6><?php _e('Layout','iamd_text_domain');?></h6>
                    <p class="note no-margin"> <?php _e("Choose the Lesson page layout","iamd_text_domain");?></p>
                    <div class="hr_invisible"> </div>
                    <div class="bpanel-option-set">
                    	<ul class="bpanel-layout-set">
                        <?php $layout = array('content-full-width'=>'without-sidebar','with-left-sidebar'=>'left-sidebar','with-right-sidebar'=>'right-sidebar');
							  $v = 	dt_theme_option('sensei',"lesson-layout");
							  $v = !empty($v) ? $v : "content-full-width";
							  
                        foreach($layout as $key => $value):
                            $class = ( $key ==  $v ) ? " class='selected' " : "";
                            echo "<li><a href='#' rel='{$key}' {$class}><img src='".IAMD_FW_URL."theme_options/images/columns/{$value}.png' /></a></li>";
                        endforeach; ?>
                        </ul>
                        <input name="mytheme[sensei][lesson-layout]" type="hidden" value="<?php echo $v;?>"/>
                    </div><!-- Lesson Detail Page Layout End-->
                </div><!-- Lesson Page -->

				<!-- Quiz Page -->
            	<div class="box-title"><h3><?php _e('Quiz Detail','iamd_text_domain');?></h3></div>
                <div class="box-content">
                	<!-- Quiz Detail Page Layout -->
                    <h6><?php _e('Layout','iamd_text_domain');?></h6>
                    <p class="note no-margin"> <?php _e("Choose the Quiz page layout","iamd_text_domain");?></p>
                    <div class="hr_invisible"> </div>
                    <div class="bpanel-option-set">
                    	<ul class="bpanel-layout-set">
                        <?php $layout = array('content-full-width'=>'without-sidebar','with-left-sidebar'=>'left-sidebar','with-right-sidebar'=>'right-sidebar');
							  $v = 	dt_theme_option('sensei',"quiz-layout");
							  $v = !empty($v) ? $v : "content-full-width";
							  
                        foreach($layout as $key => $value):
                            $class = ( $key ==  $v ) ? " class='selected' " : "";
                            echo "<li><a href='#' rel='{$key}' {$class}><img src='".IAMD_FW_URL."theme_options/images/columns/{$value}.png' /></a></li>";
                        endforeach; ?>
                        </ul>
                        <input name="mytheme[sensei][quiz-layout]" type="hidden" value="<?php echo $v;?>"/>
                    </div><!-- Quiz Detail Page Layout End-->
                </div><!-- Quiz Page -->

				<!-- Course Category Page -->
            	<div class="box-title"><h3><?php _e('Course Category','iamd_text_domain');?></h3></div>
                <div class="box-content">
                	<!-- Course Category Page Layout -->
                    <h6><?php _e('Layout','iamd_text_domain');?></h6>
                    <p class="note no-margin"> <?php _e("Choose the Course category page layout Style","iamd_text_domain");?></p>
                    <div class="hr_invisible"> </div>
                    <div class="bpanel-option-set">
                    	<ul class="bpanel-layout-set">
                        <?php $layout = array('content-full-width'=>'without-sidebar','with-left-sidebar'=>'left-sidebar','with-right-sidebar'=>'right-sidebar');
							  $v = 	dt_theme_option('sensei',"course-category-layout");
							  $v = !empty($v) ? $v : "content-full-width";
							  
                        foreach($layout as $key => $value):
                            $class = ( $key ==  $v ) ? " class='selected' " : "";
                            echo "<li><a href='#' rel='{$key}' {$class}><img src='".IAMD_FW_URL."theme_options/images/columns/{$value}.png' /></a></li>";
                        endforeach; ?>
                        </ul>
                        <input name="mytheme[sensei][course-category-layout]" type="hidden" value="<?php echo $v;?>"/>
                    </div><!-- Course Category Page Layout End-->
                </div><!-- Course Category Page -->

<?php 	else: ?>
				<div class="box-title"><h3><?php _e('Warning','iamd_text_domain');?></h3></div>
                <div class="box-content"><p class="note"><?php _e("You have to install and activate the Sensei plugin to use this module ..",'iamd_text_domain');?></p></div>
<?php   endif;?>                
            </div><!--.bpanel-box End -->
        </div><!-- #my-sensei ends here -->        

    </div><!-- .bpanel-main-content ends here-->    
</div><!-- #sensei end-->