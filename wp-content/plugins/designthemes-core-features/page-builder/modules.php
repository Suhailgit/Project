<?php
global $dt_modules, $dt_animation_types, $woothemes_sensei, $dtthemes_columns;
$dt_animation_types = array();

$dt_animation_types = array("flash" => "flash", "shake" => "shake", "bounce" => "bounce", "tada" => "tada", "swing" => "swing", "wobble" => "wobble", "pulse" => "pulse", "flip" => "flip", "flipInX" => "flipInX", "flipOutX" => "flipOutX", "flipInY" => "flipInY", "flipOutY" => "flipOutY", "fadeIn" => "fadeIn", "fadeInUp" => "fadeInUp", "fadeInDown" => "fadeInDown", "fadeInLeft" => "fadeInLeft", "fadeInRight" => "fadeInRight", "fadeInUpBig" => "fadeInUpBig", "fadeInDownBig" => "fadeInDownBig", "fadeInLeftBig" => "fadeInLeftBig", "fadeInRightBig" => "fadeInRightBig", "fadeOut" => "fadeOut", "fadeOutUp" => "fadeOutUp","fadeOutDown" => "fadeOutDown", "fadeOutLeft" => "fadeOutLeft", "fadeOutRight" => "fadeOutRight", "fadeOutUpBig" => "fadeOutUpBig", "fadeOutDownBig" => "fadeOutDownBig", "fadeOutLeftBig" => "fadeOutLeftBig","fadeOutRightBig" => "fadeOutRightBig", "bounceIn" => "bounceIn", "bounceInUp" => "bounceInUp", "bounceInDown" => "bounceInDown", "bounceInLeft" => "bounceInLeft", "bounceInRight" => "bounceInRight", "bounceOut" => "bounceOut", "bounceOutUp" => "bounceOutUp", "bounceOutDown" => "bounceOutDown", "bounceOutLeft" => "bounceOutLeft", "bounceOutRight" => "bounceOutRight", "rotateIn" => "rotateIn", "rotateInUpLeft" => "rotateInUpLeft", "rotateInDownLeft" => "rotateInDownLeft", "rotateInUpRight" => "rotateInUpRight", "rotateInDownRight" => "rotateInDownRight", "rotateOut" => "rotateOut", "rotateOutUpLeft" => "rotateOutUpLeft","rotateOutDownLeft" => "rotateOutDownLeft", "rotateOutUpRight" => "rotateOutUpRight", "rotateOutDownRight" => "rotateOutDownRight", "hinge" => "hinge", "rollIn" => "rollIn", "rollOut" => "rollOut", "lightSpeedIn" => "lightSpeedIn", "lightSpeedOut" => "lightSpeedOut", "slideDown" => "slideDown", "slideUp" => "slideUp", "slideLeft" => "slideLeft", "slideRight" => "slideRight", "slideExpandUp" => "slideExpandUp", "expandUp" => "expandUp", "expandOpen" => "expandOpen", "bigEntrance" => "bigEntrance", "hatch" => "hatch", "floating" => "floating", "tossing" => "tossing", "pullUp" => "pullUp", "pullDown" => "pullDown", "stretchLeft" => "stretchLeft", "stretchRight" => "stretchRight");

$variations = array('chocolate' => 'Chocolate', 'green' => 'Green', 'blue' => 'Blue', 'orange' => 'Orange', 'pink' => 'Pink', 'red' => 'Red', 'purple' => 'Purple', 'ocean' => 'Ocean','black' => 'Black', 'slateblue' => 'Slate Blue', 'skyblue' => 'Sky Blue', 'coral' => 'Coral', 'khaki' => 'Khaki', 'cyan' => 'Cyan', 'grey' => 'Grey', 'gold' => 'Gold', 'raspberry'=>'Raspberry', 'electricblue' => 'Electric Blue', 'eggplant' => 'Eggplant', 'ferngreen' => 'Fern Green', 'palebrown' => 'Pale Brown');

$button_size = array('small' => 'Small', 'medium' => 'Medium', 'large' => 'Large', 'xlarge' => 'Xlarge');

$page_targets = array('_blank' => 'Blank', '_new' => 'New', '_parent' => 'Parent', '_self' => 'Self', '_top' => 'Top');

$box_types = array('titled-box' => 'Titled Box', 'error-box' => 'Error Box', 'warning-box' => 'Warning Box', 'success-box' => 'Success Box', 'info-box' => 'Info Box');

$blocquote_types = array('type1' => 'Type 1', 'type2' => 'Type 2', 'type3' => 'Type 3', 'type4' => 'Type 4');

$pullquote_types = array('pullquote1' => 'Pullquote 1', 'pullquote2' => 'Pullquote 2', 'pullquote3' => 'Pullquote 3', 'pullquote4' => 'Pullquote 4', 'pullquote5' => 'Pullquote 5', 'pullquote6' => 'Pullquote 6');

$callout_box_types = array('type1' => 'Type 1', 'type2' => 'Type 2', 'type3' => 'Type 3', 'type4' => 'Type 4', 'type5' => 'Type 5', 'type6' => 'Type 6', 'type7' => 'Type 7');

$pricingtable_types = $testimonial_types = $colored_icon_box_types = array('type1' => 'Type 1', 'type2' => 'Type 2');

$align = array('left' => 'Left', 'right' => 'Right', 'center' => 'Center');

$yesorno = array('yes' => 'Yes', 'no' => 'No');

$trueorfalse = array('true' => 'True', 'false' => 'False');

$tooltip_positions = array('top' => 'Top', 'right' => 'Right', 'bottom' => 'Bottom', 'left' => 'Left');

$tooltip_types = array('default' => 'Default', 'boxed' => 'Boxed');

$dropcap_types = array('Default' => 'Default', 'Circle' => 'Circle', 'Bordered Circle' => 'Bordered Circle', 'Square' => 'Square', 'Bordered Square' => 'Bordered Square');

$bacground_repeat = array('no-repeat' => 'No Repeat', 'repeat' => 'Repeat', 'repeat-x' => 'Repeat X', 'repeat-y' => 'Repeat Y');

$bacground_position = array('left top' => 'Left Top', 'left center' => 'Left Center', 'left bottom' => 'Left Bottom', 'right top' => 'Right Top', 'right center' => 'Right Center', 'right bottom' => 'Right Bottom', 'center top' => 'Center Top', 'center center' => 'Center Center', 'center bottom' => 'Center Bottom');

$lengths = array(5 => 5, 10 => 10, 15 => 15, 20 => 20, 25 => 25, 30 => 30, 35 => 35, 40 => 40, 45 => 45, 50 => 50, 55 => 55, 60 => 60, 65 => 65, 70 => 70, 75 => 75, 80 => 80, 85 => 85, 90 => 90, 95 => 95, 100 => 100);

$post_columns = array(2 => 2, 3 => 3);

$portfolio_columns = array(2 => 2, 3 => 3, 4 => 4, 5 => 5, 6 => 6);

$teacher_columns = array(1 => 1, 2 => 2, 3 => 3, 4 => 4, 5 => 5);

$icon_box_types = array('type1' => 'Type 1', 'type2' => 'Type 2', 'type3' => 'Type 3', 'type4' => 'Type 4', 'type5' => 'Type 5');

$progressbar_types = array('standard' => 'Standard', 'progress-striped' => 'Striped', 'progress-striped-active' => 'Striped Active');

$oltypes = array('decimal' => 'Decimal', 'decimal-leading-zero' => 'Decimal With Leading Zero', 'lower-alpha' => 'Lower Alpha', 'lower-roman' => 'Lower Roman', 'upper-alpha' => 'Upper Alpha', 'upper-roman' => 'Upper Roman');

$ultypes = array('arrow' => 'Arrow', 'rounded-arrow' => 'Rounded Arrow', 'double-arrow' => 'Double Arrow', 'heart' => 'Heart', 'trash' => 'Trash', 'star' => 'Star', 'tick' => 'Tick', 'rounded-tick' => 'Rounded Tick', 'cross' => 'Cross', 'rounded-cross' => 'Rounded Cross', 'rounded-question' => 'Rounded Question', 'rounded-info' => 'Rounded Info', 'delete' => 'Delete', 'warning' => 'Warning', 'comment' => 'Comment', 'edit' => 'Edit', 'share' => 'Share', 'plus' => 'Plus', 'rounded-plus' => 'Rounded Plus', 'minus' => 'Minus', 'rounded-minus' => 'Rounded Minus', 'asterisk' => 'Asterisk', 'cart' => 'Cart', 'folder' => 'Folder', 'folder-open' => 'Folder Open', 'desktop' => 'Desktop', 'tablet' => 'Tablet', 'mobile' => 'Mobile', 'reply' => 'Reply', 'quote' => 'Quote', 'mail' => 'Mail', 'external-link' => 'External Link', 'adjust' => 'Adjust', 'pencil' => 'Pencil', 'print' => 'Print', 'tag' => 'Tag', 'thumbs-up' => 'Thumbs Up', 'thumbs-down' => 'Thumbs Down', 'time' => 'Time', 'globe' => 'Globe', 'pushpin' => 'Pushpin', 'map-marker' => 'Map Marker', 'link' => 'Link', 'paper-clip' => 'Paper Clip', 'download' => 'Download', 'key' => 'Key', 'search' => 'Search', 'rss' => 'Rss', 'twitter' => 'Twitter', 'facebook' => 'Facebook', 'linkedin' => 'Linkedin', 'google-plus' => 'Google Plus', 'circle-tick' => 'Circle Tick');

$slider_types = array('LayerSlider' => 'Layer Slider', 'RevolutionSlider' => 'Revolution Slider');

/*  Start of Columns Definition */

$dtthemes_columns['full_width'] = array( 
		'name' => __('1 Column', 'dt_themes'),
		'type' => 'column',
	);
$dtthemes_columns['one_half'] = array( 
		'name' => __('1/2 Column', 'dt_themes'),
		'type' => 'column',
	);
$dtthemes_columns['one_third'] = array( 
		'name' => __('1/3 Column', 'dt_themes'),
		'type' => 'column',
	);
$dtthemes_columns['one_fourth'] = array( 
		'name' => __('1/4 Column', 'dt_themes'),
		'type' => 'column',
	);
$dtthemes_columns['one_fifth'] = array( 
		'name' => __('1/5 Column', 'dt_themes'),
		'type' => 'column',
	);
$dtthemes_columns['one_sixth'] = array( 
		'name' => __('1/6 Column', 'dt_themes'),
		'type' => 'column',
	);
$dtthemes_columns['two_third'] = array( 
		'name' => __('2/3 Column', 'dt_themes'),
		'type' => 'column',
	);
$dtthemes_columns['two_fifth'] = array( 
		'name' => __('2/5 Column', 'dt_themes'),
		'type' => 'column',
	);
$dtthemes_columns['two_sixth'] = array( 
		'name' => __('2/6 Column', 'dt_themes'),
		'type' => 'column',
	);
$dtthemes_columns['three_fourth'] = array( 
		'name' => __('3/4 Column', 'dt_themes'),
		'type' => 'column',
	);
$dtthemes_columns['three_fifth'] = array( 
		'name' => __('3/5 Column', 'dt_themes'),
		'type' => 'column',
	);
$dtthemes_columns['three_sixth'] = array( 
		'name' => __('3/6 Column', 'dt_themes'),
		'type' => 'column',
	);
$dtthemes_columns['four_fifth'] = array( 
		'name' => __('4/5 Column', 'dt_themes'),
		'type' => 'column',
	);
$dtthemes_columns['four_sixth'] = array( 
		'name' => __('4/6 Column', 'dt_themes'),
		'type' => 'column',
	);
$dtthemes_columns['five_sixth'] = array( 
		'name' => __('5/6 Column', 'dt_themes'),
		'type' => 'column',
	);
$dtthemes_columns['resizable'] = array( 
		'name' => __('Resizable Column', 'dt_themes') ,
		'type' => 'column',
	);

$dtthemes_columns['fullwidth_section'] = array( 
	'name' => __('Fullwidth Section', 'dt_themes'),
	'type' => 'section',
	'options' => array(
		'backgroundcolor' => array(
			'title' => __('Background Color', 'dt_themes'),
			'type' => 'colorpicker',
			'default_value' => ''
		),
		'backgroundimage' => array(
			'title' => __('Background Image', 'dt_themes'),
			'type' => 'upload',
			'default_value' => ''
		),
		'opacity' => array(
			'title' => __('Background Opacity', 'dt_themes'),
			'type' => 'text',
			'default_value' => ''
		),
		'parallax' => array(
			'title' => __('Parallax Effect', 'dt_themes'),
			'type' => 'select',
			'options' => $yesorno,
			'default_value' => array('no')
		),
		'backgroundrepeat' => array(
			'title' => __('Background Repeat', 'dt_themes'),
			'type' => 'select',
			'options' => $bacground_repeat,
			'default_value' => array('no-repeat')
		),
		'backgroundposition' => array(
			'title' => __('Background Position', 'dt_themes'),
			'type' => 'select',
			'options' => $bacground_position,
			'default_value' => array('left top')
		),
		'paddingtop' => array(
			'title' => __('Padding Top', 'dt_themes'),
			'type' => 'text',
			'default_value' => ''
		),
		'paddingbottom' => array(
			'title' => __('Padding Bottom', 'dt_themes'),
			'type' => 'text',
			'default_value' => ''
		),
		'textcolor' => array(
			'title' => __('Text Color', 'dt_themes'),
			'type' => 'colorpicker',
			'default_value' => ''
		),
		'class' => array(
			'title' => __('CSS Class', 'dt_themes'),
			'type' => 'text',
			'default_value' => ''
		)
	)
);

$dtthemes_columns['fullwidth_video'] = array( 
	'name' => __('Fullwidth Section Video', 'dt_themes'),
	'type' => 'section',
	'options' => array(
		'mp4' => array(
			'title' => __('MP4', 'dt_themes'),
			'type' => 'text',
			'default_value' => ''
		),
		'webm' => array(
			'title' => __('WEBM', 'dt_themes'),
			'type' => 'text',
			'default_value' => ''
		),
		'ogv' => array(
			'title' => __('OGV', 'dt_themes'),
			'type' => 'text',
			'default_value' => ''
		),
		'poster' => array(
			'title' => __('Poster Image', 'dt_themes'),
			'type' => 'upload',
			'default_value' => ''
		),
		'backgroundimage' => array(
			'title' => __('Background Image', 'dt_themes'),
			'type' => 'upload',
			'default_value' => ''
		),
		'paddingtop' => array(
			'title' => __('Padding Top (in px)', 'dt_themes'),
			'type' => 'text',
			'default_value' => ''
		),
		'paddingbottom' => array(
			'title' => __('Padding Bottom (in px)', 'dt_themes'),
			'type' => 'text',
			'default_value' => ''
		),
		'class' => array(
			'title' => __('CSS Class', 'dt_themes'),
			'type' => 'text',
			'default_value' => ''
		)
	)
);

/*  End of Columns definition */


/*  Start of General Modules */

$dt_modules['general']['doshortcode_anycontent'] = array(
	'name' => __('Add Any Content Here', 'dt_themes'),
	'tooltip' => 'Add any content using this module',
	'icon_class' => 'ico-anycontent',
	'options' => array(
		'acc_content' => array(
			'title' => __('Content', 'dt_themes'),
			'type' => 'wp_editor',
			'is_content' => true
		)
	)
);

$dt_modules['general']['doshortcode_accordion_framed'] = array(
	'name' => __('Accordion Framed', 'dt_themes'),
	'tooltip' => 'Add Accordion Framed Module',
	'icon_class' => 'ico-accordion',
	'options' => array(
		'acc_content' => array(
			'title' => __('Content', 'dt_themes'),
			'type' => 'wp_editor',
			'is_content' => true,
			'default_value' => '[dt_sc_accordion_group]<br>
							[dt_sc_toggle_framed title="Accordion 1"]Lorem ipsum dolor sit amet, consectetur adipiscing elit. Morbi hendrerit elit turpis, a porttitor tellus sollicitudin at. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos.[/dt_sc_toggle_framed]
							[dt_sc_toggle_framed title="Accordion 2"]Lorem ipsum dolor sit amet, consectetur adipiscing elit. Morbi hendrerit elit turpis, a porttitor tellus sollicitudin at. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos.[/dt_sc_toggle_framed]
							[dt_sc_toggle_framed title="Accordion 3"]Lorem ipsum dolor sit amet, consectetur adipiscing elit. Morbi hendrerit elit turpis, a porttitor tellus sollicitudin at. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos.[/dt_sc_toggle_framed]<br>
						[/dt_sc_accordion_group]'
		)
	)
);

$dt_modules['general']['doshortcode_accordion_default'] = array(
	'name' => __('Accordion Default', 'dt_themes'),
	'tooltip' => 'Add Accordion Default Module',
	'icon_class' => 'ico-accordion',
	'options' => array(
		'acc_content' => array(
			'title' => __('Content', 'dt_themes'),
			'type' => 'wp_editor',
			'is_content' => true,
			'default_value' => '[dt_sc_accordion_group]<br>
							[dt_sc_toggle title="Accordion 1"]Lorem ipsum dolor sit amet, consectetur adipiscing elit. Morbi hendrerit elit turpis, a porttitor tellus sollicitudin at. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos.[/dt_sc_toggle]
							[dt_sc_toggle title="Accordion 2"]Lorem ipsum dolor sit amet, consectetur adipiscing elit. Morbi hendrerit elit turpis, a porttitor tellus sollicitudin at. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos.[/dt_sc_toggle]
							[dt_sc_toggle title="Accordion 3"]Lorem ipsum dolor sit amet, consectetur adipiscing elit. Morbi hendrerit elit turpis, a porttitor tellus sollicitudin at. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos.[/dt_sc_toggle]<br>
						[/dt_sc_accordion_group]'
		)
	)
);

$dt_modules['general']['box'] = array(
	'name' => __('Titled Box', 'dt_themes'),
	'tooltip' => 'Add titled box and different types of messgae box',
	'icon_class' => 'ico-box',
	'options' => array(
		'type' => array(
			'title' => __('Type', 'dt_themes'),
			'type' => 'select',
			'options' => $box_types,
			'default_value' => array('titled-box')
		),
		'title' => array(
			'title' => __('Title', 'dt_themes'),
			'type' => 'text',
			'default_value' => 'Title Comes Here'
		),
		'bgcolor' => array(
			'title' => __('Background Color', 'dt_themes'),
			'type' => 'colorpicker'
		),
		'variation' => array(
			'title' => __('Variation', 'dt_themes'),
			'type' => 'select',
			'options' => $variations,
			'default_value' => array()
		),
		'textcolor' => array(
			'title' => __('Text Color', 'dt_themes'),
			'type' => 'colorpicker'
		),
		'box_content' => array(
			'title' => __('Content', 'dt_themes'),
			'type' => 'wp_editor',
			'is_content' => true,
			'default_value' => 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.'
		)
	)
);

$dt_modules['general']['button'] = array(
	'name' => __('Button', 'dt_themes'),
	'tooltip' => 'Add Button',
	'icon_class' => 'ico-button',
	'options' => array(
		'content' => array(
			'title' => __('Title', 'dt_themes'),
			'type' => 'text',
			'is_content' => true,
			'default_value' => 'Click me!'
		),

		'link' => array(
			'title' => __('Link', 'dt_themes'),
			'type' => 'text',
			'default_value' => '#'
		),

		'size' => array(
			'title' => __('Size', 'dt_themes'),
			'type' => 'select',
			'options' => $button_size,
			'default_value' => array('medium')
		),

		'bgcolor' => array(
			'title' => __('Background Color', 'dt_themes'),
			'type' => 'colorpicker'
		),

		'variation' => array(
			'title' => __('Variation', 'dt_themes'),
			'type' => 'select',
			'options' => $variations,
			'default_value' => array()
		),

		'textcolor' => array(
			'title' => __('Text Color', 'dt_themes'),
			'type' => 'colorpicker'
		),
		
		'align' => array(
			'title' => __('Align', 'dt_themes'),
			'type' => 'select',
			'options' => $align,
			'default_value' => array('left')
		),

		'target' => array(
			'title' => __('Target', 'dt_themes'),
			'type' => 'select',
			'options' => $page_targets,
			'default_value' => array('_blank')
		),
	)
);

$dt_modules['general']['animate'] = array(
	'name' => __('Animation', 'dt_themes'),
	'tooltip' => 'Add Animation effect for any content',
	'icon_class' => 'ico-animation',
	'options' => array(
		'animation' => array(
			'title' => __('Choose Effect', 'dt_themes'),
			'type' => 'select',
			'options' => $dt_animation_types,
			'default_value' => array('fadeIn')
		),
		'delay' => array(
			'title' => __('Delay', 'dt_themes'),
			'type' => 'text',
			'default_value' => 300
		),
		'animation_content' => array(
			'title' => __('Content', 'dt_themes'),
			'type' => 'wp_editor',
			'is_content' => true,
			'default_value' => 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.'
		)
	)
);

$dt_modules['general']['blockquote'] = array(
	'name' => __('Blockquote', 'dt_themes'),
	'tooltip' => 'Add Blockquote',
	'icon_class' => 'ico-blockquote',
	'options' => array(
		'align' => array(
			'title' => __('Align', 'dt_themes'),
			'type' => 'select',
			'options' => $align,
			'default_value' => array('left')
		),

		'variation' => array(
			'title' => __('Variation', 'dt_themes'),
			'type' => 'select',
			'options' => $variations,
			'default_value' => array()
		),

		'textcolor' => array(
			'title' => __('Text Color', 'dt_themes'),
			'type' => 'colorpicker'
		),

		'cite' => array(
			'title' => __('Cite', 'dt_themes'),
			'type' => 'text',
			'default_value' => ''
		),

		'blockquote_content' => array(
			'title' => __('Content', 'dt_themes'),
			'type' => 'wp_editor',
			'is_content' => true,
			'default_value' => 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.'
		)
	)
);

$dt_modules['general']['pullquote'] = array(
	'name' => __('Pullquote', 'dt_themes'),
	'tooltip' => 'Add different types of pullquotes',
	'icon_class' => 'ico-quote',
	'options' => array(
		'type' => array(
			'title' => __('Type', 'dt_themes'),
			'type' => 'select',
			'options' => $pullquote_types,
			'default_value' => array('pullquote1')
		),

		'icon' => array(
			'title' => __('Show Icon', 'dt_themes'),
			'type' => 'select',
			'options' => $yesorno,
			'default_value' => array('yes')
		),

		'align' => array(
			'title' => __('Align', 'dt_themes'),
			'type' => 'select',
			'options' => $align,
			'default_value' => array('left')
		),

		'textcolor' => array(
			'title' => __('Text Color', 'dt_themes'),
			'type' => 'colorpicker',
			'default_value' => ''
		),

		'cite' => array(
			'title' => __('Cite Name', 'dt_themes'),
			'type' => 'text',
			'default_value' => 'Dolor sit amet'
		),

		'pq_content' => array(
			'title' => __('Content', 'dt_themes'),
			'type' => 'wp_editor',
			'is_content' => true,
			'default_value' => 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.'
		)
	)
);

$dt_modules['general']['tooltip'] = array(
	'name' => __('Tooltip', 'dt_themes'),
	'tooltip' => 'Add tooltip with different positions',
	'icon_class' => 'ico-pullquote',
	'options' => array(
		'type' => array(
			'title' => __('Type', 'dt_themes'),
			'type' => 'select',
			'options' => $tooltip_types,
			'default_value' => array('default')
		),
		'position' => array(
			'title' => __('Position', 'dt_themes'),
			'type' => 'select',
			'options' => $tooltip_positions,
			'default_value' => array('top')
		),
		'bgcolor' => array(
			'title' => __('Background Color', 'dt_themes'),
			'type' => 'colorpicker'
		),
		'textcolor' => array(
			'title' => __('Text Color', 'dt_themes'),
			'type' => 'colorpicker'
		),
		'tooltip' => array(
			'title' => __('Tooltip Text', 'dt_themes'),
			'type' => 'text',
			'default_value' => 'Consectetur adipisicing elit'
		),
		'href' => array(
			'title' => __('Link', 'dt_themes'),
			'type' => 'text',
			'default_value' => '#'
		),
		'target' => array(
			'title' => __('Target', 'dt_themes'),
			'type' => 'select',
			'options' => $page_targets,
			'default_value' => array('_blank')
		),
		'tp_content' => array(
			'title' => __('Content', 'dt_themes'),
			'type' => 'text',
			'is_content' => true,
			'default_value' => 'Lorem ipsum'
		)
	)
);
	
$dt_modules['general']['fancy_ol'] = array(
	'name' => __('Ordered Lists', 'dt_themes'),
	'tooltip' => 'Add items in ordered list',
	'icon_class' => 'ico-orderedlists',
	'options' => array(
		'style' => array(
			'title' => __('Style', 'dt_themes'),
			'type' => 'select',
			'options' => $oltypes,
			'default_value' => array('decimal')
		),
		'variation' => array(
			'title' => __('Variation', 'dt_themes'),
			'type' => 'select',
			'options' => $variations,
			'default_value' => array()
		),
		'class' => array(
			'title' => __('Class', 'dt_themes'),
			'type' => 'text',
			'default_value' => ''
		),
		'ol_content' => array(
			'title' => __('Content', 'dt_themes'),
			'type' => 'wp_editor',
			'is_content' => true,
			'default_value' => '<ol>
							<li>Lorem ipsum dolor sit</li>
							<li>Praesent convallis nibh</li>
							<li>Nullam ac sapien sit</li>
							<li>Phasellus auctor augue</li>
						</ol>'
		)
	)
);

$dt_modules['general']['fancy_ul'] = array(
	'name' => __('Unordered Lists', 'dt_themes'),
	'tooltip' => 'Add items in unordered lists',
	'icon_class' => 'ico-unorderedlists',
	'options' => array(
		'style' => array(
			'title' => __('Style', 'dt_themes'),
			'type' => 'select',
			'options' => $ultypes,
			'default_value' => array('arrow')
		),
		'variation' => array(
			'title' => __('Variation', 'dt_themes'),
			'type' => 'select',
			'options' => $variations,
			'default_value' => array()
		),
		'class' => array(
			'title' => __('Class', 'dt_themes'),
			'type' => 'text'
		),
		'ul_content' => array(
			'title' => __('Content', 'dt_themes'),
			'type' => 'wp_editor',
			'is_content' => true,
			'default_value' => '<ul>
							<li>Lorem ipsum dolor sit</li>
							<li>Praesent convallis nibh</li>
							<li>Nullam ac sapien sit</li>
							<li>Phasellus auctor augue</li>
						</ul>'
		)
	));

$dt_modules['general']['pricing_table'] = array(
	'name' => __('Pricing Table', 'dt_themes'),
	'tooltip' => 'Add pricing table',
	'icon_class' => 'ico-pricingtable',
	'options' => array(
		'pt_content' => array(
			'title' => __('Content', 'dt_themes'),
			'type' => 'wp_editor',
			'is_content' => true,
			'default_value' => "[dt_sc_one_third first]
[dt_sc_pricing_table_item variation='green' title='Summer Special' heading='Gift' price='5' price2='.99' button_text='Join Now' button_link='#' button_size='small' selected]
<ul>
<li>Text</li>
<li>Text</li>
<li>Text</li>
</ul>
[/dt_sc_pricing_table_item]
[/dt_sc_one_third]
[dt_sc_one_third]
[dt_sc_pricing_table_item variation='gold' title='Summer Special' heading='Gift' price='5' price2='.99' button_text='Join Now' button_link='#' button_size='small']
<ul>
<li>Text</li>
<li>Text</li>
<li>Text</li>
</ul>
[/dt_sc_pricing_table_item]
[/dt_sc_one_third]
[dt_sc_one_third]
[dt_sc_pricing_table_item variation='blue' title='Summer Special' heading='Gift' price='5' price2='.99' button_text='Join Now' button_link='#' button_size='small']
<ul>
<li>Text</li>
<li>Text</li>
<li>Text</li>
</ul>
[/dt_sc_pricing_table_item]
[/dt_sc_one_third]"
		)
	));

$dt_modules['general']['pricing_table_rounded'] = array(
	'name' => __('Rounded Pricing Table', 'dt_themes'),
	'tooltip' => 'Add pricing table',
	'icon_class' => 'ico-pricingtable',
	'options' => array(
		'pt_content' => array(
			'title' => __('Content', 'dt_themes'),
			'type' => 'wp_editor',
			'is_content' => true,
			'default_value' => "[dt_sc_one_third first]
				[dt_sc_pricing_table_item variation='green' heading='Offer' price='5' price2='.99' button_text='Join Now' button_link='#' button_size='small' selected]
				[dt_pricing_round_text heading='Full Circle' midtitle='2 Person' text='Gift your loved ones a dinner at affordable price' /]
				[/dt_sc_pricing_table_item]
				[/dt_sc_one_third]
				[dt_sc_one_third]
				[dt_sc_pricing_table_item variation='gold' heading='Offer' price='5' price2='.99' button_text='Join Now' button_link='#' button_size='small']
				[dt_pricing_round_text heading='Full Circle' midtitle='2 Person' text='Gift your loved ones a dinner at affordable price' /]
				[/dt_sc_pricing_table_item]
				[/dt_sc_one_third]
				[dt_sc_one_third]
				[dt_sc_pricing_table_item variation='blue' heading='Offer' price='5' price2='.99' button_text='Join Now' button_link='#' button_size='small']
				[dt_pricing_round_text heading='Full Circle' midtitle='2 Person' text='Gift your loved ones a dinner at affordable price' /]
				[/dt_sc_pricing_table_item]
				[/dt_sc_one_third]"
		)
	));

$dt_modules['general']['pricing_table_with_image'] = array(
	'name' => __('Pricing Table with Image', 'dt_themes'),
	'tooltip' => 'Add pricing table',
	'icon_class' => 'ico-pricingtable',
	'options' => array(
		'pt_content' => array(
			'title' => __('Content', 'dt_themes'),
			'type' => 'wp_editor',
			'is_content' => true,
			'default_value' => "[dt_sc_one_third first]
[dt_sc_pricing_table_item title='Summer Special' thumb='http://placehold.it/300x200' variation='gold' heading='Offer' price='2' price2='.99' button_text='Join Now' button_link='#' button_size='small' selected]
<ul>
	<li>Text</li>
	<li>Text</li>
	<li>Text</li>
</ul>
[/dt_sc_pricing_table_item]
[/dt_sc_one_third]

[dt_sc_one_third]
[dt_sc_pricing_table_item title='Summer Special Plus' thumb='http://placehold.it/300x200'  variation='green' heading='Offer' price='9' price2='.99' button_text='Join Now' button_link='#' button_size='small']
<ul>
	<li>Text</li>
	<li>Text</li>
	<li>Text</li>
</ul>
[/dt_sc_pricing_table_item]
[/dt_sc_one_third]

[dt_sc_one_third]
[dt_sc_pricing_table_item title='Summer Special Exclusive' thumb='http://placehold.it/300x200' variation='blue' heading='Offer' price='14' price2='.99' button_text='Join Now' button_link='#' button_size='small']
<ul>
	<li>Text</li>
	<li>Text</li>
	<li>Text</li>
</ul>
[/dt_sc_pricing_table_item]
[/dt_sc_one_third]"
		)
	) );

$dt_modules['general']['progressbar'] = array(
	'name' => __('Progress Bar', 'dt_themes'),
	'tooltip' => 'Add different types of progres bar',
	'icon_class' => 'ico-progressbar',
	'options' => array(
		'type' => array(
			'title' => __('Type', 'dt_themes'),
			'type' => 'select',
			'options' => $progressbar_types,
			'default_value' => array('standard')
		),
		'color' => array(
			'title' => __('Color', 'dt_themes'),
			'type' => 'colorpicker',
			'default_value' => '#6d9ab5'
		),
		'value' => array(
			'title' => __('Value', 'dt_themes'),
			'type' => 'text',
			'default_value' => 55
		),
		'content' => array(
			'title' => __('Text', 'dt_themes'),
			'type' => 'text',
			'is_content' => true,
			'default_value' => 'Lorem ipsum dolor'
		)
	));

$dt_modules['general']['tabs_horizontal'] = array(
	'name' => __('Tabs - Horizontal', 'dt_themes'),
	'tooltip' => 'Add horizontal tabs',
	'icon_class' => 'ico-tabs',
	'options' => array(

		'th_content' => array(
			'title' => __('Content', 'dt_themes'),
			'type' => 'wp_editor',
			'is_content' => true,
			'default_value' => '<br>[dt_sc_tab title="Tab1"]<br>
								Lorem ipsum dolor sit amet, consectetur adipiscing elit. Morbi hendrerit elit turpis, a porttitor tellus sollicitudin at. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos.<br>
								[/dt_sc_tab]<br>
								
								<br>[dt_sc_tab title="Tab2"]<br>
								Lorem ipsum dolor sit amet, consectetur adipiscing elit. Morbi hendrerit elit turpis, a porttitor tellus sollicitudin at. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos.<br>[/dt_sc_tab]<br>
								
								<br>[dt_sc_tab title="Tab3"]<br>
								Lorem ipsum dolor sit amet, consectetur adipiscing elit. Morbi hendrerit elit turpis, a porttitor tellus sollicitudin at. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos.<br>[/dt_sc_tab]<br>'
		)
	)
);

$dt_modules['general']['tabs_horizontal_frame_less'] = array(
	'name' => __('Tabs - Horizontal Frame Less', 'dt_themes'),
	'tooltip' => 'Add horizontal frame less tabs',
	'icon_class' => 'ico-tabs',
	'options' => array(

		'th_content' => array(
			'title' => __('Content', 'dt_themes'),
			'type' => 'wp_editor',
			'is_content' => true,
			'default_value' => '<br>[dt_sc_tab title="Tab1"]<br>
								Lorem ipsum dolor sit amet, consectetur adipiscing elit. Morbi hendrerit elit turpis, a porttitor tellus sollicitudin at. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos.<br>
								[/dt_sc_tab]<br>
								
								<br>[dt_sc_tab title="Tab2"]<br>
								Lorem ipsum dolor sit amet, consectetur adipiscing elit. Morbi hendrerit elit turpis, a porttitor tellus sollicitudin at. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos.<br>[/dt_sc_tab]<br>
								
								<br>[dt_sc_tab title="Tab3"]<br>
								Lorem ipsum dolor sit amet, consectetur adipiscing elit. Morbi hendrerit elit turpis, a porttitor tellus sollicitudin at. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos.<br>[/dt_sc_tab]<br>'
		)
	)
);

$dt_modules['general']['tabs_vertical'] = array(
	'name' => __('Tabs Vertical', 'dt_themes'),
	'tooltip' => 'Add vertical tabs',
	'icon_class' => 'ico-tabs',
	'options' => array(
		'tv_content' => array(
			'title' => __('Content', 'dt_themes'),
			'type' => 'wp_editor',
			'is_content' => true,
			'default_value' => '<br>[dt_sc_tab title="Tab1"]<br>
								Lorem ipsum dolor sit amet, consectetur adipiscing elit. Morbi hendrerit elit turpis, a porttitor tellus sollicitudin at. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos.<br>
								[/dt_sc_tab]<br>
								
								<br>[dt_sc_tab title="Tab2"]<br>
								Lorem ipsum dolor sit amet, consectetur adipiscing elit. Morbi hendrerit elit turpis, a porttitor tellus sollicitudin at. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos.<br>[/dt_sc_tab]<br>
								
								<br>[dt_sc_tab title="Tab3"]<br>
								Lorem ipsum dolor sit amet, consectetur adipiscing elit. Morbi hendrerit elit turpis, a porttitor tellus sollicitudin at. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos.<br>[/dt_sc_tab]<br>'
		)
	)
);

$dt_modules['general']['tabs_vertical_with_icon'] = array(
	'name' => __('Tabs Vertical Icon', 'dt_themes'),
	'tooltip' => 'Add vertical icon tabs',
	'icon_class' => 'ico-tabs',
	'options' => array(
		'tv_content' => array(
			'title' => __('Content', 'dt_themes'),
			'type' => 'wp_editor',
			'is_content' => true,
			'default_value' => '<br>[dt_sc_tab title="Tab1" icon="fa-trophy"]<br>
								Lorem ipsum dolor sit amet, consectetur adipiscing elit. Morbi hendrerit elit turpis, a porttitor tellus sollicitudin at. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos.<br>
								[/dt_sc_tab]<br>
								
								<br>[dt_sc_tab title="Tab2" icon="fa-male"]<br>
								Lorem ipsum dolor sit amet, consectetur adipiscing elit. Morbi hendrerit elit turpis, a porttitor tellus sollicitudin at. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos.<br>[/dt_sc_tab]<br>
								
								<br>[dt_sc_tab title="Tab3" icon="fa-thumbs-o-up"]<br>
								Lorem ipsum dolor sit amet, consectetur adipiscing elit. Morbi hendrerit elit turpis, a porttitor tellus sollicitudin at. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos.<br>[/dt_sc_tab]<br>'
		)
	)
);

$dt_modules['general']['doshortcode_toggledefault'] = array(
	'name' => __('Toggle Default', 'dt_themes'),
	'tooltip' => 'Add default toggles',
	'icon_class' => 'ico-toggle',
	'options' => array(
		'td_content' => array(
			'title' => __('Content', 'dt_themes'),
			'type' => 'wp_editor',
			'is_content' => true,
			'default_value' => '[dt_sc_toggle title="Toggle 1"]<br>
							Lorem ipsum dolor sit amet, consectetur adipiscing elit. Morbi hendrerit elit turpis, a porttitor tellus sollicitudin at. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos.<br>
							[/dt_sc_toggle]<br>

							[dt_sc_toggle title="Toggle 2"]<br>
							Lorem ipsum dolor sit amet, consectetur adipiscing elit. Morbi hendrerit elit turpis, a porttitor tellus sollicitudin at. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos.<br>
							[/dt_sc_toggle]<br>

							[dt_sc_toggle title="Toggle 3"]<br>
							Lorem ipsum dolor sit amet, consectetur adipiscing elit. Morbi hendrerit elit turpis, a porttitor tellus sollicitudin at. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos.<br>
							[/dt_sc_toggle]'
		)
	)
);

$dt_modules['general']['doshortcode_toggleframed'] = array(
	'name' => __('Toggle Framed', 'dt_themes'),
	'tooltip' => 'Add framed toggles',
	'icon_class' => 'ico-toggle',
	'options' => array(
		'tf_content' => array(
			'title' => __('Content', 'dt_themes'),
			'type' => 'wp_editor',
			'is_content' => true,
			'default_value' => '[dt_sc_toggle_framed title="Toggle 1"]<br>
							Lorem ipsum dolor sit amet, consectetur adipiscing elit. Morbi hendrerit elit turpis, a porttitor tellus sollicitudin at. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos.<br>
							[/dt_sc_toggle_framed]<br>

							[dt_sc_toggle_framed title="Toggle 2"]<br>
							Lorem ipsum dolor sit amet, consectetur adipiscing elit. Morbi hendrerit elit turpis, a porttitor tellus sollicitudin at. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos.<br>
							[/dt_sc_toggle_framed]<br>

							[dt_sc_toggle_framed title="Toggle 3"]<br>
							Lorem ipsum dolor sit amet, consectetur adipiscing elit. Morbi hendrerit elit turpis, a porttitor tellus sollicitudin at. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos.<br>
						[/dt_sc_toggle_framed]'
		)
	)
);

$dt_modules['general']['team'] = array(
	'name' => __('Team', 'dt_themes'),
	'tooltip' => 'Use this module to list team members',
	'icon_class' => 'ico-team',
	'options' => array(
		'limit' => array(
			'title' => __('Limit', 'dt_themes'),
			'type' => 'text',
			'default_value' => 4
		),
		'columns' => array(
			'title' => __('Columns', 'dt_themes'),
			'type' => 'select',
			'options' => array( '1' => 'I Column', '2' => 'II Columns', '3' => 'III Columns', '4' => 'IV Columns', '5' => 'V Columns', '6' => 'VI Columns'),
			'default_value' => array('4')
		),
		'role' => array(
			'title' => __('Role', 'dt_themes'),
			'type' => 'select',
			'options' => array( 'yes' => 'Yes', 'no' => 'No'),
			'default_value' => array('yes')
		)
	)
);

$dt_modules['general']['doshortcode_testimonial'] = array(
	'name' => __('Testimonial', 'dt_themes'),
	'tooltip' => __('Use this module to add testimonial', 'dt_themes'),
	'icon_class' => 'ico-testimonial',
	'options' => array(
		'tm_content' => array(
			'title' => __('Content', 'dt_themes'),
			'type' => 'wp_editor',
			'is_content' => true,
			'default_value' => '[dt_sc_testimonial name="Lorem" role="Chairman" image="http://placehold.it/300"]Lorem ipsum dolor sit amet, consectetur adipiscing elit. Morbi hendrerit elit turpis, a porttitor tellus sollicitudin at. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos.[/dt_sc_testimonial]'
		)
	)
);

$dt_modules['general']['icon_box'] = array(
	'name' => __('Icon Box', 'dt_themes'),
	'tooltip' => __('Use this module to add icon box', 'dt_themes'),
	'icon_class' => 'ico-iconbox',
	'options' => array(
		'type' => array(
			'title' => __('Types', 'dt_themes'),
			'type' => 'select',
			'options' => $icon_box_types,
			'default_value' => array('type1')
		),
		'fontawesome_icon' => array(
			'title' => __('Fontawesome Icon', 'dt_themes'),
			'type' => 'text',
			'default_value' => 'fa-trophy'
		),
		'custom_icon' => array(
			'title' => __('Custom Icon', 'dt_themes'),
			'type' => 'upload',
			'default_value' => ''
		),
		'title' => array(
			'title' => __('Title', 'dt_themes'),
			'type' => 'text',
			'default_value' => 'Title Comes Here'
		),
		'link' => array(
			'title' => __('Link', 'dt_themes'),
			'type' => 'text',
			'default_value' => '#'
		),
		'ib_content' => array(
			'title' => __('Content', 'dt_themes'),
			'type' => 'wp_editor',
			'is_content' => true,
			'default_value' => 'Nunc at pretium est curabitur commodo leac est venenatis egestas sed aliquet auguevelit.'
		)
	)
);

$dt_modules['general']['number_count'] = array(
	'name' => __('Number Count', 'dt_themes'),
	'tooltip' => __('Use this module to add number count', 'dt_themes'),
	'icon_class' => 'ico-timeline',
	'options' => array(
		'icon' => array(
			'title' => __('Icon', 'dt_themes'),
			'type' => 'text',
			'default_value' => 'fa-group'
		),
		'value' => array(
			'title' => __('Value', 'dt_themes'),
			'type' => 'text',
			'default_value' => 100
		),
		'title' => array(
			'title' => __('Title', 'dt_themes'),
			'type' => 'text',
			'default_value' => ''
		),
		'nc_content' => array(
			'title' => __('Content', 'dt_themes'),
			'type' => 'wp_editor',
			'is_content' => true,
			'default_value' => 'Nunc at pretium est curabitur commodo leac est venenatis egestas sed aliquet auguevelit.'
		)
	)
);

/*  End of General Modules */

/*  Start of Unique Modules */
$dt_modules['unique']['progress_chart'] = array(
	'name' => __('Donut Chart', 'dt_themes'),
	'tooltip' => __('Use this module to add donutchart', 'dt_themes'),
	'icon_class' => 'ico-donutchart',
	'options' => array(
		'percentage' => array(
			'title' => __('Percentage', 'dt_themes'),
			'type' => 'text',
			'default_value' => 25
		),
		'percent_text' => array(
			'title' => __('Percentage Text', 'dt_themes'),
			'type' => 'text',
			'default_value' => 'Save'
		),
		'bgcolor' => array(
			'title' => __('Background Color', 'dt_themes'),
			'type' => 'colorpicker',
			'default_value' => '#808080'
		),
		'fgcolor' => array(
			'title' => __('Foreground Color', 'dt_themes'),
			'type' => 'colorpicker',
			'default_value' => '#4bbcd7'
		),
		'title' => array(
			'title' => __('Title', 'dt_themes'),
			'type' => 'text'
		),
		'subtitle' => array(
			'title' => __('Sub Title', 'dt_themes'),
			'type' => 'text'
		),
		'button_text' => array(
			'title' => __('Button Text', 'dt_themes'),
			'type' => 'text'
		),
		'button_link' => array(
			'title' => __('Button Link', 'dt_themes'),
			'type' => 'text'
		),
		'size' => array(
			'title' => __('Size', 'dt_themes'),
			'type' => 'select',
			'options' => $button_size,
			'default_value' => array('small')
		),
		'button_color' => array(
			'title' => __('Button Color', 'dt_themes'),
			'type' => 'select',
			'options' => $variations,
			'default_value' => array()
		),
		'pc_content' => array(
			'title' => __('Content', 'dt_themes'),
			'type' => 'wp_editor',
			'is_content' => true,
			'default_value' => 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Morbi hendrerit elit turpis, a porttitor tellus sollicitudin at. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos.'
		)
	)
);

$dt_modules['unique']['blogposts'] = array(
	'name' => __('Recent Posts', 'dt_themes'),
	'tooltip' => __('Use this module to display recent posts', 'dt_themes'),
	'icon_class' => 'ico-recentposts',
	'options' => array(
		'show_feature_image' => array(
			'title' => __('Show Feature Image', 'dt_themes'),
			'type' => 'select',
			'options' => array( 'true' => 'Yes (Default)', 'false' => 'No'),
			'default_value' => array('true')
		),
		'excerpt_length' => array(
			'title' => __('Excerpt Length', 'dt_themes'),
			'type' => 'text',
			'default_value' => '35'
		),
		'show_meta' => array(
			'title' => __('Show Meta', 'dt_themes'),
			'type' => 'select',
			'options' => array( 'true' => 'Yes (Default)', 'false' => 'No'),
			'default_value' => array('true')
		),
		'limit' => array(
			'title' => __('Limit', 'dt_themes'),
			'type' => 'text',
			'default_value' => '3'
		),
		'categories' => array(
			'title' => __('Post Categories', 'dt_themes'),
			'type' => 'text',
			'default_value' => '2,4'
		),
		'posts_column' => array(
			'title' => __('Columns', 'dt_themes'),
			'type' => 'select',
			'options' => array( 'one-column' => 'I Column', 'one-half-column' => 'II Columns'),
			'default_value' => array('one-column')
		),
	)
);

$dt_modules['unique']['gallery_items'] = array(
	'name' => __('Recent Gallery Items', 'dt_themes'),
	'tooltip' => __('Use this module to add recent gallery items', 'dt_themes'),
	'icon_class' => 'ico-portfolio-item',
	'options' => array(
		'limit' => array(
			'title' => __('Limit', 'dt_themes'),
			'type' => 'text',
			'default_value' => '4'
		),
		'categories' => array(
			'title' => __('Portfolio Categories', 'dt_themes'),
			'type' => 'text',
			'default_value' => ''
		),
		'posts_column' => array(
			'title' => __('Columns', 'dt_themes'),
			'type' => 'select',
			'options' => array( 'one-half-column' => 'II Columns', 'one-third-column' => 'III Columns', 'one-fourth-column' => 'IV Columns' ),
			'default_value' => array('one-half-column')
		),
		'filter' => array(
			'title' => __('Show Filter','dt_themes'),
			'type' => 'select',
			'options' => array( 'true' => 'Yes (Default)', 'false' => 'No'),
			'default_value' => array("true")
		),
		'posts_design' => array(
			'title' => __('Design Type','dt_themes'),
			'type' => 'select',
			'options' => array( "default" => __("Default","dt_themes"), "shape-one" => __("Shape One","dt_themes"), "shape-two" => __("Shape Two","dt_themes"), "shape-three" => __("Shape Three","dt_themes") ),
			'default_value' => array("default")
		),
	)
);

$dt_modules['unique']['gallery_carousel'] = array(
	'name' => __('Gallery Items Carousel', 'dt_themes'),
	'tooltip' => __('Use this module to add gallery items carousel', 'dt_themes'),
	'icon_class' => 'ico-portfolio-item',
	'options' => array(
		'limit' => array(
			'title' => __('Limit', 'dt_themes'),
			'type' => 'text',
			'default_value' => '-1'
		),
		'categories' => array(
			'title' => __('Portfolio Categories', 'dt_themes'),
			'type' => 'text',
			'default_value' => ''
		),
		'posts_design' => array(
			'title' => __('Design Type','dt_themes'),
			'type' => 'select',
			'options' => array( "default" => __("Default","dt_themes"), "shape-one" => __("Shape One","dt_themes"), "shape-two" => __("Shape Two","dt_themes"), "shape-three" => __("Shape Three","dt_themes") ),
			'default_value' => array("default")
		),
	)
);

$dt_modules['unique']['events_list'] = array(
	'name' => __('Upcoming Events', 'dt_themes'),
	'tooltip' => __('Use this module to list upcoming events', 'dt_themes'),
	'icon_class' => 'ico-events',
	'options' => array(
		'limit' => array(
			'title' => __('Limit', 'dt_themes'),
			'type' => 'text',
			'default_value' => '2'
		),
		'excerpt_length' => array(
			'title' => __('Excerpt Length', 'dt_themes'),
			'type' => 'text',
			'default_value' => '15'
		),
		'feature_image' => array(
			'title' => __('Feature Image','dt_themes'),
			'type' => 'select',
			'options' => array( "small-thumb" => __("Small Thumb","dt_themes"), "thumb" => __("Thumb","dt_themes"), "medium" => __("Medium","dt_themes") ),
			'default_value' => array("small-thumb")
		),
		'carousel' => array(
			'title' => __('Enable Carousel','dt_themes'),
			'type' => 'select',
			'options' => array( 'true' => 'Yes', 'false' => 'No'),
			'default_value' => array("true")
		),
	)
);

$dt_modules['unique']['doshortcode_review_carousel'] = array(
	'name' => __('Review Carousel', 'dt_themes'),
	'tooltip' => __('Use this module to add review carousel', 'dt_themes'),
	'icon_class' => 'ico-review',
	'options' => array(
		'rc_content' => array(
			'title' => __('Content', 'dt_themes'),
			'type' => 'wp_editor',
			'is_content' => true,
			'default_value' => '[dt_review_carousel]<br>
					[dt_review name="Donec Ornaren" role="Eleifend Magna" image="http://placehold.it/50"]<br>
					Lorem ipsum dolor sit amet, consectetur adipiscing elit. Morbi hendrerit elit turpis, a porttitor tellus sollicitudin at. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos.<br>[/dt_review]
					[dt_review name="Fusce Malesuada" role="Vestibulum Ipsum" image="http://placehold.it/50"]<br>
					Lorem ipsum dolor sit amet, consectetur adipiscing elit. Morbi hendrerit elit turpis, a porttitor tellus sollicitudin at. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos.<br>[/dt_review]
					[dt_review name="Pellensque Facisis" role="Vestibulum Accumsan" image="http://placehold.it/50"]<br>
					Lorem ipsum dolor sit amet, consectetur adipiscing elit. Morbi hendrerit elit turpis, a porttitor tellus sollicitudin at. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos.<br>[/dt_review]
				[/dt_review_carousel]'
		)
	)
);

$dt_modules['unique']['featured_courses'] = array(
	'name' => __('Featured Courses', 'dt_themes'),
	'tooltip' => __('Use this module to display featured courses', 'dt_themes'),
	'icon_class' => 'ico-courses',
	'options' => array(
		'limit' => array(
			'title' => __('Limit', 'dt_themes'),
			'type' => 'text',
			'default_value' => '-1'
		),
		'course_type' => array(
			'title' => __('Course Type', 'dt_themes'),
			'type' => 'select',
			'options' => array( 'recent' => 'Recent', 'featured' => 'Featured', 'paid' => 'Paid' ),
			'default_value' => array('recent')
		),
		'carousel' => array(
			'title' => __('Enable Carousel', 'dt_themes'),
			'type' => 'select',
			'options' => array( 'true' => 'Yes', 'false' => 'No'),
			'default_value' => array('true')
		),
		'categories' => array(
			'title' => __('Categories', 'dt_themes'),
			'type' => 'text'
		)
	)
);

$dt_modules['unique']['doshortcode_newsletter'] = array(
	'name' => __('Newsletter', 'dt_themes'),
	'tooltip' => __('Use this module to add newsletter', 'dt_themes'),
	'icon_class' => 'ico-newsletter-section',
	'options' => array(
		'nl_content' => array(
			'title' => __('Content', 'dt_themes'),
			'type' => 'wp_editor',
			'is_content' => true,
			'default_value' => '<br>[dt_newsletter title="Be the first to know about new Course and Discounts: Subscribe to Newsletter" /]<br>'
		)
	)
);

$dt_modules['unique']['contact_form'] = array(
	'name' => __('Contact Form', 'dt_themes'),
	'tooltip' => __('Use this module to display contact form', 'dt_themes'),
	'icon_class' => 'ico-newsletter-section',
	'options' => array(
		'to_email' => array(
			'title' => __('Recipient Email', 'dt_themes'),
			'type' => 'text',
			'default_value' => get_bloginfo('admin_email')
		),
		'success_msg' => array(
			'title' => __('Success Message', 'dt_themes'),
			'type' => 'text',
			'default_value' => 'Thanks for Contacting Us, We will call back to you soon.'
		),
		'error_msg' => array(
			'title' => __('Error Message', 'dt_themes'),
			'type' => 'text',
			'default_value' => 'Sorry your message not sent, Try again Later.'
		)
	)
);

$dt_modules['unique']['doshortcode_theme_service'] = array(
	'name' => __('Icon Service', 'dt_themes'),
	'tooltip' => __('Use this module to add icon service', 'dt_themes'),
	'icon_class' => 'ico-iconbox',
	'options' => array(
		'nl_content' => array(
			'title' => __('Content', 'dt_themes'),
			'type' => 'wp_editor',
			'is_content' => true,
			'default_value' => '[dt_theme_service icon_url="http://placehold.it/120" title="Title Comes Here" subtitle="Sub Title Comes Here"]Nunc at pretium est curabitur commodo leac est venenatis egestas sed aliquet auguevelit.[/dt_theme_service]'
		)
	)
);

$dt_modules['unique']['doshortcode_social_profile'] = array(
	'name' => __('Social Profile', 'dt_themes'),
	'tooltip' => __('Use this module to add social icons', 'dt_themes'),
	'icon_class' => 'ico-socials',
	'options' => array(
		'nl_content' => array(
			'title' => __('Content', 'dt_themes'),
			'type' => 'wp_editor',
			'is_content' => true,
			'default_value' => '[dt_social text="We can be spotted here!" /]'
		)
	)
);

$dt_modules['unique']['join_button'] = array(
	'name' => __('Join Now Button', 'dt_themes'),
	'tooltip' => __('Use this module to display join now button', 'dt_themes'),
	'icon_class' => 'ico-button',
	'options' => array(
		'link' => array(
			'title' => __('Link', 'dt_themes'),
			'type' => 'text',
			'default_value' => '#'
		),
		'target' => array(
			'title' => __('Target', 'dt_themes'),
			'type' => 'select',
			'options' => $page_targets,
			'default_value' => array('_blank')
		),
		'currency' => array(
			'title' => __('Currency', 'dt_themes'),
			'type' => 'text',
			'default_value' => '&euro;'
		),
		'jb_content' => array(
			'title' => __('Content', 'dt_themes'),
			'type' => 'text',
			'is_content' => true,
			'default_value' => 'Join Now'
		)		
	)
);

$dt_modules['unique']['hr_title'] = array(
	'name' => __('HR Title', 'dt_themes'),
	'tooltip' => __('Use this module to display hr title', 'dt_themes'),
	'icon_class' => 'ico-headings',
	'options' => array(
		'tag' => array(
			'title' => __('Tag', 'dt_themes'),
			'type' => 'select',
			'options' => array( 'h1' => 'H1', 'h2' => 'H2', 'h3' => 'H3', 'h4' => 'H4', 'h5' => 'H5', 'h6' => 'H6'),
			'default_value' => array('h1')
		),
		'hrt_content' => array(
			'title' => __('Content', 'dt_themes'),
			'type' => 'text',
			'is_content' => true,
			'default_value' => 'Lorem ipsum'
		)		
	)
);
/*  End of Unique Modules */

/*  Start of Others Modules */

$dt_modules['others']['intro_text'] = array(
	'name' => __('Intro Text', 'dt_themes'),
	'tooltip' => __('Use this module to add introduction text', 'dt_themes'),
	'icon_class' => 'ico-headings',
	'options' => array(
		'type' => array(
			'title' => __('Type', 'dt_themes'),
			'type' => 'select',
			'options' => array( 'type1' => 'Type - 1', 'type2' => 'Type - 2', 'type3' => 'Type - 3', 'type4' => 'Type - 4'),
			'default_value' => array('type1')
		),
		'class' => array(
			'title' => __('CSS Class', 'dt_themes'),
			'type' => 'select',
			'options' => array( '' => 'Default (Null)', 'with-bg' => 'With BG Color'),
			'default_value' => array('')
		),
		'it_content' => array(
			'title' => __('Content', 'dt_themes'),
			'type' => 'wp_editor',
			'is_content' => true,
			'default_value' => '<h4>The Best Courses like Elsewhere. Come get trained. Guranteed Placements.</h4><h5>You\'ll get what you came for!</h5>[dt_join_button currency="$" link="#"]Join Now[/dt_join_button]<br>'
		)
	)
);

$dt_modules['others']['address'] = array(
	'name' => __('Address', 'dt_themes'),
	'tooltip' => __('Use this module to add address', 'dt_themes'),
	'icon_class' => 'ico-address',
	'options' => array(
		'title' => array(
			'title' => __('Title', 'dt_themes'),
			'type' => 'text',
			'default_value' => 'Address'
		),
		'add_content' => array(
			'title' => __('Address', 'dt_themes'),
			'type' => 'wp_editor',
			'is_content' => true,
			'default_value' => '103, C Block, West Street, New York, BMC, US'
		)
	)
);

$dt_modules['others']['phone'] = array(
	'name' => __('Phone', 'dt_themes'),
	'tooltip' => __('Use this module to add phone', 'dt_themes'),
	'icon_class' => 'ico-phone',
	'options' => array(
		'title' => array(
			'title' => __('Title', 'dt_themes'),
			'type' => 'text',
			'default_value' => ''
		),
		'no' => array(
			'title' => __('Phone Number', 'dt_themes'),
			'type' => 'text',
			'default_value' => ''
		)
	)
);

$dt_modules['others']['email'] = array(
	'name' => __('Email', 'dt_themes'),
	'tooltip' => __('Use this module to add email', 'dt_themes'),
	'icon_class' => 'ico-email',
	'options' => array(
		'title' => array(
			'title' => __('Title', 'dt_themes'),
			'type' => 'text',
			'default_value' => ''
		),
		'id' => array(
			'title' => __('Mail ID', 'dt_themes'),
			'type' => 'text',
			'default_value' => get_bloginfo('admin_email')
		)
	)
);

$dt_modules['others']['website'] = array(
	'name' => __('Website', 'dt_themes'),
	'tooltip' => __('Use this module to add website', 'dt_themes'),
	'icon_class' => 'ico-web',
	'options' => array(
		'title' => array(
			'title' => __('Title', 'dt_themes'),
			'type' => 'text',
			'default_value' => ''
		),
		'url' => array(
			'title' => __('URL', 'dt_themes'),
			'type' => 'text',
			'default_value' => ''
		)
	)
);

$dt_modules['others']['contact_box'] = array(
	'name' => __('Contact Box', 'dt_themes'),
	'tooltip' => __('Use this module to add contact box', 'dt_themes'),
	'icon_class' => 'ico-contactdetails',
	'options' => array(
		'title' => array(
			'title' => __('Title', 'dt_themes'),
			'type' => 'text',
			'default_value' => 'Contact Info'
		),
		'street' => array(
			'title' => __('Street', 'dt_themes'),
			'type' => 'text',
			'default_value' => '103, C Block, West Street, New York, BMC, US'
		),
		'phone' => array(
			'title' => __('Phone', 'dt_themes'),
			'type' => 'text',
			'default_value' => '+020 65241 652145'
		),
		'email' => array(
			'title' => __('Email', 'dt_themes'),
			'type' => 'text',
			'default_value' => 'someemail@somedomain.com'
		),
		'web' => array(
			'title' => __('Web', 'dt_themes'),
			'type' => 'text',
			'default_value' => 'http://somedomain.com'
		)
	)
);

$dt_modules['others']['clear'] = array(
	'name' => __('Clear', 'dt_themes'),
	'tooltip' => __('Add this module to add space between contents', 'dt_themes'),
	'icon_class' => 'ico-divider',
	'disable_resize' => true,
);

$dt_modules['others']['margin'] = array(
	'name' => __('Margin', 'dt_themes'),
	'tooltip' => __('Use this module to add margin', 'dt_themes'),
	'icon_class' => 'ico-divider',
	'options' => array(
		'value' => array(
			'title' => __('Margin Value', 'dt_themes'),
			'type' => 'select',
			'options' => $lengths,
			'default_value' => array(5)
		)
	)
);

$dt_modules['others']['hr'] = array(
	'name' => __('Horizontal Rule', 'dt_themes'),
	'tooltip' => __('Use this module to add horizontal rule', 'dt_themes'),
	'icon_class' => 'ico-divider',
	'disable_resize' => true,
);

$dt_modules['others']['hr_medium'] = array(
	'name' => __('Horizontal Rule Medium', 'dt_themes'),
	'tooltip' => __('Use this module to add medium horizontal rule', 'dt_themes'),
	'icon_class' => 'ico-divider',
	'disable_resize' => true,
);

$dt_modules['others']['hr_large'] = array(
	'name' => __('Horizontal Rule Large', 'dt_themes'),
	'tooltip' => __('Use this module to add large horizontal rule', 'dt_themes'),
	'icon_class' => 'ico-divider',
	'disable_resize' => true,
);

$dt_modules['others']['hr_top'] = array(
	'name' => __('Horizontal Rule With Top Link', 'dt_themes'),
	'tooltip' => __('Use this module to add horizontal rule with top link', 'dt_themes'),
	'icon_class' => 'ico-divider',
	'disable_resize' => true,
);

$dt_modules['others']['hr_invisible'] = array(
	'name' => __('Whitespace', 'dt_themes'),
	'tooltip' => __('Use this module to add whitespace', 'dt_themes'),
	'icon_class' => 'ico-divider',
	'disable_resize' => true,
);

$dt_modules['others']['hr_invisible_medium'] = array(
	'name' => __('Whitespace Medium', 'dt_themes'),
	'tooltip' => __('Use this module to add medium whitespace', 'dt_themes'),
	'icon_class' => 'ico-divider',
	'disable_resize' => true,
);

$dt_modules['others']['hr_invisible_large'] = array(
	'name' => __('Whitespace Large', 'dt_themes'),
	'tooltip' => __('Use this module to add large whitespace', 'dt_themes'),
	'icon_class' => 'ico-divider',
	'disable_resize' => true,
);
/*  End of Others Modules */?>