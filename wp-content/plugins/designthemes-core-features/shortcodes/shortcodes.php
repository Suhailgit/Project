<?php
class DTCoreShortcodesDefination {
	
	function __construct() {
		
		/* Accordion Shortcode */
		add_shortcode ( "dt_sc_accordion_group", array (
				$this,
				"dt_sc_accordion_group" 
		) );
		
		/* Box Shortcode */
		add_shortcode ( "dt_sc_box", array (
				$this,
				"dt_sc_box" 
		) );
		
		/* Button Shortcode */
		add_shortcode ( "dt_sc_button", array (
				$this,
				"dt_sc_button" 
		) );
		
		/* Code Shortcode */
		add_shortcode ( "dt_sc_code", array (
				$this,
				"dt_sc_code" 
		) );
		
		/* Columns Shortcode */
		
		add_shortcode ( "dt_sc_full_width", array ( 
				$this,
				"dt_sc_columns"
		) );
		
		add_shortcode ( "dt_sc_one_half", array (
				$this,
				"dt_sc_columns" 
		) );
		add_shortcode ( "dt_sc_one_third", array (
				$this,
				"dt_sc_columns" 
		) );
		add_shortcode ( "dt_sc_one_fourth", array (
				$this,
				"dt_sc_columns" 
		) );
		add_shortcode ( "dt_sc_one_fifth", array (
				$this,
				"dt_sc_columns" 
		) );
		
		add_shortcode ( "dt_sc_one_sixth", array (
				$this,
				"dt_sc_columns" 
		) );
		add_shortcode ( "dt_sc_two_sixth", array (
				$this,
				"dt_sc_columns" 
		) );
		add_shortcode ( "dt_sc_two_third", array (
				$this,
				"dt_sc_columns" 
		) );
		add_shortcode ( "dt_sc_three_fourth", array (
				$this,
				"dt_sc_columns" 
		) );
		add_shortcode ( "dt_sc_two_fifth", array (
				$this,
				"dt_sc_columns" 
		) );
		add_shortcode ( "dt_sc_three_fifth", array (
				$this,
				"dt_sc_columns" 
		) );
		add_shortcode ( "dt_sc_four_four", array (
				$this,
				"dt_sc_columns" 
		) );
		add_shortcode ( "dt_sc_three_sixth", array (
				$this,
				"dt_sc_columns" 
		) );
		add_shortcode ( "dt_sc_four_fifth", array (
				$this,
				"dt_sc_columns" 
		) );
		add_shortcode ( "dt_sc_four_sixth", array (
				$this,
				"dt_sc_columns" 
		) );
		add_shortcode ( "dt_sc_five_sixth", array (
				$this,
				"dt_sc_columns" 
		) );
		
		/* Column with inner */
		add_shortcode ( "dt_sc_one_half_inner", array (
				$this,
				"dt_sc_columns" 
		) );
		add_shortcode ( "dt_sc_one_third_inner", array (
				$this,
				"dt_sc_columns" 
		) );
		add_shortcode ( "dt_sc_one_fourth_inner", array (
				$this,
				"dt_sc_columns" 
		) );
		add_shortcode ( "dt_sc_one_fifth_inner", array (
				$this,
				"dt_sc_columns" 
		) );
		
		add_shortcode ( "dt_sc_one_sixth_inner", array (
				$this,
				"dt_sc_columns" 
		) );
		add_shortcode ( "dt_sc_two_sixth_inner", array (
				$this,
				"dt_sc_columns" 
		) );
		add_shortcode ( "dt_sc_two_third_inner", array (
				$this,
				"dt_sc_columns" 
		) );
		add_shortcode ( "dt_sc_three_fourth_inner", array (
				$this,
				"dt_sc_columns" 
		) );
		add_shortcode ( "dt_sc_two_fifth_inner", array (
				$this,
				"dt_sc_columns" 
		) );
		add_shortcode ( "dt_sc_three_fifth_inner", array (
				$this,
				"dt_sc_columns" 
		) );
		add_shortcode ( "dt_sc_four_four_inner", array (
				$this,
				"dt_sc_columns" 
		) );
		add_shortcode ( "dt_sc_three_sixth_inner", array (
				$this,
				"dt_sc_columns" 
		) );
		add_shortcode ( "dt_sc_four_sixth_inner", array (
				$this,
				"dt_sc_columns" 
		) );
		add_shortcode ( "dt_sc_five_sixth_inner", array (
				$this,
				"dt_sc_columns" 
		) );
		add_shortcode ( "dt_sc_four_fifth_inner", array (
				$this,
				"dt_sc_columns" 
		) );		
		
		/* Divider Shortcodes */
		add_shortcode ( "dt_sc_clear", array ( 
				$this,
				"dt_sc_clear"
		) );
		add_shortcode ( "dt_sc_hr", array (
				$this,
				"dt_sc_dividers" 
		) );
		add_shortcode ( "dt_sc_hr_top", array (
				$this,
				"dt_sc_hr_top"
		) );
		add_shortcode ( "dt_sc_hr_medium", array (
				$this,
				"dt_sc_dividers" 
		) );
		add_shortcode ( "dt_sc_hr_large", array (
				$this,
				"dt_sc_dividers" 
		) );
		add_shortcode ( "dt_sc_hr_invisible", array (
				$this,
				"dt_sc_dividers" 
		) );
		add_shortcode ( "dt_sc_hr_invisible_medium", array (
				$this,
				"dt_sc_dividers" 
		) );
		add_shortcode ( "dt_sc_hr_invisible_large", array (
				$this,
				"dt_sc_dividers" 
		) );
		
		add_shortcode ( "dt_sc_icon_box", array (
				$this,
				"dt_sc_icon_box" 
		) );
		
		/* Dropcap Shortcode */
		add_shortcode ( "dt_sc_dropcap", array (
				$this,
				"dt_sc_dropcap" 
		) );
		
		/* Highlighter Shortcode */
		add_shortcode ( "dt_sc_highlighter", array (
				$this,
				"dt_sc_highlighter" 
		) );
		
		/* Ordered List Shortcode */
		add_shortcode ( "dt_sc_fancy_ol", array (
				$this,
				"dt_sc_fancy_ol" 
		) );
		
		/* Unordered List Shortcode */
		add_shortcode ( "dt_sc_fancy_ul", array (
				$this,
				"dt_sc_fancy_ul" 
		) );
		
		/* Pricing Table */
		add_shortcode ( "dt_sc_pricing_table", array (
				$this,
				"dt_sc_pricing_table" 
		) );

		/* Pricing Table Rounded */
		add_shortcode ( "dt_sc_pricing_table_rounded", array (
				$this,
				"dt_sc_pricing_table"
		) );

		/* Pricing Table with Image */
		add_shortcode ( "dt_sc_pricing_table_with_image", array (
				$this,
				"dt_sc_pricing_table" 
		) );
		
		/* Pricing Table Item */
		add_shortcode ( "dt_sc_pricing_table_item", array (
				$this,
				"dt_sc_pricing_table_item" 
		) );
		
		/* Progress Bar Shortcode */
		add_shortcode ( "dt_sc_progressbar", array (
				$this,
				"dt_sc_progressbar" 
		) );
		
		/* PullQuotes Shortcode */
		add_shortcode ( "dt_sc_pullquote", array (
				$this,
				"dt_sc_pullquote" 
		) );
		
		/* BlockQuotes Shortcode */
		add_shortcode ( "dt_sc_blockquote", array (
				$this,
				"dt_sc_blockquote" 
		) );
		
		/* Tabs */
		add_shortcode ( "dt_sc_tab", array (
				$this,
				"dt_sc_tab" 
		) );
		add_shortcode ( "dt_sc_tabs_horizontal", array (
				$this,
				"dt_sc_tabs_horizontal" 
		) );
		add_shortcode ( "dt_sc_tabs_horizontal_frame_less", array (
				$this,
				"dt_sc_tabs_horizontal_frame_less" 
		) );
		add_shortcode ( "dt_sc_tabs_vertical", array (
				$this,
				"dt_sc_tabs_vertical" 
		) );
		add_shortcode ( "dt_sc_tabs_vertical_with_icon", array (
				$this,
				"dt_sc_tabs_vertical" 
		) );
		
		/* Team Shortcode */
		add_shortcode ( "dt_sc_team", array (
				$this,
				"dt_sc_team" 
		) );
		
		/* Testimonial Shortcode */
		add_shortcode ( "dt_sc_testimonial", array (
				$this,
				"dt_sc_testimonial" 
		) );
		
		/* Toggle Shortcode */
		add_shortcode ( "dt_sc_toggle", array (
				$this,
				"dt_sc_toggle" 
		) );
		
		/* Toogle Framed Shortcode */
		add_shortcode ( "dt_sc_toggle_framed", array (
				$this,
				"dt_sc_toggle_framed" 
		) );
		
		/* Tooltip Shortcodes */
		add_shortcode ( "dt_sc_tooltip", array (
				$this,
				"dt_sc_tooltip" 
		) );
		
		/* Full width Shortcode*/
		add_shortcode("dt_sc_fullwidth_section", array(
				$this,
				"dt_sc_fullwidth_section"
		) );

		/* Full Width Video Shortcode */
		add_shortcode("dt_sc_fullwidth_video", array(
				$this,
				"dt_sc_fullwidth_video"
		));

		/* Page Builder Utils */
		add_shortcode ( "dt_sc_doshortcode", array (
				$this,
				"dt_sc_doshortcode"
		));

		/* Resizeable Column */
		add_shortcode ( "dt_sc_resizable", array (
				$this,
				"dt_sc_resizable"
		));

		add_shortcode ( "dt_sc_resizable_inner", array (
				$this,
				"dt_sc_resizable"
		));

		add_shortcode ( "dt_sc_widgets", array (
				$this,
				"dt_sc_widgets"
		));
		/* Page Builder Utils */
	}
	
	
	/**
	 *
	 * @param string $content        	
	 * @return string
	 */
	function dtShortcodeHelper($content = null) {
		$content = do_shortcode ( shortcode_unautop ( $content ) );
		$content = preg_replace ( '#^<\/p>|^<br \/>|<p>$#', '', $content );
		$content = preg_replace ( '#<br \/>#', '', $content );
		return trim ( $content );
	}
	
	
	/**
	 *
	 * @param string $dir        	
	 * @return multitype:
	 */
	function dtListImages($dir = null) {
		$images = array ();
		$icon_types = array (
				'jpg',
				'jpeg',
				'gif',
				'png' 
		);
		
		if (is_dir ( $dir )) {
			$handle = opendir ( $dir );
			while ( false !== ($dirname = readdir ( $handle )) ) {
				
				if ($dirname != "." && $dirname != "..") {
					$parts = explode ( '.', $dirname );
					$ext = strtolower ( $parts [count ( $parts ) - 1] );
					
					if (in_array ( $ext, $icon_types )) {
						$option = $parts [count ( $parts ) - 2];
						$images [$dirname] = str_replace ( ' ', '', $option );
					}
				}
			}
			closedir ( $handle );
		}
		
		return $images;
	}
	
	
	/**
	 *
	 * @param array $attrs        	
	 * @param string $content        	
	 * @return string
	 */
	function dt_sc_accordion_group($attrs, $content = null) {
		$content = DTCoreShortcodesDefination::dtShortcodeHelper ( $content );
		$out = str_replace ( "<h5 class='dt-sc-toggle'>", "<h5 class='dt-sc-toggle-accordion'>", $content );
		$out = "<div class='dt-sc-toggle-frame-set'>{$out}</div>";
		
		return $out;
	}
	
	
	/**
	 *
	 * @param array $attrs        	
	 * @param string $content        	
	 * @return string
	 */
	function dt_sc_box($attrs, $content = null) {
		extract ( shortcode_atts ( array (
				'type' => '',
				'title' => '',
				'variation' => '',
				'bgcolor' => '',
				'textcolor' => '' 
		), $attrs ) );
		
		$out = DTCoreShortcodesDefination::dtShortcodeHelper ( $content );
		
		$type = (empty ( $type )) ? 'titled-box' : $type;
		
		$variation = (($variation) && (empty ( $bgcolor ))) ? ' ' . $variation : '';
		
		$styles = array ();
		if ($bgcolor)
			$styles [] = 'background-color:' . $bgcolor . ';border-color:' . $bgcolor . ';';
		if ($textcolor)
			$styles [] = 'color:' . $textcolor . ';';
		$style = join ( '', array_unique ( $styles ) );
		$style = ! empty ( $style ) ? ' style="' . $style . '"' : '';
		
		if ($type == 'titled-box') :
			$title = "<h6 class='dt-sc-{$type}-title' {$style}>{$title}</h6>";
			
			$out = "<div class='dt-sc-{$type} {$variation}'>";
			$out .= $title;
			$out .= "<div class='dt-sc-{$type}-content'>{$content}</div>";
			$out .= "</div>";
		 else :
			
			$out = "<div class='dt-sc-{$type}'>{$content}</div>";
		endif;
		
		return $out;
	}
	
	
	/**
	 *
	 * @param array $attrs        	
	 * @param string $content        	
	 * @return string
	 */
	function dt_sc_button($attrs, $content = null) {
		extract ( shortcode_atts ( array (
				'size' => '',
				'align' => '',
				'link' => '#',
				'target' => '',
				'variation' => '',
				'bgcolor' => '',
				'textcolor' => '' 
		), $attrs ) );
		
		$content = DTCoreShortcodesDefination::dtShortcodeHelper ( $content );
		
		$size = ($size == 'xlarge') ? ' xlarge' : $size;
		$size = ($size == 'large') ? ' large' : $size;
		$size = ($size == 'medium') ? ' medium' : $size;
		$size = ($size == 'small') ? ' small' : $size;
		
		$align = ($align) ? ' align' . $align : '';
		
		$target = ($target) ? 'target="'.$target.'"' : '';
		
		$variation = (($variation) && (empty ( $bgcolor ))) ? ' ' . $variation : '';
		
		$styles = array ();
		if ($bgcolor)
			$styles [] = 'background-color:' . $bgcolor . ';border-color:' . $bgcolor . ';';
		if ($textcolor)
			$styles [] = 'color:' . $textcolor . ';';
		$style = join ( '', array_unique ( $styles ) );
		$style = ! empty ( $style ) ? ' style="' . $style . '"' : '';
		
		$link = esc_url ( $link );
		
		$out = "<a href='{$link}' {$target} class='dt-sc-button {$size} {$align} {$variation}' {$style}>{$content}</a>";
		return $out;
	}
	
	
	/**
	 *
	 * @param array $attrs        	
	 * @param string $content        	
	 * @return string
	 */
	function dt_sc_code($attrs, $content = null) {
		$array = array (
				'[' => '&#91;',
				']' => '&#93;',
				'/' => '&#47;',
				'<' => '&#60;',
				'>' => '&#62;',
				'<br />' => '&nbsp;' 
		);
		$content = strtr ( $content, $array );
		$out = "<pre>{$content}</pre>";
		return $out;
	}
	
	
	/**
	 *
	 * @param array $attrs        	
	 * @param string $content        	
	 * @param string $shortcodename        	
	 * @return string
	 */
	function dt_sc_columns($attrs, $content = null, $shortcodename = "") {
		extract ( shortcode_atts ( array (
				'id' => '',
				'class' => '' 
		), $attrs ) );
		
		$shortcodename = str_replace ( "_", "-", $shortcodename );
		$shortcodename = str_replace ( "-inner", "", $shortcodename );		
		$id = ($id != '') ? " id = '{$id}'" : '';
		$first = (isset ( $attrs [0] ) && trim ( $attrs [0] == 'first' )) ? 'first' : '';
		$content = DTCoreShortcodesDefination::dtShortcodeHelper ( $content );
		$out = "<div {$id} class='column {$shortcodename} {$class} {$first}'>{$content}</div>";
		return $out;
	}
	
	
	/**
	 *
	 * @param array $attrs        	
	 * @param string $content        	
	 * @return string
	 */
	function dt_sc_clear($attrs, $content = null) {
		return '<div class="dt-sc-clear"></div>';
	}
	
	
	/**
	 *
	 * @param array $attrs        	
	 * @param string $content        	
	 * @param string $shortcodename        	
	 * @return string
	 */
	function dt_sc_dividers($attrs, $content = null, $shortcodename = "") {
		extract ( shortcode_atts ( array (
				'class' => '',
				'top' => '' 
		), $attrs ) );
		
		if ("dt_sc_hr" === $shortcodename || "dt_sc_hr_medium" === $shortcodename || "dt_sc_hr_large" === $shortcodename) {
			
			$shortcodename = str_replace ( "_", "-", $shortcodename );
			
			$out = "<div class='{$shortcodename} {$class}'>";
			
			if ((isset ( $attrs [0] ) && trim ( $attrs [0] == 'top' ))) {
				
				$out = "<div class='{$shortcodename} top {$class}'>";
				$out .= "<a href='#top' class='scrollTop'>" . __ ( "top", 'dt_themes' ) . "</a>";
			}
			
			$out .= "</div>";
		} else {
			$shortcodename = str_replace ( "_", "-", $shortcodename );
			$out = "<div class='{$shortcodename}  {$class}'></div>";
		}
		return $out;
	}

	function dt_sc_hr_top($attrs, $content = null, $shortcodename="" ){
		$out = do_shortcode("[dt_sc_hr top]");
		return $out;
	}

	/* Icon Boxes Shortcode */
	/**
	 *
	 * @param array $attrs        	
	 * @param string $content        	
	 * @param string $shortcodename        	
	 * @return string
	 */
	function dt_sc_icon_box($attrs, $content = null, $shortcodename = "") {
		extract ( shortcode_atts ( array (
				'type' => '',
				'fontawesome_icon' => '',
				'custom_icon' => '',
				'title' => '',
				'link' => ''
		), $attrs ) );
		
		$content = DTCoreShortcodesDefination::dtShortcodeHelper ( $content );

		$out =  "<div class='dt-sc-ico-content {$type}'>";
		if( !empty($fontawesome_icon) ){
			$out .= "<div class='icon'> <span class='fa {$fontawesome_icon}'> </span> </div>";
		
		}elseif( !empty($custom_icon) ){
			
		}
		$out .= empty( $title ) ? $out : "<h5><a href='{$link}' target='_blank'> {$title} </a></h5>";
		$out .= $content;
		$out .= "</div>";
		return $out;
	}
	/* Icon Boxes Shortcode End*/
	
	/**
	 *
	 * @param string $attrs        	
	 * @param string $content        	
	 * @return string
	 */
	function dt_sc_dropcap($attrs, $content = null) {
		extract ( shortcode_atts ( array (
				'type' => '',
				'variation' => '',
				'bgcolor' => '',
				'textcolor' => '' 
		), $attrs ) );
		
		$type = (empty ( $type )) ? 'dropcap-default' : $type;
		$bgcolor = ($type == 'dropcap-default') ? "" : $bgcolor;
		$variation = (($variation) && (empty ( $bgcolor ))) ? ' ' . $variation : '';
		
		$styles = array ();
		if ($bgcolor)
			$styles [] = 'background-color:' . $bgcolor . ';';
		if ($textcolor)
			$styles [] = 'color:' . $textcolor . ';border-color:' . $textcolor . ';';
		;
		$style = join ( '', array_unique ( $styles ) );
		$style = ! empty ( $style ) ? ' style="' . $style . '"' : '';
		
		$content = DTCoreShortcodesDefination::dtShortcodeHelper ( $content );
		
		$out = "<span class='dt-sc-dropcap $type {$variation}' {$style}>{$content}</span>";
		
		return $out;
	}
	
	
	/**
	 *
	 * @param array $attrs        	
	 * @param string $content        	
	 * @return string
	 */
	function dt_sc_highlighter($attrs, $content = null) {
		extract ( shortcode_atts ( array (
				'type' => '',
				'bgcolor' => '',
				'textcolor' => '',
				'variation' => '' 
		), $attrs ) );
		
		$type = ($type) ? "highlight-{$type}" : "highlight";
		
		$variation = (($variation) && (empty ( $bgcolor ))) ? ' ' . $variation : '';
		
		$styles = array ();
		if ($bgcolor)
			$styles [] = 'background-color:' . $bgcolor . ';border-color:' . $bgcolor . ';';
		if ($textcolor)
			$styles [] = 'color:' . $textcolor . ';';
		$style = join ( '', array_unique ( $styles ) );
		$style = ! empty ( $style ) ? ' style="' . $style . '"' : '';
		
		$content = DTCoreShortcodesDefination::dtShortcodeHelper ( $content );
		
		$out = "<span class='dt-sc-{$type} {$variation}' {$style}>{$content}</span>";
		return $out;
	}
	
	
	/**
	 *
	 * @param array $attrs        	
	 * @param string $content        	
	 * @return mixed
	 */
	function dt_sc_fancy_ol($attrs, $content = null) {
		extract ( shortcode_atts ( array (
				'style' => '',
				'variation' => '',
				'class' => '' 
		), $attrs ) );
		
		$style = ($style) ? trim ( $style ) : 'decimal';
		$class = ($class) ? trim ( $class ) : '';
		$variation = ($variation) ? ' ' . trim ( $variation ) : '';
		$content = DTCoreShortcodesDefination::dtShortcodeHelper ( $content );
		$content = str_replace ( '<ol>', "<ol class='dt-sc-fancy-list {$variation} {$class} {$style}'>", $content );
		$content = str_replace ( '<li>', '<li><span>', $content );
		$content = str_replace ( '</li>', '</span></li>', $content );
		return $content;
	}
	
	
	/**
	 *
	 * @param array $attrs        	
	 * @param string $content        	
	 * @return mixed
	 */
	function dt_sc_fancy_ul($attrs, $content = null) {
		extract ( shortcode_atts ( array (
				'style' => '',
				'variation' => '',
				'class' => '' 
		), $attrs ) );
		$style = ($style) ? trim ( $style ) : 'decimal';
		$class = ($class) ? trim ( $class ) : '';
		$variation = ($variation) ? ' ' . trim ( $variation ) : '';
		$content = DTCoreShortcodesDefination::dtShortcodeHelper ( $content );
		$content = str_replace ( '<ul>', "<ul class='dt-sc-fancy-list {$variation} {$class} {$style}'>", $content );
		return $content;
	}
	
	
	/**
	 *
	 * @param array $attrs        	
	 * @param string $content        	
	 * @return string
	 */
	function dt_sc_pricing_table($attrs, $content = null) {
		extract ( shortcode_atts ( array (
				'type' => '' 
		), $attrs ) );
		$content = DTCoreShortcodesDefination::dtShortcodeHelper ( $content );
		return "<div class='dt-sc-pricing-table $type'>" . $content . '</div>';
	}
	
	
	/**
	 *
	 * @param array $attrs        	
	 * @param string $content        	
	 * @return string
	 */
	function dt_sc_pricing_table_item($attrs, $content = null) {
		extract ( shortcode_atts ( array (
				'thumb' => '',
				'title' => '',
				'heading' => __( "Gift", 'dt_themes' ),
				'variation' => 'green',
				'price' => '',
				'price2' => '',
				"button_link" => "#",
				"button_text" => __ ( "Buy Now", 'dt_themes' ),
				"button_size" => "small" 
		), $attrs ) );
		
		$selected = (isset ( $attrs [0] ) && trim ( $attrs [0] == 'selected' )) ? 'selected' : '';
		
		$content = DTCoreShortcodesDefination::dtShortcodeHelper ( $content );
		$content = str_replace ( '<ul>', '<ul class="dt-sc-tb-content">', $content );
		$content = str_replace ( '<ol>', '<ul class="dt-sc-tb-content">', $content );
		$content = str_replace ( '</ol>', '</ul>', $content );
		$price = ! empty ( $price ) ? "<div class='dt-sc-price'><p><span>$<span>$price</span></span>$price2<sup>$heading</sup></p></div>" : "";
		
		$out = "<div class='dt-sc-pr-tb-col $variation'>";
		$out .= '	<div class="dt-sc-tb-header">';

			if($thumb != '') {
				$out .= '<div class="dt-sc-tb-thumb"><img src="'.$thumb.'" alt="thumb" />';
					$out .= !empty( $title ) ? '<div class="dt-sc-tb-title"><h3>'.$title.'</h3></div>' : '';
				$out .= '</div>';
			}

			$out .= $price;
		$out .= '	</div>';
		$out .= $content;
		$out .= '<div class="dt-sc-buy-now">';
		$out .= do_shortcode ( "[dt_sc_button size='$button_size' link='$button_link']" . $button_text . "[/dt_sc_button]" );
		$out .= '</div>';
		$out .= '</div>';
		return $out;
	}
	
	
	/**
	 *
	 * @param array $attrs        	
	 * @param string $content        	
	 * @return string
	 */
	function dt_sc_progressbar($attrs, $content = null) {
		extract ( shortcode_atts ( array (
				'type' => 'standard',
				'color' => '',
				'value' => '55',
				'textcolor' => '' 
		), $attrs ) );
		$type = ($type === 'standard') ? $type : $type;
		$type = ($type === 'progress-striped') ? 'progress-striped' : $type;
		$type = ($type === 'progress-striped-active') ? 'progress-striped active' : $type;
		
		$color = ! empty ( $color ) ? "style='background-color:$color;'" : "";
		$textcolor = ! empty ( $textcolor ) ? " style='color:{$textcolor}'" : "";
		
		$value_in_percentage = " - $value%";
		$value = "data-value='$value'";
		$content = DTCoreShortcodesDefination::dtShortcodeHelper ( $content );
		$content = $content . $value_in_percentage;
		
		$out = "<div class='dt-sc-progress dt-sc-$type'>";
		$out .= "<div class='dt-sc-bar' $color $value>";
		$out .= "<div class='dt-sc-bar-text' {$textcolor}>$content</div>";
		$out .= '</div>';
		$out .= '</div>';
		return $out;
	}
	
	
	/**
	 *
	 * @param array $attrs        	
	 * @param string $content        	
	 * @return string
	 */
	function dt_sc_pullquote($attrs, $content = null) {
		extract ( shortcode_atts ( array (
				'type' => 'pullquote1',
				'icon' => '',
				'align' => '',
				'textcolor' => '',
				'cite' => '' 
		), $attrs ) );
		$class = array ();
		if (isset ( $type ))
			$class [] = " dt-sc-{$type}";
		if (trim ( $icon ) == 'yes')
			$class [] = ' quotes';
		if (preg_match ( '/left|right|center/', trim ( $align ) ))
			$class [] = ' align' . $align;
		$cite = ($cite) ? ' <cite>&ndash; ' . $cite . '</cite>' : '';
		$style = ($textcolor) ? ' style="color:' . $textcolor . ';"' : '';
		$class = join ( '', array_unique ( $class ) );
		$content = DTCoreShortcodesDefination::dtShortcodeHelper ( $content );
		$content = strip_tags($content);
		$out = "<span class='{$class}' {$style}> {$content} {$cite}</span>";
		return $out;
	}
	
	
	/**
	 *
	 * @param array $attrs        	
	 * @param string $content        	
	 * @return string
	 */
	function dt_sc_blockquote($attrs, $content = null) {
		extract ( shortcode_atts ( array (
				'align' => '',
				'variation' => '',
				'textcolor' => '',
				'cite' => '' 
		), $attrs ) );
		$class = array ();
		if (preg_match ( '/left|right|center/', trim ( $align ) ))
			$class [] = ' align' . $align;
		if ($variation)
			$class [] = ' ' . $variation;
		
		$cite = ($cite) ? ' <cite>&ndash; ' . $cite . '</cite>' : '';
		$style = ($textcolor) ? ' style="color:' . $textcolor . ';"' : '';
		$class = join ( '', array_unique ( $class ) );
		$content = DTCoreShortcodesDefination::dtShortcodeHelper ( $content );
		$content = strip_tags($content);
		$out = "<blockquote class='{$class}' {$style}><q>{$content}</q> {$cite}</blockquote>";
		return $out;
	}
	
	
	/**
	 *
	 * @param array $attrs        	
	 * @param string $content        	
	 * @return string
	 */
	function dt_sc_tab($attrs, $content = null) {
		extract ( shortcode_atts ( array (
				'title' => '',
				'icon' => '' 
		), $attrs ) );
		
		$icontxt = "";
		if($icon != '') $icontxt = '<span class="fa '.$icon.'"> </span>';
		
		$out = '<li class="tab_head"><a href="#">' . $icontxt . $title . '</a></li><div class="tabs_content">' . DTCoreShortcodesDefination::dtShortcodeHelper ( $content ) . '</div>';
		return $out;
	}
	
	
	/**
	 *
	 * @param array $attrs        	
	 * @param string $content        	
	 * @return string
	 */
	function dt_sc_tabs_horizontal($attrs, $content = null) {
		preg_match_all("/(.?)\[(dt_sc_tab)\b(.*?)(?:(\/))?\](?:(.+?)\[\/dt_sc_tab\])?(.?)/s", $content, $matches);

		for($i = 0; $i < count($matches[0]); $i++) {
			$matches[3][$i] = shortcode_parse_atts( $matches[3][$i] );
		}

		$out = '<ul class="dt-sc-tabs-frame">';
			for($i = 0; $i < count($matches[0]); $i++) {
				$out .= '<li><a href="#">' . $matches[3][$i]['title'] . '</a></li>';
			}
		$out .= '</ul>';

		for($i = 0; $i < count($matches[0]); $i++) {
			$out .= '<div class="dt-sc-tabs-frame-content">' . DTCoreShortcodesDefination::dtShortcodeHelper($matches[5][$i]) . '</div>';
		}		
		return "<div class='dt-sc-tabs-container'>$out</div>";
	}
	
	
	/**
	 *
	 * @param array $attrs        	
	 * @param string $content        	
	 * @return string
	 */
	function dt_sc_tabs_horizontal_frame_less($attrs, $content = null) {
		$out = DTCoreShortcodesDefination::dtShortcodeHelper ( $content );
		$E = $C = "";
		
		preg_match_all ( "'<li class=\"tab_head\">(.*?)</li>'si", $out, $match );
		
		foreach ( $match [0] as $val ) {
			$val = str_replace ( '<li class="tab_head">', '<li>', $val );
			$E .= $val;
		}
		
		preg_match_all ( "'<div class=\"tabs_content\">(.*?)</div>'si", $out, $match );
		
		foreach ( $match [0] as $val ) {
			$val = str_replace ( '<div class="tabs_content">', '<div class="dt-sc-tabs-content">', $val );
			$C .= $val;
		}
		$out = '<div class="dt-sc-tabs-container">' . '<ul class="dt-sc-tabs">' . $E . '</ul>' . $C . '</div>';
		
		return $out;
	}
	
	
	/**
	 *
	 * @param array $attrs        	
	 * @param string $content        	
	 * @return string
	 */
	function dt_sc_tabs_vertical($attrs, $content = null) {
		$out = DTCoreShortcodesDefination::dtShortcodeHelper ( $content );
		$E = $C = "";
		
		preg_match_all ( "'<li class=\"tab_head\">(.*?)</li>'si", $out, $match );
		foreach ( $match [0] as $key => $val ) {
			$key = $key + 1;
			$val = str_replace ( '<li class="tab_head"><a href="#">', '<li><a href="#">', $val );
			$E .= $val;
		}
		preg_match_all ( "'<div class=\"tabs_content\">(.*?)</div>'si", $out, $match );
		foreach ( $match [0] as $val ) {
			$val = str_replace ( '<div class="tabs_content">', '<div class="dt-sc-tabs-vertical-frame-content dt-sc-two-third column">', $val );
			$C .= $val;
		}
		$out = "<ul class='dt-sc-tabs-vertical-frame dt-sc-one-third column first'>$E</ul>";
		$out = "<div class='dt-sc-tabs-vertical-container'>$out" . "$C</div>";
		return $out;
	}
	
	
	/**
	 *
	 * @param unknown $attrs        	
	 * @param string $content        	
	 * @return string
	 */
	function dt_sc_team($attrs, $content = null) {
		
		extract(shortcode_atts(array(
			'role' => '',
			'columns' => '',
			'limit' => ''
		), $attrs));
		
		$role = !empty($role) ? $role : 'yes';
		$columns = !empty($columns) ? $columns : '4';
		$limit = !empty($limit) ? $limit : '-1';
		$col_class = $out = "";
		
		switch($columns):
			case '1':   $col_class = 'column dt-sc-one-column';   break;

			case '2':   $col_class = 'column dt-sc-one-half';   break;

			case '3':   $col_class = 'column dt-sc-one-third';   break;
			
			case '4':   $col_class = 'column dt-sc-one-fourth';   break;
			
			case '5':   $col_class = 'column dt-sc-one-fifth';   break;
			
			case '6':   $col_class = 'column dt-sc-one-sixth';   break;
			
			default:    $col_class = 'column dt-sc-one-fourth';   break;
		endswitch;

		$args = array('post_type' => 'dt_teachers', 'posts_per_page' => $limit);
		$wp_query = new WP_Query($args);
		
		if($wp_query->have_posts()): $i = 1;
		 while($wp_query->have_posts()): $wp_query->the_post();
			
			$temp_class = ""; global $post;
			
			if($i == 1) $temp_class = $col_class." first"; else $temp_class = $col_class;
			if($i == $columns) $i = 1; else $i = $i + 1;
			
				$teacher_settings = get_post_meta ( $post->ID, '_teacher_settings', TRUE );
				
				$out .= '<div class="'.$temp_class.'">';
					$out .= '<div class="dt-sc-team">';
						$out .= '<div class="dt-sc-entry-thumb">';
							if(has_post_thumbnail()):
								$attr = array('title' => get_the_title()); $out .= get_the_post_thumbnail($post->ID, 'full', $attr);
							else:
								$out .= '<img src="http://placehold.it/460x460" alt="member-image" />';
							endif;

							$surls = array_key_exists("social-link", $teacher_settings) ?  $teacher_settings['social-link'] : '';
							$sicon = array_key_exists("social-icon", $teacher_settings) ?  $teacher_settings['social-icon'] : '';
							if(is_array($surls)):
								$out .= '<div class="dt-sc-image-overlay"><ul class="dt-sc-social-icons">';
								foreach($surls as $key => $u):
									$out .= '<li><a class="fa '.$sicon[$key].'" href="'.$u.'" title="'.ucfirst(substr($sicon[$key], 3)).'"></a></li>';
								endforeach;
								$out .= '</ul></div>';
							endif;
						$out .= '</div>';
						
						$out .= '<div class="dt-sc-entry-title">';
							//AJAX PURPOSE...
							$nonce = wp_create_nonce("dt_team_member_nonce");
							$link = admin_url('admin-ajax.php?ajax=true&amp;action=dt_theme_team_member&amp;post_id='.$post->ID.'&amp;nonce='.$nonce);
							
							$out .= '<h2><a href="'.$link.'" data-gal="prettyPhoto[pp_gal]">'.get_the_title().'</a></h2>';
							if($role != 'no')
								$out .= '<h6>'.$teacher_settings['role'].'</h6>';
						$out .= '</div>';
						
					$out .= '</div>';
				$out .= '</div>';
				
		 endwhile;
		else: ?>
            <h2><?php _e('Nothing Found.', 'dt_themes'); ?></h2>
            <p><?php _e('Apologies, but no results were found for the requested archive.', 'dt_themes'); ?></p><?php
		endif;
		return $out;
	}
	
	
	/**
	 *
	 * @param array $attrs        	
	 * @param string $content        	
	 * @return string
	 */
	function dt_sc_testimonial($attrs, $content = null) {
		extract ( shortcode_atts ( array (
				'name' => '',
				'role' => '',
				'image' => ''
		), $attrs ) );
		$content = DTCoreShortcodesDefination::dtShortcodeHelper ( $content );
		$content = ! empty ( $content ) ? "<q>{$content}</q>" : "";
		$role	 = ! empty ( $role ) ? "<br><i>{$role}</i>" : "";
		$name = ! empty ( $name ) ? "<cite> - {$name}{$role}</cite>" : "";
		$content = (! empty ( $content )) ? "<blockquote>$content</blockquote>" : "";
		
		$out = '<div class="dt-sc-testimonial">';
		
			$out .= $content;
			
			$out .= '<div class="dt-sc-author">';
				if (! empty ( $image ))
					$out .= "<img src='{$image}' alt='author-img' />";
				if (! empty ( $name ))
					$out .= $name;							
			$out .= '</div>';
			
		$out .= '</div>';
		
		return $out;
	}
	
	
	/**
	 *
	 * @param array $attrs        	
	 * @param string $content        	
	 * @return string
	 */
	function dt_sc_toggle($attrs, $content = null) {
		extract ( shortcode_atts ( array (
				'title' => '' 
		), $attrs ) );
		
		$out = "<h5 class='dt-sc-toggle'><a href='#'>{$title}</a></h5>";
		$out .= '<div class="dt-sc-toggle-content" style="display: none;">';
		$out .= '<div class="dt-sc-block">';
		$out .= DTCoreShortcodesDefination::dtShortcodeHelper ( $content );
		$out .= '</div>';
		$out .= '</div>';
		return $out;
	}
	
	
	/**
	 *
	 * @param array $attrs        	
	 * @param string $content        	
	 * @return string
	 */
	function dt_sc_toggle_framed($attrs, $content = null) {
		extract ( shortcode_atts ( array (
				'title' => '' 
		), $attrs ) );
		
		$out = '<div class="dt-sc-toggle-frame">';
		$out .= "	<h5 class='dt-sc-toggle'><a href='#'>{$title}</a></h5>";
		$out .= '	<div class="dt-sc-toggle-content" style="display: none;">';
		$out .= '		<div class="dt-sc-block">';
		$out .= DTCoreShortcodesDefination::dtShortcodeHelper ( $content );
		$out .= '		</div>';
		$out .= '	</div>';
		$out .= '</div>';
		return $out;
	}
	
	
	/**
	 * @param array $attrs
	 * @param string $content
	 * @return string
	 */
	function dt_sc_tooltip($attrs, $content = null) {
		extract ( shortcode_atts ( array (
				'type'	=> 'default',
				'tooltip' => '',
				'position' => 'top',
				'href' => '',
				'target' => '',
				'bgcolor' => '',
				'textcolor' => '' 
		), $attrs ) );
		
		$class  = "class=' ";
		$class .=  ( $type == "boxed" ) ? "dt-sc-boxed-tooltip" : "";
		$class .= " dt-sc-tooltip-{$position}'";
		
		$href = " href='{$href}' ";
		$title = " title = '{$tooltip}' ";
		$target = empty($target) ? 'target="_blank"' : "target='{$target}' ";
		
		$styles = array();
		if($bgcolor) $styles[] = 'background-color:' . $bgcolor . ';border-color:' . $bgcolor . ';';
		if($textcolor) $styles[] = 'color:' . $textcolor . ';';
		$style = join('', array_unique( $styles ) );
		$style = !empty( $style ) ? ' style="' . $style . '"': '' ;
		$style = ( $type == "boxed" ) ? $style : "";
		
		$content = DTCoreShortcodesDefination::dtShortcodeHelper( $content );
		$out = "<a {$href} {$title} {$class} {$style} {$target}>{$content}</a>";
		return $out;
	}
	
	function dt_sc_fullwidth_section($attrs, $content = null) {
		extract ( shortcode_atts ( array (
			'backgroundcolor' => '',
			'backgroundimage' => '',
			'backgroundrepeat' => '',
			'backgroundposition' => '',
			'paddingtop' => '',
			'paddingbottom' => '',
			'textcolor' =>'',
			'opacity' => '',
			'class' =>'',
			'parallax' => 'no'
		), $attrs ) );

		$content = DTCoreShortcodesDefination::dtShortcodeHelper ( $content );

		$styles = array ();
		$styles[] = !empty( $textcolor ) ? "color:{$textcolor};" : "";
		if( !empty( $opacity ) ) {
			$hex = str_replace ( "#", "", $backgroundcolor );
			if (strlen ( $hex ) == 3) :
				$r = hexdec ( substr ( $hex, 0, 1 ) . substr ( $hex, 0, 1 ) );
				$g = hexdec ( substr ( $hex, 1, 1 ) . substr ( $hex, 1, 1 ) );
				$b = hexdec ( substr ( $hex, 2, 1 ) . substr ( $hex, 2, 1 ) );
			else :
				$r = hexdec ( substr ( $hex, 0, 2 ) );
				$g = hexdec ( substr ( $hex, 2, 2 ) );
				$b = hexdec ( substr ( $hex, 4, 2 ) );
			endif;
			$rgb = array ( $r,$g,$b);
			$styles[] = "background-color:rgba($rgb[0],$rgb[1],$rgb[2],$opacity); ";
		} else {
			$styles[] = !empty( $backgroundcolor ) ? "background-color:{$backgroundcolor};" : "";
		}	

		$styles[] = !empty( $backgroundimage ) ? "background-image:url({$backgroundimage});" : "";
		$styles[] = !empty( $backgroundrepeat ) ? "background-repeat:{$backgroundrepeat};" : "";
		$styles[] = !empty( $backgroundposition ) ? "background-position:{$backgroundposition};" : "";
		$styles[] = !empty( $paddingtop ) ? "padding-top:{$paddingtop}px;" : "";
		$styles[] = !empty( $paddingbottom ) ? "padding-bottom:{$paddingbottom}px;" : "";

		$parallaxclass = "";
		if( $parallax === "yes") {
			$styles[] = "background-attachment:fixed; ";
			$parallaxclass = "dt-sc-parallax-section";
		}

		$styles = array_filter( $styles);
		$style = join ( '', array_unique ( $styles ) );
		$style = ! empty ( $style ) ? ' style="' . $style . '"' : '';
		
		$out = 	"<div class='fullwidth-section {$class} {$parallaxclass}' {$style}>";
			$out .= '<div class="fullwidth-bg">';
				$out .=	'	<div class="container">';
				$out .= 	$content;
				$out .= '	</div>';
			$out .= '</div>';
		$out .= '</div>';			
		return $out;
	}

	function dt_sc_fullwidth_video( $attrs, $content = null ) {
		extract ( shortcode_atts ( array (
			'mp4' => '',
			'webm'=>'',
			'ogv' => '',
			'poster' => '',
			'backgroundimage' => '',
			'paddingtop' => '',
			'paddingbottom' => '',
			'class' =>''
		), $attrs ) );

		$content = DTCoreShortcodesDefination::dtShortcodeHelper ( $content );

		$styles = array ();
		$styles[] = !empty( $paddingtop ) ? "padding-top:{$paddingtop}px;" : "";
		$styles[] = !empty( $paddingbottom ) ? "padding-bottom:{$paddingbottom}px;" : "";

		$styles = array_filter( $styles);
		$style = join ( '', array_unique ( $styles ) );
		$style = ! empty ( $style ) ? ' style="' . $style . '"' : '';

		$poster = !empty( $poster )  ? " poster='{$poster}' " : "";

		$mp4 = !empty( $mp4 )  ? "<source src='{$mp4}' type='video/mp4'/>" : "";
		$webm = !empty( $webm )  ? "<source src='{$webm}' type='video/webm'/>" : "";
		$ogv = !empty( $ogv )  ? "<source src='{$ogv}' type='video/ogg'/>" : "";
		$backgroundimage = !empty( $backgroundimage )  ? "<img src='{$backgroundimage}'/>" : "<img src='http://placehold.it/1920x400.jpg&text=DesignThemes'/>";

		$out  = "<div class='dt-sc-fullwidth-video-section {$class}' {$style}>";
		$out .= '	<div class="dt-sc-video-container">';
		$out .= "	<div class='dt-sc-mobile-image-container' style='display:none;'>{$backgroundimage}</div>";
		$out .= "		<video autoplay loop class='dt-sc-video dt-sc-fillWidth' {$poster}>";
		$out .= 		$mp4.$webm.$ogv.$backgroundimage;
		$out .= '		</video>';
		$out .= '	</div>';
		$out .= '   <div class="dt-sc-video-content-wrapper">';		
		$out .= "		<div class='container'>{$content}</div>";
		$out .= '	</div>';
		$out .= '</div>';

		return $out;
	}

	function dt_sc_doshortcode($attrs, $content = null) {
		extract ( shortcode_atts ( array (
				'width' => '100',
				'animation' => '',
				'animation_delay' => ''
		), $attrs ) );

		$content = DTCoreShortcodesDefination::dtShortcodeHelper ( $content );

		$danimation = !empty( $animation ) ? " data-animation='{$animation}' ": "";
		$ddelay = ( !empty( $animation ) && !empty( $animation_delay )) ? " data-delay='{$animation_delay}' " : "";
		$danimate = !empty( $animation ) ? "animate": "";

		$first = (isset ( $attrs [0] ) && trim ( $attrs [0] == 'first' )) ? 'first' : '';

		$out = '<div class="column '.$danimate.' '.$first.'" style="width:'.$width.'%;" '.$danimation.' '.$ddelay.'>';
		$cont = do_shortcode($content);
		if(isset($cont))
			$out .= $cont;
		else
			$out .= $content;
		$out .= '</div>';
		return $out;
	}

	function dt_sc_resizable($attrs, $content = null) {		
		extract ( shortcode_atts ( array (
				'width' => '',
				'class' => '',
				'animation' => '',
				'animation_delay' => ''
		), $attrs ) );

		$danimation = !empty( $animation ) ? " data-animation='{$animation}' ": "";
		$ddelay = (!empty( $animation ) && !empty( $animation_delay )) ? " data-delay='{$animation_delay}' " : "";
		$danimate = !empty( $animation ) ? "animate": "";

		$style = (!empty( $width ) ) ? ' style="width:'.$width.'%;" ' : "";
	
		$first = (isset ( $attrs [0] ) && trim ( $attrs [0] == 'first' )) ? 'first' : '';
		$content = do_shortcode(DTCoreShortcodesDefination::dtShortcodeHelper ( $content ));
		$out = "<div class='column {$class} {$danimate} {$first}' {$danimation} {$ddelay} {$style}>{$content}</div>";
		return $out;
	}

	function dt_sc_widgets($attrs, $content = null) {
		extract ( shortcode_atts ( array (
				'widget_name' => '',
				'widget_wpname' => '',
				'widget_wpid' => ''
		), $attrs ) );
		
		if($widget_name != ''):	
			
			foreach($attrs as $key=>$value):
				$instance[$key] = $value;			
			endforeach;
			
			$instance = array_filter($instance);
			
			if(($widget_name == 'TribeEventsAdvancedListWidget' || $widget_name == 'TribeEventsMiniCalendarWidget') && isset($instance['selector'])) {
				$instance['filters'] = '{"tribe_events_cat":["'.$instance['selector'].'"]}';
			}
			
			if(substr($widget_name, 0, 2) == 'WC') $add_cls = 'woocommerce';
			else $add_cls = '';
			
			ob_start();
			the_widget($widget_name, $instance, 'before_widget=<aside id="'.$widget_wpid.'" class="widget '.$add_cls.' '.$widget_wpname.'">&after_widget=</aside>&before_title=<div class="widget-title"><h3>&after_title=</h3><div class="title-sep"><span></span></div></div>');
			$output = ob_get_contents();
			ob_end_clean();

			return $output;
		endif;
	}
}
new DTCoreShortcodesDefination ();
?>