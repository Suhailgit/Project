(function() {
    tinymce.PluginManager.add('DTCoreShortcodePlugin', function( editor, url ) {
		
		var dummy_conent = "Lorem ipsum dolor sit amet, consectetur"
				+ " adipiscing elit. Morbi hendrerit elit turpis,"
				+ " a porttitor tellus sollicitudin at."
				+ " Class aptent taciti sociosqu ad litora "
				+ " torquent per conubia nostra,"
				+ " per inceptos himenaeos.",

		dummy_tabs = '<br>[dt_sc_tab title="What is Lorem Ipsum?"]'
				+ "<br>" + dummy_conent + "<br>" + '[/dt_sc_tab]' + "<br>"
				+ '[dt_sc_tab title="Where does it come from?"]' + "<br>"
				+ dummy_conent + "<br>" + '[/dt_sc_tab]' + "<br>"
				+ '[dt_sc_tab title="Why do we use it?"]' + "<br>"
				+ dummy_conent + "<br>" + '[/dt_sc_tab]<br>';
				
		var dummy_tabs_icon = '<br>[dt_sc_tab title="What is Lorem Ipsum?" icon="fa-trophy"]'
				+ "<br>" + dummy_conent + "<br>" + '[/dt_sc_tab]' + "<br>"
				+ '[dt_sc_tab title="Where does it come from?" icon="fa-male"]' + "<br>"
				+ dummy_conent + "<br>" + '[/dt_sc_tab]' + "<br>"
				+ '[dt_sc_tab title="Why do we use it?" icon="fa-thumbs-o-up"]' + "<br>"
				+ dummy_conent + "<br>" + '[/dt_sc_tab]<br>';
		
        editor.addButton( 'designthemes_sc_button', {
            title: 'Insert Shortcode',
            type: 'menubutton',
			icon: 'dt-icon',
            menu: [
                {
                    text: 'Accordion',
                    menu: [
                        {
                            text: 'Default',
                            value: '[dt_sc_accordion_group]'
								+'<br>[dt_sc_toggle title="What is Lorem Ipsum?"]<br>'+ dummy_conent + '<br>[/dt_sc_toggle]'
								+'<br>[dt_sc_toggle title="Where does it come from?"]<br>'+ dummy_conent + '<br>[/dt_sc_toggle]'
								+'<br>[dt_sc_toggle title="Why do we use it?"]<br>'+ dummy_conent + '<br>[/dt_sc_toggle]'
								+'<br>[/dt_sc_accordion_group]',
                            onclick: function(e) {
                                e.stopPropagation();
                                editor.insertContent(this.value());
                            }       
                        },
                        {
                            text: 'Framed',
                            value: '[dt_sc_accordion_group]'
								+'<br>[dt_sc_toggle_framed title="What is Lorem Ipsum?"]<br>'+ dummy_conent + '<br>[/dt_sc_toggle_framed]'
								+'<br>[dt_sc_toggle_framed title="Where does it come from?"]<br>'+ dummy_conent + '<br>[/dt_sc_toggle_framed]'
								+'<br>[dt_sc_toggle_framed title="Why do we use it?"]<br>'+ dummy_conent + '<br>[/dt_sc_toggle_framed]'
								+'<br>[/dt_sc_accordion_group]',
                            onclick: function(e) {
                                e.stopPropagation();
                                editor.insertContent(this.value());
                            }       
                        }
                    ]
                },
                {
                    text: 'Box',
                    value: 'box',
                    onclick: function() {
					editor.windowManager.open( {
							title: 'Insert Box',
							body: [{
								type: 'listbox',
								name: 'type',
								label: 'Type',
								tooltip: 'Select which type of box you will use',
								'values': [
									{text: 'Titled Box', value: 'titled-box'}, {text: 'Error Box', value: 'error-box'}, {text: 'Warning Box', value: 'warning-box'},
									{text: 'Success Box', value: 'success-box'}, {text: 'Info Box', value: 'info-box'}
								]
							},
							{
								type: 'textbox',
								name: 'title',
								label: 'Title',
								tooltip: 'Your title applicable for titled box only'
							},
							{
								type: 'textbox',
								name: 'bgcolor',
								label: 'Background Color',
								classes: 'dt-color-picker',
								tooltip: 'Select background color of box',
								onPostRender: function(e){
									jQuery('.mce-dt-color-picker').wpColorPicker();
								},
							},
							{
								type: 'listbox', 
								name: 'variation', 
								label: 'Variation',
								tooltip: 'Select color variation of box',
								'values': [
									{text: 'Choose Option', value: ''}, {text: 'Blue', value: 'blue'}, {text: 'Chocolate', value: 'chocolate'}, {text: 'Coral', value: 'coral'},
									{text: 'Cyan', value: 'cyan'}, {text: 'Eggplant', value: 'eggplant'}, {text: 'Electricblue', value: 'electricblue'}, {text: 'Ferngreen', value: 'ferngreen'},
									{text: 'Gold', value: 'gold'}, {text: 'Green', value: 'green'}, {text: 'Grey', value: 'grey'}, {text: 'Khaki', value: 'khaki'}, {text: 'Ocean', value: 'ocean'},
									{text: 'Orange', value: 'orange'}, {text: 'Palebrown', value: 'palebrown'}, {text: 'Pink', value: 'pink'}, {text: 'Purple', value: 'purple'},
									{text: 'Raspberry', value: 'raspberry'}, {text: 'Red', value: 'red'}, {text: 'Skyblue', value: 'skyblue'}, {text: 'Slateblue', value: 'slateblue'}
								]
							},
							{
								type: 'textbox',
								name: 'textcolor',
								label: 'Text Color',
								classes: 'dt-color-picker',								
								tooltip: 'Select text color of box',
								onPostRender: function(e){
									jQuery('.mce-dt-color-picker').wpColorPicker();
								},
							}],
							onsubmit: function( e ) {
								var $out = '[dt_sc_box';

								jQuery.each( e.data, function( key, value ) {
									if(value !== "") {
										$out += ' ' + key + '="'+ value+'"';
									}
								});
								
								$out += ']Lorem ipsum dolor sit amet, consectetur adipiscing elit. Morbi hendrerit elit turpis, a porttitor tellus sollicitudin at. Class aptent taciti sociosqu ad litora torquent per conubia nostra per inceptos himenaeos.,[/dt_sc_box]';
								editor.insertContent( $out );
							}
						});
                    }
                },
                {
                    text: 'Button',
                    value: 'button',
                    onclick: function() {
					editor.windowManager.open( {
							title: 'Insert Button',
							body: [{
								type: 'textbox',
								name: 'content',
								label: 'Title',
								value: 'Click me!',
								tooltip: 'Type button text'
							},
							{
								type: 'textbox',
								name: 'link',
								label: 'Link',
								tooltip: 'Optional link (e.g. http://google.com)'								
							},
							{
								type: 'listbox',
								name: 'size', 
								label: 'Size',
								tooltip: 'Select size of button',
								'values': [
									{text: 'Small', value: 'small'}, {text: 'Medium', value: 'medium'},
									{text: 'Large', value: 'large'}, {text: 'Xlarge', value: 'xlarge'}
								]
							},
							{
								type: 'textbox',
								name: 'bgcolor',
								label: 'Background Color',
								classes: 'dt-color-picker',
								tooltip: 'Select background color of box',
								onPostRender: function(e){
									jQuery('.mce-dt-color-picker').wpColorPicker();
								},
							},
							{
								type: 'listbox', 
								name: 'variation', 
								label: 'Variation',
								tooltip: 'Select color variation of button',
								'values': [
									{text: 'Choose Option', value: ''}, {text: 'Blue', value: 'blue'}, {text: 'Chocolate', value: 'chocolate'}, {text: 'Coral', value: 'coral'},
									{text: 'Cyan', value: 'cyan'}, {text: 'Eggplant', value: 'eggplant'}, {text: 'Electricblue', value: 'electricblue'}, {text: 'Ferngreen', value: 'ferngreen'},
									{text: 'Gold', value: 'gold'}, {text: 'Green', value: 'green'}, {text: 'Grey', value: 'grey'}, {text: 'Khaki', value: 'khaki'}, {text: 'Ocean', value: 'ocean'},
									{text: 'Orange', value: 'orange'}, {text: 'Palebrown', value: 'palebrown'}, {text: 'Pink', value: 'pink'}, {text: 'Purple', value: 'purple'},
									{text: 'Raspberry', value: 'raspberry'}, {text: 'Red', value: 'red'}, {text: 'Skyblue', value: 'skyblue'}, {text: 'Slateblue', value: 'slateblue'}
								]
							},
							{
								type: 'textbox',
								name: 'textcolor',
								label: 'Text Color',
								classes: 'dt-color-picker',								
								tooltip: 'Select button text color',
								onPostRender: function(e){
									jQuery('.mce-dt-color-picker').wpColorPicker();
								},
							},
							{
								type: 'listbox',
								name: 'align', 
								label: 'Align',
								tooltip: 'Select button alignment',
								'values': [
									{text: 'Left', value: 'left'}, {text: 'Center', value: 'center'}, {text: 'Right', value: 'right'}
								]
							},
							{
								type: 'listbox',
								name: 'target', 
								label: 'Target',
								tooltip: 'Setting target to _blank will open your link in new tab',
								'values': [
									{text: 'Blank', value: '_blank'}, {text: 'New', value: '_new'}, {text: 'Parent', value: '_parent'},
									{text: 'Self', value: '_self'}, {text: 'Top', value: '_top'}									
								]
							}],
							onsubmit: function( e ) {
								var $out = '[dt_sc_button';

								jQuery.each( e.data, function( key, value ) {
									if(value !== "" && key != 'content') {
										$out += ' ' + key + '="'+ value+'"';
									}
								});

								if(e.data.content == "") {
									$out += ']' + e.data.content;
								} else {
									$out += ']' + 'Click me!';
								}

								$out += '[/dt_sc_button]';
								editor.insertContent( $out );
							}
						});
                    }
                },
				{
                    text: 'Column Layout',
                    value: 'column',
                    onclick: function(e) {
						e.stopPropagation();						
						tinyMCE.activeEditor.execCommand("scnOpenDialog", {title: this.text() ,identifier: "column"});
                    }
				},
                {
                    text: 'Dividers',
                    menu: [
                        {
                            text: 'Clear',
                            value: '<br>[dt_sc_clear /]<br>',
                            onclick: function(e) {
                                e.stopPropagation();
                                editor.insertContent(this.value());
                            }
                        },
						{
							text: 'Margin',
		                    value: 'margin',
							onclick: function() {
							editor.windowManager.open( {
									title: 'Insert Margin',
									body: [{
										type: 'listbox',
										name: 'value',
										label: 'Margin Value',
										tooltip: 'Select the value of margin',
										'values': [
											{text: '5', value: '5'}, {text: '10', value: '10'}, {text: '15', value: '15'}, {text: '20', value: '20'}, {text: '25', value: '25'}, {text: '30', value: '30'}, 
											{text: '35', value: '35'}, {text: '40', value: '40'}, {text: '45', value: '45'}, {text: '50', value: '50'}, {text: '55', value: '55'}, {text: '60', value: '60'},
											{text: '65', value: '65'}, {text: '70', value: '70'}, {text: '75', value: '75'}, {text: '80', value: '80'}, {text: '85', value: '85'}, {text: '90', value: '90'},
											{text: '95', value: '95'}, {text: '100', value: '100'}
										]
									}],
									onsubmit: function( e ) {
										var $out = '[dt_margin';
										
										jQuery.each( e.data, function( key, value ) {
											if(value !== "") {
												$out += ' ' + key + '="'+ value+'"';
											}
										});
										
										$out += ' /]';
										editor.insertContent( $out );
									}
								});
							}							
						},
                        {
                            text: 'Horizontal Rule',
                            value: '<br>[dt_sc_hr /]<br>',
                            onclick: function(e) {
                                e.stopPropagation();
                                editor.insertContent(this.value());
                            }
                        },
                        {
                            text: 'Horizontal Rule Medium',
                            value: '<br>[dt_sc_hr_medium /]<br>',
                            onclick: function(e) {
                                e.stopPropagation();
                                editor.insertContent(this.value());
                            }
                        },
                        {
                            text: 'Horizontal Rule Large',
                            value: '<br>[dt_sc_hr_large /]<br>',
                            onclick: function(e) {
                                e.stopPropagation();
                                editor.insertContent(this.value());
                            }
                        },
                        {
                            text: 'Horizontal Rule with top link',
                            value: '<br>[dt_sc_hr top /]<br>',
                            onclick: function(e) {
                                e.stopPropagation();
                                editor.insertContent(this.value());
                            }
                        },
                        {
                            text: 'Whitespace',
                            value: '<br>[dt_sc_hr_invisible /]<br>',
                            onclick: function(e) {
                                e.stopPropagation();
                                editor.insertContent(this.value());
                            }
                        },
                        {
                            text: 'Whitespace Medium',
                            value: '<br>[dt_sc_hr_invisible_medium /]<br>',
                            onclick: function(e) {
                                e.stopPropagation();
                                editor.insertContent(this.value());
                            }
                        },
                        {
                            text: 'Whitespace Large',
                            value: '<br>[dt_sc_hr_invisible_large /]<br>',
                            onclick: function(e) {
                                e.stopPropagation();
                                editor.insertContent(this.value());
                            }
                        }
                    ]
                },
                {
                    text: 'Icon Boxes',
                    value: 'iconbox',
                    onclick: function(e) {
						e.stopPropagation();						
						tinyMCE.activeEditor.execCommand("scnOpenDialog", {title: this.text() ,identifier: "iconbox"});
                    }
                },
                {
                    text: 'Full Width Section',
                    value: 'fullwidth',
                    onclick: function() {
					editor.windowManager.open( {
							title: 'Insert Full-Width Section',
							body: [{
								type: 'textbox',
								name: 'backgroundcolor',
								label: 'Background Color',
								classes: 'dt-color-picker',
								onPostRender: function(e){
									jQuery('.mce-dt-color-picker').wpColorPicker();
								},
							},
							{
								type: 'textbox',
								name: 'backgroundimage',
								label: 'Background Image',
								tooltip: 'Put full-width section background image'
							},
							{
								type: 'textbox',
								name: 'opacity',
								label: 'Background Opacity',
								tooltip: 'Add opacity for background ( 0- 1 )'
							},
							{
								type: 'listbox',
								name: 'parallax',
								label: 'Parallax Effect',
								tooltip: 'Enable parallax effect for background',
								'values': [
									{text: 'No (Default)', value: 'no'}, {text: 'Yes', value: 'yes'}
								]
							},
							{
								type: 'listbox',
								name: 'backgroundrepeat',
								label: 'Background Repeat',
								'values': [
									{text: 'No Repeat (Default)', value: 'no-repeat'}, {text: 'Repeat', value: 'repeat'}, {text: 'Repeat - X', value: 'repeat-x'}, {text: 'Repeat - Y', value: 'repeat-y'}
								]
							},
							{
								type: 'listbox',
								name: 'backgroundposition',
								label: 'Background Position',
								'values': [
									{text: 'Choose Option', value: ''}, {text: 'Left Top', value: 'left top'}, {text: 'Left Center', value: 'left center'}, {text: 'Left Bottom', value: 'left bottom'},
									{text: 'Right Top', value: 'right top'}, {text: 'Right Center', value: 'right center'}, {text: 'Right Bottom', value: 'right bottom'},
									{text: 'Center Top', value: 'center top'}, {text: 'Center Center', value: 'center center'}, {text: 'Center Bottom', value: 'center bottom'}
								]
							},
							{
								type: 'textbox',
								name: 'paddingtop',
								label: 'Padding Top',
								tooltip: 'In pixels (eg: 50)'
							},
							{
								type: 'textbox',
								name: 'paddingbottom',
								label: 'Padding Bottom',
								tooltip: 'In pixels (eg: 50)'
							},
							{
								type: 'textbox',
								name: 'textcolor',
								label: 'Text Color',
								classes: 'dt-color-picker',
								onPostRender: function(e){
									jQuery('.mce-dt-color-picker').wpColorPicker();
								},
							},
							{
								type: 'textbox',
								name: 'class',
								label: 'CSS Class',
								tooltip: 'Additional classes seperated by space'
							}],
							onsubmit: function( e ) {
								var $out = '[dt_sc_fullwidth_section';
								
								jQuery.each( e.data, function( key, value ) {
									if(value !== "") {
										$out += ' ' + key + '="'+ value+'"';
									}
								});
								
								$out += ']Lorem ipsum dolor sit amet, consectetur adipiscing elit. Cras cursus sollicitudin nunc nec rhoncus.[/dt_sc_fullwidth_section]';
								editor.insertContent( $out );
							}
						});
                    }
                },
                {
                    text: 'Full Width Video',
                    value: 'video',
                    onclick: function() {
					editor.windowManager.open( {
							title: 'Insert Full-Width Video',
							body: [{
								type: 'textbox',
								name: 'mp4',
								label: 'MP4',
								tooltip: '(eg: http://download.wavetlan.com/video.mp4)'
							},
							{
								type: 'textbox',
								name: 'webm',
								label: 'WEBM',
								tooltip: '(eg: http://video.webmfiles.org/video.webm)'
							},
							{
								type: 'textbox',
								name: 'ogv',
								label: 'OGV',
								tooltip: '(eg: http://upload.wikimedia.org/video.ogv)'
							},
							{
								type: 'textbox',
								name: 'poster',
								label: 'Poster Image'
							},
							{
								type: 'textbox',
								name: 'backgroundimage',
								label: 'Background Image',
								tooltip: 'Image will shown, if your browser doesn\'t support video tag'
							},
							{
								type: 'textbox',
								name: 'paddingtop',
								label: 'Padding Top',
								tooltip: 'In pixels (eg: 50)'
							},
							{
								type: 'textbox',
								name: 'paddingbottom',
								label: 'Padding Bottom',
								tooltip: 'In pixels (eg: 50)'
							},
							{
								type: 'textbox',
								name: 'class',
								label: 'CSS Class',
								tooltip: 'Additional classes seperated by space'
							}],
							onsubmit: function( e ) {
								var $out = '[dt_sc_fullwidth_video';
								
								jQuery.each( e.data, function( key, value ) {
									if(value !== "") {
										$out += ' ' + key + '="'+ value+'"';
									}
								});
								
								$out += ']Lorem ipsum dolor sit amet, consectetur adipiscing elit. Cras vel vehicula augue. Proin consectetur dictum lectus, at sagittis risus aliquet sit amet. Nullam luctus sodales felis non condimentum. In odio urna, lobortis nec tincidunt et, ultricies vel lacus. Donec lorem nisl, accumsan in lobortis laoreet, eleifend ac quam. Suspendisse vestibulum, odio eu molestie tristique, eros neque faucibus lorem, sit amet semper augue elit et quam. Nulla lobortis dui blandit urna mollis posuere ut vestibulum lorem. Maecenas a mi viverra, fringilla ligula non, malesuada nisl.[/dt_sc_fullwidth_video]';
								editor.insertContent( $out );
							}
						});
                    }
                },
				{
                    text: 'Lists',
                    menu: [
                        {
                            text: 'Ordered List',
							value: 'orderedlist',
							onclick: function() {
							editor.windowManager.open( {
									title: 'Insert Ordered List',
									body: [{
										type: 'listbox',
										name: 'style',
										label: 'Style',
										tooltip: 'Select the style of list that you wish to use',
										'values': [
											{text: 'Decimal (Default)', value: 'decimal'}, {text: 'Decimal Leading Zero', value: 'decimal-leading-zero'}, {text: 'Lower Alpha', value: 'lower-alpha'},
											{text: 'Lower Roman', value: 'lower-roman'}, {text: 'Upper Alpha', value: 'upper-alpha'}, {text: 'Upper Roman', value: 'upper-roman'}
										]
									},
									{
										type: 'listbox', 
										name: 'variation', 
										label: 'Variation',
										tooltip: 'Select color skin of list',
										'values': [
											{text: 'Choose Option', value: ''}, {text: 'Blue', value: 'blue'}, {text: 'Chocolate', value: 'chocolate'}, {text: 'Coral', value: 'coral'},
											{text: 'Cyan', value: 'cyan'}, {text: 'Eggplant', value: 'eggplant'}, {text: 'Electricblue', value: 'electricblue'}, {text: 'Ferngreen', value: 'ferngreen'},
											{text: 'Gold', value: 'gold'}, {text: 'Green', value: 'green'}, {text: 'Grey', value: 'grey'}, {text: 'Khaki', value: 'khaki'}, {text: 'Ocean', value: 'ocean'},
											{text: 'Orange', value: 'orange'}, {text: 'Palebrown', value: 'palebrown'}, {text: 'Pink', value: 'pink'}, {text: 'Purple', value: 'purple'},
											{text: 'Raspberry', value: 'raspberry'}, {text: 'Red', value: 'red'}, {text: 'Skyblue', value: 'skyblue'}, {text: 'Slateblue', value: 'slateblue'}
										]
									}],
									onsubmit: function( e ) {
										var $out = '[dt_sc_fancy_ol';
										
										jQuery.each( e.data, function( key, value ) {
											if(value !== "" && key != 'content') {
												$out += ' ' + key + '="'+ value+'"';
											}
										});
										
										$out += ']<ol>' + '<li>Lorem ipsum dolor sit </li>'
										+ '<li>Praesent convallis nibh</li>'
										+ '<li>Nullam ac sapien sit</li>'
										+ '<li>Phasellus auctor augue</li></ol><br>[/dt_sc_fancy_ol]';
										editor.insertContent( $out );
									}
								});
							}							
						},
                        {
                            text: 'Unordered List',
							value: 'unorderedlist',
							onclick: function() {
							editor.windowManager.open( {
									title: 'Insert Unordered List',
									body: [{
										type: 'listbox',
										name: 'style',
										label: 'Style',
										tooltip: 'Select the style of list that you wish to use',
										'values': [
											{text: 'Arrow (Default)', value: 'arrow'}, {text: 'Rounded Arrow', value: 'rounded-arrow'}, {text: 'Double Arrow', value: 'double-arrow'},
											{text: 'Heart', value: 'heart'}, {text: 'Trash', value: 'trash'}, {text: 'Star', value: 'star'}, {text: 'Tick', value: 'tick'},
											{text: 'Rounded Tick', value: 'rounded-tick'}, {text: 'Cross', value: 'cross'}, {text: 'Rounded Cross', value: 'rounded-cross'},
											{text: 'Rounded Question', value: 'rounded-question'}, {text: 'Delete', value: 'delete'}, {text: 'Warning', value: 'warning'}, {text: 'Comment', value: 'comment'},
											{text: 'Edit', value: 'edit'}, {text: 'Share', value: 'share'}, {text: 'Plus', value: 'plus'}, {text: 'Minus', value: 'minus'},
											{text: 'rounded-minus', value: 'rounded-minus'}, {text: 'Thumbs Down', value: 'thumbs-down'},
											{text: 'Rounded Info', value: 'rounded-info'}, {text: 'Rounded Plus', value: 'rounded-plus'}, {text: 'Asterisk', value: 'asterisk'}, {text: 'Cart', value: 'cart'},
											{text: 'Folder', value: 'folder'}, {text: 'Folder Open', value: 'folder-open'}, {text: 'Desktop', value: 'desktop'}, {text: 'Tablet', value: 'tablet'},
											{text: 'Mobile', value: 'mobile'}, {text: 'Reply', value: 'reply'}, {text: 'Quote', value: 'quote'}, {text: 'Mail', value: 'mail'},
											{text: 'External Link', value: 'external-link'}, {text: 'Adjust', value: 'adjust'}, {text: 'Pencil', value: 'pencil'},
											{text: 'Print', value: 'print'}, {text: 'Tag', value: 'tag'}, {text: 'Thumbs Up', value: 'thumbs-up'}, {text: 'Time', value: 'time'},
											{text: 'Globe', value: 'globe'}, {text: 'Pushpin', value: 'pushpin'}, {text: 'Map Marker', value: 'map-marker'}, {text: 'Link', value: 'link'},
											{text: 'Paper Clip', value: 'paper-clip'}, {text: 'Download', value: 'download'}, {text: 'Key', value: 'key'},
											{text: 'Search', value: 'search'}, {text: 'RSS', value: 'rss'}, {text: 'Twitter', value: 'twitter'}, {text: 'Facebook', value: 'facebook'},
											{text: 'LinkedIn', value: 'linkedin'}, {text: 'Google Plus', value: 'google-plus'}, {text: 'Beer', value: 'beer'}, {text: 'Circle Alt', value: 'circle-o'}
										]
									},
									{
										type: 'listbox',
										name: 'variation',
										label: 'Variation',
										tooltip: 'Select color skin of list',
										'values': [
											{text: 'Choose Option', value: ''}, {text: 'Blue', value: 'blue'}, {text: 'Chocolate', value: 'chocolate'}, {text: 'Coral', value: 'coral'},
											{text: 'Cyan', value: 'cyan'}, {text: 'Eggplant', value: 'eggplant'}, {text: 'Electricblue', value: 'electricblue'}, {text: 'Ferngreen', value: 'ferngreen'},
											{text: 'Gold', value: 'gold'}, {text: 'Green', value: 'green'}, {text: 'Grey', value: 'grey'}, {text: 'Khaki', value: 'khaki'}, {text: 'Ocean', value: 'ocean'},
											{text: 'Orange', value: 'orange'}, {text: 'Palebrown', value: 'palebrown'}, {text: 'Pink', value: 'pink'}, {text: 'Purple', value: 'purple'},
											{text: 'Raspberry', value: 'raspberry'}, {text: 'Red', value: 'red'}, {text: 'Skyblue', value: 'skyblue'}, {text: 'Slateblue', value: 'slateblue'}
										]
									}],
									onsubmit: function( e ) {
										var $out = '[dt_sc_fancy_ul';
										
										jQuery.each( e.data, function( key, value ) {
											if(value !== "" && key != 'content') {
												$out += ' ' + key + '="'+ value+'"';
											}
										});
										
										$out += ']<ul>' + '<li>Lorem ipsum dolor sit </li>'
										+ '<li>Praesent convallis nibh</li>'
										+ '<li>Nullam ac sapien sit</li>'
										+ '<li>Phasellus auctor augue</li></ul><br>[/dt_sc_fancy_ul]';
										editor.insertContent( $out );
									}
								});
							}
						}
					]
				},
                {
                    text: 'Pricing Table',
                    value: 'pricingtable',
                    onclick: function(e) {
						e.stopPropagation();
						tinyMCE.activeEditor.execCommand("scnOpenDialog", {title: this.text() ,identifier: "pricingtable"});
                    }
                },
                {
                    text: 'Progress Bar',
                    menu: [
                        {
                            text: 'Standard',
                            value: '<br>[dt_sc_progressbar value="85" type="standard" color="#9c59b6" textcolor=""]Lorem ipsum dolor[/dt_sc_progressbar]<br>',
                            onclick: function(e) {
                                e.stopPropagation();
                                editor.insertContent(this.value());
                            }
                        },
                        {
                            text: 'Stripe',
                            value: '<br>[dt_sc_progressbar value="75" type="progress-striped" color="#599cb6" textcolor=""]Lorem ipsum dolor[/dt_sc_progressbar]<br>',
                            onclick: function(e) {
                                e.stopPropagation();
                                editor.insertContent(this.value());
                            }
                        },
                        {
                            text: 'Active',
                            value: '<br>[dt_sc_progressbar value="45" color="#b6599c" type="progress-striped-active"]Lorem ipsum dolor[/dt_sc_progressbar]<br>',
                            onclick: function(e) {
                                e.stopPropagation();
                                editor.insertContent(this.value());
                            }
                        }
                    ]
                },
                {
                    text: 'Quotes',
                    menu: [
                        {
                            text: 'Pullquote',
							value: 'pullquote',
							onclick: function() {
							editor.windowManager.open( {
									title: 'Insert Pullquote',
									body: [{
										type: 'listbox',
										name: 'type',
										label: 'Style',
										tooltip: 'Select style of quote',
										'values': [
											{text: 'Pullquote - 1', value: 'pullquote1'}, {text: 'Pullquote - 2', value: 'pullquote2'}, {text: 'Pullquote - 3', value: 'pullquote3'},
											{text: 'Pullquote - 4', value: 'pullquote4'}, {text: 'Pullquote - 5', value: 'pullquote5'}, {text: 'Pullquote - 6', value: 'pullquote6'}
										]
									},
									{
										type: 'listbox', 
										name: 'icon', 
										label: 'Icon',
										tooltip: 'Select "Yes" to display icon',
										'values': [
											{text: 'Yes', value: 'yes'}, {text: 'No', value: 'no'}
										]
									},
									{
										type: 'listbox', 
										name: 'align', 
										label: 'Align',
										tooltip: 'Select quote alignment',
										'values': [
											{text: 'Left', value: 'left'}, {text: 'Right', value: 'right'}, {text: 'Center', value: 'center'}
										]
									},
									{
										type: 'textbox',
										name: 'textcolor',
										label: 'Text Color',
										classes: 'dt-color-picker',								
										onPostRender: function(e){
											jQuery('.mce-dt-color-picker').wpColorPicker();
										},
									},
									{
										type: 'textbox',
										name: 'cite',
										label: 'Cite Name',
										tooltip: 'This should display at the end of quote'
									}],
									onsubmit: function( e ) {
										var $out = '[dt_sc_pullquote';
										
										jQuery.each( e.data, function( key, value ) {
											if(value !== "") {
												$out += ' ' + key + '="'+ value+'"';
											}
										});
										
										$out += ']Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vivamus ac luctus ligula. Phasellus a ligula blandit[/dt_sc_pullquote]';
										editor.insertContent( $out );
									}
								});
							}							
						},
                        {
                            text: 'Blockquote',
							value: 'blockquote',
							onclick: function() {
							editor.windowManager.open( {
									title: 'Insert Blockquote',
									body: [{
										type: 'listbox',
										name: 'align',
										label: 'Align',
										tooltip: 'Select alignment of quote',
										'values': [
											{text: 'Left', value: 'left'}, {text: 'Right', value: 'right'}, {text: 'Center', value: 'center'}
										]
									},
									{
										type: 'listbox',
										name: 'variation',
										label: 'Variation',
										tooltip: 'Select skin color of quote',
										'values': [
											{text: 'Choose Option', value: ''}, {text: 'Blue', value: 'blue'}, {text: 'Chocolate', value: 'chocolate'}, {text: 'Coral', value: 'coral'},
											{text: 'Cyan', value: 'cyan'}, {text: 'Eggplant', value: 'eggplant'}, {text: 'Electricblue', value: 'electricblue'}, {text: 'Ferngreen', value: 'ferngreen'},
											{text: 'Gold', value: 'gold'}, {text: 'Green', value: 'green'}, {text: 'Grey', value: 'grey'}, {text: 'Khaki', value: 'khaki'}, {text: 'Ocean', value: 'ocean'},
											{text: 'Orange', value: 'orange'}, {text: 'Palebrown', value: 'palebrown'}, {text: 'Pink', value: 'pink'}, {text: 'Purple', value: 'purple'},
											{text: 'Raspberry', value: 'raspberry'}, {text: 'Red', value: 'red'}, {text: 'Skyblue', value: 'skyblue'}, {text: 'Slateblue', value: 'slateblue'}
										]
									},									
									{
										type: 'textbox',
										name: 'textcolor',
										label: 'Text Color',
										classes: 'dt-color-picker',
										onPostRender: function(e){
											jQuery('.mce-dt-color-picker').wpColorPicker();
										},
									},
									{
										type: 'textbox',
										name: 'cite',
										label: 'Cite Name',
										tooltip: 'This should display at the end of quote'
									}],
									onsubmit: function( e ) {
										var $out = '[dt_sc_blockquote';
										
										jQuery.each( e.data, function( key, value ) {
											if(value !== "") {
												$out += ' ' + key + '="'+ value+'"';
											}
										});
										
										$out += ']Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vivamus ac luctus ligula. Phasellus a ligula blandit[/dt_sc_blockquote]';
										editor.insertContent( $out );
									}
								});
							}
                        }
                    ]
                },
                {
                    text: 'Tabs',
                    menu: [
                        {
                            text: 'Horizontal',
                            value: '[dt_sc_tabs_horizontal]' + dummy_tabs + '[/dt_sc_tabs_horizontal]',
                            onclick: function(e) {
                                e.stopPropagation();
                                editor.insertContent(this.value());
                            }       
                        },
                        {
                            text: 'Horizontal Frameless',
                            value: '[dt_sc_tabs_horizontal_frame_less]' + dummy_tabs + '[/dt_sc_tabs_horizontal_frame_less]',
                            onclick: function(e) {
                                e.stopPropagation();
                                editor.insertContent(this.value());
                            }       
                        },
                        {
                            text: 'Vertical',
                            value: '[dt_sc_tabs_vertical]' + dummy_tabs + '[/dt_sc_tabs_vertical]',
                            onclick: function(e) {
                                e.stopPropagation();
                                editor.insertContent(this.value());
                            }       
                        },
                        {
                            text: 'Vertical with Icon',
                            value: '[dt_sc_tabs_vertical]' + dummy_tabs_icon + '[/dt_sc_tabs_vertical]',
                            onclick: function(e) {
                                e.stopPropagation();
                                editor.insertContent(this.value());
                            }       
                        }						
                    ]
                },
                {
                    text: 'Toggle',
                    menu: [
                        {
                            text: 'Default',
                            value: '[dt_sc_toggle title="What is Lorem Ipsum?"]<br>'+ dummy_conent + '<br>[/dt_sc_toggle]'
								+'<br>[dt_sc_toggle title="Where does it come from?"]<br>'+ dummy_conent + '<br>[/dt_sc_toggle]'
								+'<br>[dt_sc_toggle title="Why do we use it?"]<br>'+ dummy_conent + '<br>[/dt_sc_toggle]',
                            onclick: function(e) {
                                e.stopPropagation();
                                editor.insertContent(this.value());
                            }       
                        },
                        {
                            text: 'Framed',
                            value: '[dt_sc_toggle_framed title="What is Lorem Ipsum?"]<br>'+ dummy_conent + '<br>[/dt_sc_toggle_framed]'
								+'<br>[dt_sc_toggle_framed title="Where does it come from?"]<br>'+ dummy_conent + '<br>[/dt_sc_toggle_framed]'
								+'<br>[dt_sc_toggle_framed title="Why do we use it?"]<br>'+ dummy_conent + '<br>[/dt_sc_toggle_framed]',
                            onclick: function(e) {
                                e.stopPropagation();
                                editor.insertContent(this.value());
                            }
                        }					
                    ]
                },
                {
                    text: 'Tooltip',
                    value: 'tooltip',
                    onclick: function() {
					editor.windowManager.open( {
							title: 'Insert Tooltip',
							body: [{
								type: 'listbox',
								name: 'type',
								label: 'Type',
								tooltip: 'Select type of tooltip',
								'values': [
									{text: 'Default', value: 'default'}, {text: 'Boxed', value: 'boxed'}
								]
							},
							{
								type: 'listbox',
								name: 'position',
								label: 'Position',
								tooltip: 'Select position of tooltip',
								'values': [
									{text: 'Top', value: 'top'}, {text: 'Right', value: 'right'}, {text: 'Bottom', value: 'bottom'}, {text: 'Left', value: 'left'}
								]
							},
							{
								type: 'textbox',
								name: 'bgcolor',
								label: 'Background Color',
								classes: 'dt-color-picker',
								onPostRender: function(e){
									jQuery('.mce-dt-color-picker').wpColorPicker();
								},
							},
							{
								type: 'textbox',
								name: 'textcolor',
								label: 'Text Color',
								classes: 'dt-color-picker',
								onPostRender: function(e){
									jQuery('.mce-dt-color-picker').wpColorPicker();
								},
							},
							{
								type: 'textbox',
								name: 'tooltip',
								label: 'Tooltip Text',
								tooltip: 'This text will display as tooltip'
							},
							{
								type: 'textbox',
								name: 'href',
								label: 'Link',
								tooltip: 'Put URL to the button'
							},
							{
								type: 'listbox',
								name: 'target',
								label: 'Target',
								tooltip: 'Setting target to _blank will open your link in new tab',
								'values': [
									{text: 'Blank', value: '_blank'}, {text: 'New', value: '_new'}, {text: 'Parent', value: '_parent'},
									{text: 'Self', value: '_self'}, {text: 'Top', value: '_top'}
								]
							}],
							onsubmit: function( e ) {
								var $out = '[dt_sc_tooltip';
								
								jQuery.each( e.data, function( key, value ) {
									if(value !== "") {
										$out += ' ' + key + '="'+ value+'"';
									}
								});
								
								$out += ']lorem ipsum[/dt_sc_tooltip]';
								editor.insertContent( $out );
							}
						});
                    }
                },
                {
                    text: 'Others',
                    menu: [
                        {
                            text: 'Team',
							value: 'team',
							onclick: function() {
							editor.windowManager.open( {
									title: 'Insert Team Members',
									body: [{
										type: 'textbox',
										name: 'limit',
										label: 'Limit',
										value: '4',
										tooltip: 'No.of team members to display'
									},
									{
										type: 'listbox',
										name: 'columns',
										label: 'Columns',
										tooltip: 'Select type of column to display team',
										'values': [
											{text: 'Choose Option', value: ''}, {text: 'I Column', value: '1'}, {text: 'II Columns', value: '2'}, {text: 'III Columns', value: '3'},
											{text: 'IV Columns', value: '4'}, {text: 'V Columns', value: '5'}, {text: 'VI Columns', value: '6'}
										]
									},
									{
										type: 'listbox',
										name: 'role',
										label: 'Role',
										tooltip: 'Select "Yes" to display role',										
										'values': [
											{text: 'Yes', value: 'yes'}, {text: 'No', value: 'no'}
										]
									}],
									onsubmit: function( e ) {
										var $out = '<br>[dt_sc_team';
										
										jQuery.each( e.data, function( key, value ) {
											if(value !== "") {
												$out += ' ' + key + '="'+ value+'"';
											}
										});
										
										$out += ' /]<br>';
										editor.insertContent( $out );
									}
								});
							}
                        },
                        {
                            text: 'Testimonial',
                            value: '<br>[dt_sc_testimonial name="Lorem" role="Chairman" image=""]' + dummy_conent + '[/dt_sc_testimonial]<br>',
                            onclick: function(e) {
                                e.stopPropagation();
                                editor.insertContent(this.value());
                            }
                        },
                        {
                            text: 'Contact Form',
							value: 'contactform',
							onclick: function() {
							editor.windowManager.open( {
									title: 'Insert Contact Form',
									body: [{
										type: 'textbox',
										name: 'to_email',
										label: 'Recipient Email',
										tooltip: 'Enter Recipient Email Address'
									},
									{
										type: 'textbox',
										name: 'success_msg',
										label: 'Success Message',
										tooltip: 'If leaves: "Thanks for Contacting Us, We will call back to you soon."'
									},
									{
										type: 'textbox',
										name: 'error_msg',
										label: 'Error Message',
										tooltip: 'If leaves: "Sorry your message not sent, Try again Later."'
									}],
									onsubmit: function( e ) {
										var $out = '[dt_contact_form';
										
										jQuery.each( e.data, function( key, value ) {
											if(value !== "") {
												$out += ' ' + key + '="'+ value+'"';
											}
										});
										
										$out += ' /]';
										editor.insertContent( $out );
									}
								});
							}
                        },
                        {
                            text: 'Address',
                            value: '<br>[dt_address title="Address"]103, C Block, West Street, New York, BMC, US[/dt_address]<br>',
                            onclick: function(e) {
                                e.stopPropagation();
                                editor.insertContent(this.value());
                            }
                        },
                        {
                            text: 'Phone',
                            value: '<br>[dt_phone title="Phone" no="+020 65241 652145" /]<br>',
                            onclick: function(e) {
                                e.stopPropagation();
                                editor.insertContent(this.value());
                            }
                        },
                        {
                            text: 'Email',
                            value: '<br>[dt_email title="Mail" id="someemail@somedomain.com" /]<br>',
                            onclick: function(e) {
                                e.stopPropagation();
                                editor.insertContent(this.value());
                            }
                        },
                        {
                            text: 'Website',
                            value: '<br>[dt_website title="Website" url="http://somedomain.com" /]<br>',
                            onclick: function(e) {
                                e.stopPropagation();
                                editor.insertContent(this.value());
                            }
                        },
                        {
                            text: 'Social Profile',
                            value: '<br>[dt_social text="We can be spotted here!" /]<br>',
                            onclick: function(e) {
                                e.stopPropagation();
                                editor.insertContent(this.value());
                            }
                        },
                        {
                            text: 'Contact Box',
                            value: '<br>[dt_contact_box title="Contact Info" street="103, C Block, West Street, New York, BMC, US" phone="+020 65241 652145" email="someemail@somedomain.com" web="http://somedomain.com" /]<br>',
                            onclick: function(e) {
                                e.stopPropagation();
                                editor.insertContent(this.value());
                            }
                        },
                        {
                            text: 'Intro Text',
							value: 'introtext',
							onclick: function() {
							editor.windowManager.open( {
									title: 'Insert Intro Text',
									body: [{
										type: 'listbox',
										name: 'type',
										label: 'Type',
										tooltip: 'Select the type of intro text',
										'values': [
											{text: 'Type - 1', value: 'type1'}, {text: 'Type - 2', value: 'type2'}, {text: 'Type - 3', value: 'type3'}, {text: 'Type - 4', value: 'type4'}
										]
									},
									{
										type: 'listbox',
										name: 'class',
										label: 'CSS Class',
										tooltip: 'Additional classes seperated by space',
										'values': [
											{text: 'Default (Null)', value: ''}, {text: 'With BG Color', value: 'with-bg'}
										]
									}],
									onsubmit: function( e ) {
										var $out = '[dt_intro_text';
										
										jQuery.each( e.data, function( key, value ) {
											if(value !== "") {
												$out += ' ' + key + '="'+ value+'"';
											}
										});
										
										$out += ']<h4>The Best Courses like Elsewhere. Come get trained. Guranteed Placements.</h4><h5>You\'ll get what you came for!</h5>[dt_join_button currency="$" link="#"]Join Now[/dt_join_button]<br>[/dt_intro_text]';
										editor.insertContent( $out );
									}
								});
							}
                        },
						
                    ]
                },
                {
                    text: 'Theme',
                    menu: [
                        {
                            text: 'Join Now Button',
							value: 'joinnowbtn',
							onclick: function() {
							editor.windowManager.open( {
									title: 'Insert Join Now Button',
									body: [{
										type: 'textbox',
										name: 'link',
										label: 'Link',
										tooltip: 'Enter the url of button'
									},
									{
										type: 'listbox',
										name: 'target',
										label: 'Target',
										tooltip: 'Setting target to _blank will open your link in new tab',
										'values': [
											{text: 'Blank', value: '_blank'}, {text: 'New', value: '_new'}, {text: 'Parent', value: '_parent'},
											{text: 'Self', value: '_self'}, {text: 'Top', value: '_top'}
										]
									},
									{
										type: 'textbox',
										name: 'currency',
										label: 'Currency',
										tooltip: 'Put currency code / text. eg: &euro;'
									}],
									onsubmit: function( e ) {
										var $out = '[dt_join_button';
										
										jQuery.each( e.data, function( key, value ) {
											if(value !== "") {
												$out += ' ' + key + '="'+ value+'"';
											}
										});
										
										$out += ']Join Now[/dt_join_button]';
										editor.insertContent( $out );
									}
								});
							}
                        },
                        {
                            text: 'Title with HR',
							value: 'titlewithhr',
							onclick: function() {
							editor.windowManager.open( {
									title: 'Insert Title with HR',
									body: [{
										type: 'listbox',
										name: 'tag',
										label: 'Tag',
										tooltip: 'Select tag will use for custom title',
										'values': [
											{text: 'H1', value: 'h1'}, {text: 'H2', value: 'h2'}, {text: 'H3', value: 'h3'}, {text: 'H4', value: 'h4'}, {text: 'H5', value: 'h5'}, {text: 'H6', value: 'h6'}
										]
									}],
									onsubmit: function( e ) {
										var $out = '[dt_hr_title';
										
										jQuery.each( e.data, function( key, value ) {
											if(value !== "") {
												$out += ' ' + key + '="'+ value+'"';
											}
										});
										
										$out += ']Lorem ipsum[/dt_hr_title]';
										editor.insertContent( $out );
									}
								});
							}
                        },
                        {
                            text: 'Icon Service',
							value: 'iconservice',
							onclick: function() {
							editor.windowManager.open( {
									title: 'Insert Icon Service',
									body: [{
										type: 'textbox',
										name: 'icon_url',
										label: 'Icon URL',
										tooltip: 'Put url of the icon'
									},
									{
										type: 'textbox',
										name: 'title',
										label: 'Title',
										tooltip: 'Put the title of service'
									},
									{
										type: 'textbox',
										name: 'subtitle',
										label: 'Sub Title',
										tooltip: 'Put the sub-title of service'
									}],
									onsubmit: function( e ) {
										var $out = '[dt_theme_service';
										
										jQuery.each( e.data, function( key, value ) {
											if(value !== "") {
												$out += ' ' + key + '="'+ value+'"';
											}
										});
										
										$out += ']' + dummy_conent + '[/dt_theme_service]';
										editor.insertContent( $out );
									}
								});
							}
                        },
                        {
                            text: 'Animate Section',
							value: 'animatesection',
							onclick: function() {
							editor.windowManager.open( {
									title: 'Insert Animate Section',
									body: [{
										type: 'listbox',
										name: 'animation',
										label: 'Type',
										tooltip: 'Select the type of animation',
										'values': [
											{text: 'FadeIn (Default)', value: 'fadeIn'}, {text: 'Flash', value: 'flash'}, {text: 'Shake', value: 'shake'},
											{text: 'Bounce', value: 'bounce'}, {text: 'Tada', value: 'tada'}, {text: 'Swing', value: 'swing'},
											{text: 'Wobble', value: 'wobble'}, {text: 'Pulse', value: 'pulse'}, {text: 'Flip', value: 'flip'},
											{text: 'FadeOut', value: 'fadeOut'}, {text: 'BounceIn', value: 'bounceIn'}, {text: 'BounceOut', value: 'bounceOut'},
											{text: 'RotateIn', value: 'rotateIn'}, {text: 'RotateOut', value: 'rotateOut'}, {text: 'Hinge', value: 'hinge'},
											{text: 'RollIn', value: 'rollIn'}, {text: 'RollOut', value: 'rollOut'}, {text: 'LightSpeedIn', value: 'lightSpeedIn'},
											{text: 'LightSpeedOut', value: 'lightSpeedOut'}, {text: 'SlideDown', value: 'slideDown'}, {text: 'SlideUp', value: 'slideUp'},
											{text: 'SlideLeft', value: 'slideLeft'}, {text: 'SlideRight', value: 'slideRight'}, {text: 'BigEntrance', value: 'bigEntrance'},
											{text: 'Hatch', value: 'hatch'}, {text: 'Floating', value: 'floating'}, {text: 'Tossing', value: 'tossing'},
											{text: 'PullUp', value: 'pullUp'}, {text: 'StretchLeft', value: 'stretchLeft'}, {text: 'StretchRight', value: 'stretchRight'}
										]
									},
									{
										type: 'textbox',
										name: 'delay',
										label: 'Delay',
										value: '300',
										tooltip: 'Put the delay value of animation'
									}],
									onsubmit: function( e ) {
										var $out = '[dt_animate';
										
										jQuery.each( e.data, function( key, value ) {
											if(value !== "") {
												$out += ' ' + key + '="'+ value+'"';
											}
										});
										
										$out += ']' + dummy_conent + '[/dt_animate]';
										editor.insertContent( $out );
									}
								});
							}
                        },
                        {
                            text: 'Progress Chart',
							value: 'progresschart',
							onclick: function() {
							editor.windowManager.open( {
									title: 'Insert Progress Chart',
									body: [{
										type: 'textbox',
										name: 'percentage',
										label: 'Percentage',
										value: '25',
										tooltip: 'Put the value of percentage'
									},
									{
										type: 'textbox',
										name: 'percent_text',
										label: 'Percent Text',
										value: 'Save',
										tooltip: 'Put the percent text'
									},
									{
										type: 'textbox',
										name: 'bgcolor',
										label: 'Background Color',
										classes: 'dt-color-picker',
										tooltip: 'Select background color of box',
										onPostRender: function(e){
											jQuery('.mce-dt-color-picker').wpColorPicker();
										},
									},
									{
										type: 'textbox',
										name: 'fgcolor',
										label: 'Foreground Color',
										classes: 'dt-color-picker',
										tooltip: 'Select foreground color of box',
										onPostRender: function(e){
											jQuery('.mce-dt-color-picker').wpColorPicker();
										},
									},
									{
										type: 'textbox',
										name: 'title',
										label: 'Title',
										tooltip: 'Put the title text'
									},
									{
										type: 'textbox',
										name: 'subtitle',
										label: 'Sub Title',
										tooltip: 'Put the sub-title text'
									},
									{
										type: 'textbox',
										name: 'button_text',
										label: 'Button Text',
										tooltip: 'Put the button text'
									},
									{
										type: 'textbox',
										name: 'button_link',
										label: 'Button Link',
										tooltip: 'Put the button link'
									},
									{
										type: 'listbox',
										name: 'size', 
										label: 'Size',
										tooltip: 'Select size of button',
										'values': [
											{text: 'Small', value: 'small'}, {text: 'Medium', value: 'medium'},
											{text: 'Large', value: 'large'}, {text: 'Xlarge', value: 'xlarge'}
										]
									},
									{
										type: 'listbox', 
										name: 'button_color', 
										label: 'Button Color',
										tooltip: 'Select color variation of button',
										'values': [
											{text: 'Choose Option', value: ''}, {text: 'Blue', value: 'blue'}, {text: 'Chocolate', value: 'chocolate'}, {text: 'Coral', value: 'coral'},
											{text: 'Cyan', value: 'cyan'}, {text: 'Eggplant', value: 'eggplant'}, {text: 'Electricblue', value: 'electricblue'}, {text: 'Ferngreen', value: 'ferngreen'},
											{text: 'Gold', value: 'gold'}, {text: 'Green', value: 'green'}, {text: 'Grey', value: 'grey'}, {text: 'Khaki', value: 'khaki'}, {text: 'Ocean', value: 'ocean'},
											{text: 'Orange', value: 'orange'}, {text: 'Palebrown', value: 'palebrown'}, {text: 'Pink', value: 'pink'}, {text: 'Purple', value: 'purple'},
											{text: 'Raspberry', value: 'raspberry'}, {text: 'Red', value: 'red'}, {text: 'Skyblue', value: 'skyblue'}, {text: 'Slateblue', value: 'slateblue'}
										]
									}],
									onsubmit: function( e ) {
										var $out = '[dt_progress_chart';
										
										jQuery.each( e.data, function( key, value ) {
											if(value !== "") {
												$out += ' ' + key + '="'+ value+'"';
											}
										});
										
										$out += ']' + dummy_conent + '[/dt_progress_chart]';
										editor.insertContent( $out );
									}
								});
							}
                        },
                        {
                            text: 'Blog Posts',
							value: 'blogposts',
							onclick: function() {
							editor.windowManager.open( {
									title: 'Insert Blog Posts',
									body: [{
										type: 'listbox',
										name: 'show_feature_image',
										label: 'Show Feature Image',
										tooltip: 'Enable feature image for posts',
										'values': [
											{text: 'Yes (Default)', value: 'true'}, {text: 'No', value: 'false'}
										]
									},
									{
										type: 'textbox',
										name: 'excerpt_length',
										label: 'Excerpt Length',
										value: '35',
										tooltip: 'Put the value of excerpt length'
									},
									{
										type: 'listbox',
										name: 'show_meta',
										label: 'Show Meta',
										tooltip: 'Enable post meta for posts',
										'values': [
											{text: 'Yes (Default)', value: 'true'}, {text: 'No', value: 'false'}
										]
									},									
									{
										type: 'textbox',
										name: 'limit',
										label: 'Limit',
										tooltip: 'Enter no.of posts to show. By default shows all posts(-1)'
									},
									{
										type: 'textbox',
										name: 'categories',
										label: 'Post Categories',
										value: '2,4',
										tooltip: 'Put the categories you want to display (seperated by commas(,))'
									},
									{
										type: 'listbox',
										name: 'posts_column',
										label: 'Column Type',
										'values': [
											{text: 'One Column', value: 'one-column'}, {text: 'Two Column', value: 'one-half-column'}
										]
									}],
									onsubmit: function( e ) {
										var $out = '[dt_blog_posts';
										
										jQuery.each( e.data, function( key, value ) {
											if(value !== "") {
												$out += ' ' + key + '="'+ value+'"';
											}
										});
										
										$out += ' /]';
										editor.insertContent( $out );
									}
								});
							}
                        },
                        {
                            text: 'Gallery Items',
							value: 'galleryitems',
							onclick: function() {
							editor.windowManager.open( {
									title: 'Insert Gallery Items',
									body: [{
										type: 'textbox',
										name: 'limit',
										label: 'Limit',
										tooltip: 'Enter no.of items to show. By default shows all items(-1)'
									},
									{
										type: 'textbox',
										name: 'categories',
										label: 'Portfolio Categories',
										value: '2,4',
										tooltip: 'Put the categories you want to display (seperated by commas(,))'
									},
									{
										type: 'listbox',
										name: 'posts_column',
										label: 'Column Type',
										'values': [
											{text: 'Two Column', value: 'one-half-column'}, {text: 'Three Column', value: 'one-third-column'}, {text: 'Four Column', value: 'one-fourth-column'}
										]
									},									
									{
										type: 'listbox',
										name: 'filter',
										label: 'Show Filter',
										tooltip: 'Enable portfolio categories filter.',
										'values': [
											{text: 'Yes (Default)', value: 'true'}, {text: 'No', value: 'false'}
										]
									},
									{
										type: 'listbox',
										name: 'posts_design',
										label: 'Design Type',
										'values': [
											{text: 'Default', value: 'default'}, {text: 'Shape One', value: 'shape-one'}, {text: 'Shape Two', value: 'shape-two'}, {text: 'Shape Three', value: 'shape-three'}
										]
									}],
									onsubmit: function( e ) {
										var $out = '[dt_gallery_items';
										
										jQuery.each( e.data, function( key, value ) {
											if(value !== "") {
												$out += ' ' + key + '="'+ value+'"';
											}
										});
										
										$out += ' /]';
										editor.insertContent( $out );
									}
								});
							}
                        },
                        {
                            text: 'Gallery Carousel',
							value: 'gallerycarousel',
							onclick: function() {
							editor.windowManager.open( {
									title: 'Insert Gallery Carousel',
									body: [{
										type: 'textbox',
										name: 'limit',
										label: 'Limit',
										tooltip: 'Enter no.of items to show. By default shows all items(-1)'
									},
									{
										type: 'textbox',
										name: 'categories',
										label: 'Portfolio Categories',
										value: '2,4',
										tooltip: 'Put the categories you want to display (seperated by commas(,))'
									},
									{
										type: 'listbox',
										name: 'posts_design',
										label: 'Design Type',
										'values': [
											{text: 'Default', value: 'default'}, {text: 'Shape One', value: 'shape-one'}, {text: 'Shape Two', value: 'shape-two'}, {text: 'Shape Three', value: 'shape-three'}
										]
									}],
									onsubmit: function( e ) {
										var $out = '[dt_gallery_carousel';
										
										jQuery.each( e.data, function( key, value ) {
											if(value !== "") {
												$out += ' ' + key + '="'+ value+'"';
											}
										});
										
										$out += ' /]';
										editor.insertContent( $out );
									}
								});
							}
                        },
                        {
                            text: 'Event List',
							value: 'eventlist',
							onclick: function() {
							editor.windowManager.open( {
									title: 'Insert Event List',
									body: [{
										type: 'textbox',
										name: 'limit',
										label: 'Limit',
										tooltip: 'Enter no.of items to show. By default shows all items(-1)'
									},
									{
										type: 'textbox',
										name: 'excerpt_length',
										label: 'Excerpt Length',
										value: '15',
										tooltip: 'Put the value of excerpt length'
									},
									{
										type: 'listbox',
										name: 'feature_image',
										label: 'Feature Image',
										tooltip: 'Feature image type for events',
										'values': [
											{text: 'Small Thumb', value: 'small-thumb'}, {text: 'Thumb', value: 'thumb'}, {text: 'Medium', value: 'medium'}
										]
									},
									{
										type: 'listbox',
										name: 'carousel',
										label: 'Enable Carousel',
										tooltip: 'To check "Yes" to enable Carousel animation',
										'values': [
											{text: 'Yes', value: 'true'}, {text: 'No', value: 'false'}
										]
									}],
									onsubmit: function( e ) {
										var $out = '[dt_events_list';
										
										jQuery.each( e.data, function( key, value ) {
											if(value !== "") {
												$out += ' ' + key + '="'+ value+'"';
											}
										});
										
										$out += ' /]';
										editor.insertContent( $out );
									}
								});
							}
                        },
                        {
                            text: 'Reviews Carousel',
                            value: '[dt_review_carousel]'
								+'<br>[dt_review name="Donec Ornaren" role="Eleifend Magna" image="http://placehold.it/50"]<br>'+ dummy_conent + '<br>[/dt_review]'
								+'<br>[dt_review name="Fusce Malesuada" role="Vestibulum Ipsum" image="http://placehold.it/50"]<br>'+ dummy_conent + '<br>[/dt_review]'
								+'<br>[dt_review name="Pellensque Facisis" role="Vestibulum Accumsan" image="http://placehold.it/50"]<br>'+ dummy_conent + '<br>[/dt_review]'
								+'<br>[/dt_review_carousel]',
                            onclick: function(e) {
                                e.stopPropagation();
                                editor.insertContent(this.value());
                            }
                        },
                        {
                            text: 'Counting Number',
							value: 'countnumber',
							onclick: function() {
							editor.windowManager.open( {
									title: 'Insert Counting Number',
									body: [{
										type: 'listbox',
										name: 'icon',
										label: 'Icon',
										tooltip: 'Select the icon for service',
										'values': [
											{text: 'Heart', value: 'fa-heart'}, {text: 'Star', value: 'fa-star'}, {text: 'Warning', value: 'fa-warning'}, {text: 'Comment', value: 'fa-comment'},
											{text: 'Edit', value: 'fa-edit'}, {text: 'Share', value: 'fa-share'}, {text: 'Plus', value: 'fa-plus'}, {text: 'Minus', value: 'fa-minus'},
											{text: 'Thumbs Down', value: 'fa-thumbs-down'}, {text: 'Asterisk', value: 'fa-asterisk'}, 
											{text: 'Folder', value: 'fa-folder'}, {text: 'Folder Open', value: 'fa-folder-open'}, {text: 'Desktop', value: 'fa-desktop'}, {text: 'Tablet', value: 'fa-tablet'},
											{text: 'Mobile', value: 'fa-mobile'}, {text: 'Reply', value: 'fa-reply'},
											{text: 'External Link', value: 'fa-external-link'}, {text: 'Adjust', value: 'fa-adjust'}, {text: 'Pencil', value: 'fa-pencil'},
											{text: 'Print', value: 'fa-print'}, {text: 'Tag', value: 'fa-tag'}, {text: 'Thumbs Up', value: 'fa-thumbs-up'},
											{text: 'Globe', value: 'fa-globe'}, {text: 'Map Marker', value: 'fa-map-marker'}, {text: 'Link', value: 'fa-link'},
											{text: 'Download', value: 'fa-download'}, {text: 'Key', value: 'fa-key'},
											{text: 'Search', value: 'fa-search'}, {text: 'RSS', value: 'fa-rss'}, {text: 'Twitter', value: 'fa-twitter'}, {text: 'Facebook', value: 'fa-facebook'},
											{text: 'LinkedIn', value: 'fa-linkedin'}, {text: 'Google Plus', value: 'fa-google-plus'}, {text: 'Beer', value: 'fa-beer'}, {text: 'Circle Alt', value: 'fa-circle-o'}
										]
									},
									{
										type: 'textbox',
										name: 'value',
										label: 'Value',
										tooltip: 'Put the value of counting number (eg: 150)'
									},
									{
										type: 'textbox',
										name: 'title',
										label: 'Title',
										tooltip: 'Put the title of counting number'
									}],
									onsubmit: function( e ) {
										var $out = '[dt_number_count';
										
										jQuery.each( e.data, function( key, value ) {
											if(value !== "") {
												$out += ' ' + key + '="'+ value+'"';
											}
										});
										
										$out += ']' + dummy_conent + '[/dt_number_count]';
										editor.insertContent( $out );
									}
								});
							}
                        },
                        {
                            text: 'Newsletter',
                            value: '<br>[dt_newsletter title="Be the first to know about new Course and Discounts: Subscribe to Newsletter" /]<br>',
                            onclick: function(e) {
                                e.stopPropagation();
                                editor.insertContent(this.value());
                            }
                        },
                        {
                            text: 'Featured Courses',
							value: 'featuredcourses',
							onclick: function() {
							editor.windowManager.open( {
									title: 'Insert Featured Courses',
									body: [{
										type: 'textbox',
										name: 'limit',
										label: 'Limit',
										tooltip: 'Enter no.of items to show. By default shows all items(-1)'
									},
									{
										type: 'listbox',
										name: 'course_type',
										label: 'Course Type',
										tooltip: 'Select the type of course',
										'values': [
											{text: 'Recent', value: 'recent'}, {text: 'Featured', value: 'featured'}, {text: 'Paid', value: 'paid'}
										]
									},
									{
										type: 'listbox',
										name: 'carousel',
										label: 'Enable Carousel',
										tooltip: 'To check "Yes" to enable Carousel animation',
										'values': [
											{text: 'Yes', value: 'true'}, {text: 'No', value: 'false'}
										]
									},
									{
										type: 'textbox',
										name: 'categories',
										label: 'Categories',
										tooltip: 'Put course categories, by comma(,) seperated'
									}],
									onsubmit: function( e ) {
										var $out = '[dt_featured_courses';
										
										jQuery.each( e.data, function( key, value ) {
											if(value !== "") {
												$out += ' ' + key + '="'+ value+'"';
											}
										});
										
										$out += ' /]';
										editor.insertContent( $out );
									}
								});
							}
                        }
					]
				}
           ]
        });
		
		editor.addCommand("scnOpenDialog", function(obj) {
			scnSelectedShortcodeType = obj.identifier;
			jQuery.get(url + "/dialog.php", function(b) {
				jQuery("#scn-dialog").remove();
				jQuery("body").append(b);
				jQuery("#scn-dialog").hide();
				var f = jQuery(window).width();
				b = jQuery(window).height();
				f = 720 < f ? 720 : f;
				f -= 80;
				b -= 84;
				tb_show("Insert Shortcode", "#TB_inline?width=800"+ "&height=400&inlineId=scn-dialog");
				jQuery("#scn-options h3:first").text("Customize the " + obj.title + " Shortcode");
			});
		});
		
    });
})();