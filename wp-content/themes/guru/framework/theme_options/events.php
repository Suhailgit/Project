<!-- #events starts here-->
<div id="events" class="bpanel-content">
  	<!-- .bpanel-main-content starts here-->
    <div class="bpanel-main-content">
        <ul class="sub-panel">
            <li><a href="#my-events"><?php _e("Events Settings",'iamd_text_domain');?></a></li>
        </ul>
        
        <!-- #my-events starts here --> 
        <div id="my-events" class="tab-content">
        	<div class="bpanel-box">
<?php  if( class_exists('TribeEvents') ) : ?>

				<!-- Events Page -->
            	<div class="box-title"><h3><?php _e('Events','iamd_text_domain');?></h3></div>
                <div class="box-content">
                	<!-- Events Page Layout -->
                    <h6><?php _e('Layout','iamd_text_domain');?></h6>
                    <p class="note no-margin"> <?php _e("Choose the Events page layout","iamd_text_domain");?></p>
                    <div class="hr_invisible"> </div>
                    <div class="bpanel-option-set">
                    	<ul class="bpanel-layout-set">
                        <?php $layout = array('content-full-width'=>'without-sidebar','with-left-sidebar'=>'left-sidebar','with-right-sidebar'=>'right-sidebar');
							  $v = 	dt_theme_option('events',"event-archive-layout");
							  $v = !empty($v) ? $v : "content-full-width";
							  
                        foreach($layout as $key => $value):
                            $class = ( $key ==  $v ) ? " class='selected' " : "";
                            echo "<li><a href='#' rel='{$key}' {$class}><img src='".IAMD_FW_URL."theme_options/images/columns/{$value}.png' /></a></li>";
                        endforeach; ?>
                        </ul>
                        <input name="mytheme[events][event-archive-layout]" type="hidden" value="<?php echo $v;?>"/>
                    </div><!-- Events Page Layout End-->
                </div><!-- Events Page -->

				<!-- Event Detail Page -->
            	<div class="box-title"><h3><?php _e('Event Detail','iamd_text_domain');?></h3></div>
                <div class="box-content">
                	<!-- Event Detail Page Layout -->
                    <h6><?php _e('Layout','iamd_text_domain');?></h6>
                    <p class="note no-margin"> <?php _e("Choose the Event page layout","iamd_text_domain");?></p>
                    <div class="hr_invisible"> </div>
                    <div class="bpanel-option-set">
                    	<ul class="bpanel-layout-set">
                        <?php $layout = array('content-full-width'=>'without-sidebar','with-left-sidebar'=>'left-sidebar','with-right-sidebar'=>'right-sidebar');
							  $v = 	dt_theme_option('events',"event-detail-layout");
							  $v = !empty($v) ? $v : "content-full-width";
							  
                        foreach($layout as $key => $value):
                            $class = ( $key ==  $v ) ? " class='selected' " : "";
                            echo "<li><a href='#' rel='{$key}' {$class}><img src='".IAMD_FW_URL."theme_options/images/columns/{$value}.png' /></a></li>";
                        endforeach; ?>
                        </ul>
                        <input name="mytheme[events][event-detail-layout]" type="hidden" value="<?php echo $v;?>"/>
                    </div><!-- Event Detail Page Layout End-->
                </div><!-- Event Page -->

				<!-- Event Category Page -->
            	<div class="box-title"><h3><?php _e('Event Category','iamd_text_domain');?></h3></div>
                <div class="box-content">
                	<!-- Event Category Page Layout -->
                    <h6><?php _e('Layout','iamd_text_domain');?></h6>
                    <p class="note no-margin"> <?php _e("Choose the Event category page layout Style","iamd_text_domain");?></p>
                    <div class="hr_invisible"> </div>
                    <div class="bpanel-option-set">
                    	<ul class="bpanel-layout-set">
                        <?php $layout = array('content-full-width'=>'without-sidebar','with-left-sidebar'=>'left-sidebar','with-right-sidebar'=>'right-sidebar');
							  $v = 	dt_theme_option('events',"event-category-layout");
							  $v = !empty($v) ? $v : "content-full-width";
							  
                        foreach($layout as $key => $value):
                            $class = ( $key ==  $v ) ? " class='selected' " : "";
                            echo "<li><a href='#' rel='{$key}' {$class}><img src='".IAMD_FW_URL."theme_options/images/columns/{$value}.png' /></a></li>";
                        endforeach; ?>
                        </ul>
                        <input name="mytheme[events][event-category-layout]" type="hidden" value="<?php echo $v;?>"/>
                    </div><!-- Event Category Page Layout End-->
                </div><!-- Event Category Page -->

<?php 	else: ?>
				<div class="box-title"><h3><?php _e('Warning','iamd_text_domain');?></h3></div>
                <div class="box-content"><p class="note"><?php _e("You have to install and activate the TheEventsCalendar plugin to use this module ..",'iamd_text_domain');?></p></div>
<?php   endif;?>                
            </div><!--.bpanel-box End -->
        </div><!-- #my-events ends here -->        

    </div><!-- .bpanel-main-content ends here-->    
</div><!-- #events end-->