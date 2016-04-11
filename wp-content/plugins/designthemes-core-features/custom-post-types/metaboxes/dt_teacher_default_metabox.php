<?php
global $post;
$teacher_settings = get_post_meta ( $post->ID, '_teacher_settings', TRUE );
$teacher_settings = is_array ( $teacher_settings ) ? $teacher_settings : array (); ?>

<!-- Additional Fields -->
<div class="custom-box meta-fields">
	<div class="column one-column">
        <div class="column one-eigth">  
            <label><?php _e('Role','dt_themes');?></label>
        </div>
        <div class="column one-fifth">  
            <?php $v = array_key_exists("role",$teacher_settings) ?  $teacher_settings['role'] : '';?>
            <input id="role" name="_role" class="large" type="text" value="<?php echo $v;?>" style="width:100%;" />
            <p class="note"> <?php _e("Put member role.",'dt_themes');?> </p>
        </div>
        
        <div class="column one-eigth">
            <label><?php _e('Website','dt_themes');?></label>
        </div>
        <div class="column one-fifth">  
            <?php $v = array_key_exists("url",$teacher_settings) ?  $teacher_settings['url'] : '';?>
            <input id="url" name="_url" class="large" type="text" value="<?php echo $v;?>" style="width:100%;" />
            <p class="note"> <?php _e("Put member's website url.",'dt_themes');?> </p>
        </div>
        
        <div class="column one-eigth">
            <label><?php _e('Experience','dt_themes');?></label>
        </div>
        <div class="column one-fifth last">
            <?php $v = array_key_exists("exp",$teacher_settings) ?  $teacher_settings['exp'] : '';?>
            <input id="exp" name="_exp" class="large" type="text" value="<?php echo $v;?>" style="width:100%;" />
            <p class="note"> <?php _e("Put member's experience.",'dt_themes');?> </p>
        </div>
	</div>
    
	<div class="column one-column" style="margin-top:10px;">
        <div class="column one-seventh">
            <label><?php _e('Course Submitted','dt_themes');?></label>
        </div>
        <div class="column one-fourth">
            <?php $v = array_key_exists("course",$teacher_settings) ?  $teacher_settings['course'] : '';?>
            <input id="course" name="_course" class="large" type="text" value="<?php echo $v;?>" style="width:100%;" />
            <p class="note"> <?php _e("Put member's submitted course.",'dt_themes');?> </p>
        </div>
        
        <div class="column one-seventh">
            <label><?php _e('Specialist In','dt_themes');?></label>
        </div>
        <div class="column one-fourth">
            <?php $v = array_key_exists("special",$teacher_settings) ?  $teacher_settings['special'] : '';?>
            <input id="special" name="_special" class="large" type="text" value="<?php echo $v;?>" style="width:100%;" />
            <p class="note"> <?php _e("Put member's specialist in.",'dt_themes');?> </p>
        </div>
	</div>        
</div>
<!-- Additional Fields End -->

<!-- Layout -->
<div class="custom-box ">
	<div class="column one-sixth">
		<label><?php _e('Layout','dt_themes');?> </label>
	</div>
	<div class="column five-sixth last">
		<ul class="dt-bpanel-layout-set"><?php
			$layouts = array('content-full-width'=>'without-sidebar','with-left-sidebar'=>'left-sidebar','with-right-sidebar'=>	'right-sidebar');
			
			$v =  array_key_exists("layout",$teacher_settings) ?  $teacher_settings['layout'] : 'content-full-width';
			foreach($layouts as $key => $value):
				$class = ($key == $v) ? " class='selected' " : "";
				echo "<li><a href='#' rel='{$key}' {$class}><img src='".IAMD_FW_URL."theme_options/images/columns/{$value}.png' /></a></li>";
			endforeach; ?>
		</ul>
		<?php $v = array_key_exists("layout",$teacher_settings) ? $teacher_settings['layout'] : 'content-full-width';?>
		<input id="mytheme-teacher-layout" name="layout" type="hidden" value="<?php echo $v;?>" />
		<p class="note"> <?php _e("You can choose between a left, right or full width.",'dt_themes');?> </p>
	</div>
</div>
<!-- Layout End-->

<!-- Allow Comments -->
<div class="custom-box">
	<div class="column one-sixth">
		<label><?php _e('Allow Comments','dt_themes');?></label>
	</div>
	<div class="column five-sixth last"><?php
	$switchclass = array_key_exists ( "comment", $teacher_settings ) ? 'checkbox-switch-on' : 'checkbox-switch-off';
	$checked = array_key_exists ( "comment", $teacher_settings ) ? ' checked="checked"' : '';
	
	?><div data-for="mytheme-teacher-comment" class="dt-checkbox-switch <?php echo $switchclass;?>"></div>
		<input id="mytheme-teacher-comment" class="hidden" type="checkbox" name="mytheme-teacher-comment" value="true" <?php echo $checked;?> />
		<p class="note"> <?php _e('YES! to allow comments for this member.','dt_themes');?> </p>
	</div>
</div>
<!-- Allow Comments End -->

<!-- Show Social Share -->
<div class="custom-box">
	<div class="column one-sixth">
		<label><?php _e('Show Social Links','dt_themes');?></label>
	</div>
	<div class="column five-sixth last"><?php
	$switchclass = array_key_exists ( "show-social-share", $teacher_settings ) ? 'checkbox-switch-on' : 'checkbox-switch-off';
	$checked = array_key_exists ( "show-social-share", $teacher_settings ) ? ' checked="checked"' : '';
	?><div data-for="mytheme-social-share" class="dt-checkbox-switch <?php echo $switchclass;?>"></div>
		<input id="mytheme-social-share" class="hidden" type="checkbox" name="mytheme-social-share" value="true" <?php echo $checked;?> />
		<p class="note"> <?php _e('Would you like to show the social share for member.','dt_themes');?> </p>
	</div>
</div>
<!-- Show Social Share End -->


<div class="custom-box custom_teacher_mata">

    <div class="column one-sixth"> </div>
    
    <div class="column two-third last">
    
    	<div class="column one-column">
            <input type="button" value="<?php _e('Add New Sociable','iamd_text_domain');?>" class="black mytheme_team_add_item" />
            <p class="note"> <?php _e('Manage Social Network icons list to display','iamd_text_domain');?> </p>
		</div>
    
        <div class="column one-column">
            <ul class="menu-to-edit-team">
                <?php
				$surls = array_key_exists("social-link", $teacher_settings) ?  $teacher_settings['social-link'] : '';
				$sicon = array_key_exists("social-icon", $teacher_settings) ?  $teacher_settings['social-icon'] : '';
				if(is_array($surls)):
					$i=0;
					foreach($surls as $s): ?>
					<li id="<?php echo $i;?>">
					  <div class="item-bar">
						  <span class="item-title"><?php $n = $sicon[$i]; $n = substr($n, 3); $n = ucwords($n); echo $n;?></span>
						  <span class="item-control"><a class="item-edit"><?php _e('Edit','iamd_text_domain');?></a></span>
					  </div>
					  <div class="item-content" style="display: none;">
						  <span><label><?php _e('Sociable Icon','iamd_text_domain');?></label>
							  <?php echo dt_theme_team_sociables_selection('icon', $sicon[$i]);?></span>
						  <span><label><?php _e('Sociable Link','iamd_text_domain');?></label>
							  <input type="text" name="social_link[]" class="social-link" value="<?php echo $s;?>"/>
						  </span>
						  
						  <div class="remove-cancel-links">
							  <span class="remove-item"><?php _e('Remove','iamd_text_domain');?></span>
							  <span class="meta-sep"> | </span>
							  <span class="cancel-item"><?php _e('Cancel','iamd_text_domain');?></span>
						  </div>
					  </div>
					</li>
			    <?php $i++; endforeach; endif; ?>
            </ul>
            <ul class="sample-to-edit" style="display:none;">
                <!-- Social Item -->
                <li>
                    <!-- .item-bar -->
                    <div class="item-bar">
                        <span class="item-title"><?php _e('Sociable','iamd_text_domain');?></span>
                        <span class="item-control"><a class="item-edit"><?php _e('Edit','iamd_text_domain');?></a></span>
                    </div><!-- .item-bar -->
                    <!-- .item-content -->
                    <div class="item-content">                                
                        <span class="column one-half"><label><?php _e('Sociable Icon','iamd_text_domain');?></label><?php echo dt_theme_team_sociables_selection('icon');?></span>
                        <span class="column one-half last"><label><?php _e('Sociable Link','iamd_text_domain');?></label><input type="text" name="social_link[]" class="social-link" /></span>
                        <div class="remove-cancel-links">
                            <span class="remove-item"><?php _e('Remove','iamd_text_domain');?></span>
                            <span class="meta-sep"> | </span>
                            <span class="cancel-item"><?php _e('Cancel','iamd_text_domain');?></span>
                        </div>
                    </div><!-- .item-content end -->
                </li><!-- Social Item End-->
            </ul>
        </div>
    </div>
</div>