        <footer id="footer">
        	<div class="footer-top-links">
                <div class="container">
                    <?php wp_nav_menu( array('theme_location' => 'another-secondary-menu', 'container'  => false, 'fallback_cb' => 'dt_theme_footer_navigation')); ?>
                </div>
			</div>                
        
            <?php if(dt_theme_option('general', 'show-footer')): ?>
                <div class="footer-widgets">
                    <div class="container"><?php dt_theme_show_footer_widgetarea(dt_theme_option('general','footer-columns')); ?></div>
                </div>                
            <?php endif; ?>
    
            <div class="footer-info">
                <div class="container">
                    <?php if(dt_theme_option('general','show-copyrighttext') == "on"): ?>
                        <p class="copyright"><?php echo stripslashes(dt_theme_option('general','copyright-text')); ?></p>
                    <?php endif; ?>    
                    <?php wp_nav_menu( array('theme_location' => 'secondary-menu', 'container'  => false, 'menu_id' => 'footer-menu', 'menu_class' => 'footer-bottom-links', 'fallback_cb' => 'dt_theme_footer_navigation')); ?>
                </div>
            </div>
        </footer>
    </div>
</div>
<?php if(dt_theme_option('integration', 'enable-body-code') != '') echo stripslashes(dt_theme_option('integration', 'body-code'));
wp_footer(); ?>
</body>
</html>