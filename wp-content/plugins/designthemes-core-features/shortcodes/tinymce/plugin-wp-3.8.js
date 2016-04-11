(function() {
	tinymce.create("tinymce.plugins.DTCoreShortcodePlugin", {

		init : function(d, e) {

			d.addCommand("scnOpenDialog", function(a, c) {
				scnSelectedShortcodeType = c.identifier;

				jQuery.get(e + "/dialog.php", function(b) {
					jQuery("#scn-dialog").remove();
					jQuery("body").append(b);
					jQuery("#scn-dialog").hide();
					var f = jQuery(window).width();
					b = jQuery(window).height();
					f = 720 < f ? 720 : f;
					f -= 80;
					b -= 84;
					tb_show("Insert Shortcode", "#TB_inline?width=" + f
							+ "&height=" + b + "&inlineId=scn-dialog");
					jQuery("#scn-options h3:first").text(
							"Customize the " + c.title + " Shortcode");
				});

			});

		},

		getInfo : function() {
			return {
				longname : 'DesignThemes Core Shortcodes',
				author : 'DesignThemes',
				authorurl : 'http://themeforest.net/user/designthemes',
				infourl : '',
				version : "1.0"
			};

		},

		createControl : function(btn, e) {

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

			if ("designthemes_sc_button" === btn) {

				var a = this;
				var btn = e.createSplitButton("designthemes_sc_buttons",
						{
							title : "Insert Shortcode",
							image : DTCorePlugin.tinymce_folder
									+ "/images/dt-icon.png",
							icons : false
						});

				btn.onRenderMenu
						.add(function(c, b) {

							/* Accordion */
							c = b.addMenu({
								title : "Accordion"
							});
							a.addImmediate(c, "Default",
								"[dt_sc_accordion_group]"
								+'<br>[dt_sc_toggle title="What is Lorem Ipsum?"]<br>'+ dummy_conent + "<br>[/dt_sc_toggle]"
								+'<br>[dt_sc_toggle title="Where does it come from?"]<br>'+ dummy_conent + "<br>[/dt_sc_toggle]"
								+'<br>[dt_sc_toggle title="Why do we use it?"]<br>'+ dummy_conent + "<br>[/dt_sc_toggle]"
								+"<br>[/dt_sc_accordion_group]");
							 									
							a.addImmediate(c, "Framed",
								"[dt_sc_accordion_group]"
								+'<br>[dt_sc_toggle_framed title="What is Lorem Ipsum?"]<br>'+ dummy_conent + "<br>[/dt_sc_toggle_framed]"
								+'<br>[dt_sc_toggle_framed title="Where does it come from?"]<br>'+ dummy_conent + "<br>[/dt_sc_toggle_framed]"
								+'<br>[dt_sc_toggle_framed title="Why do we use it?"]<br>'+ dummy_conent + "<br>[/dt_sc_toggle_framed]"
								+"<br>[/dt_sc_accordion_group]");
							
							a.addWithDialog(b, "Box", "box");
							a.addWithDialog(b, "Button", "button");
							a.addWithDialog(b, "Column Layout", "column");

							/* Dividers Shortcodes */
							c = b.addMenu({
								title : "Dividers"
							});
							
							a.addImmediate(c,"Clear",
									"<br>[dt_sc_clear]<br>");
							
							a.addImmediate(c, "Horizontal Rule",
									"<br>[dt_sc_hr] <br>");
							
							a.addImmediate(c, "Horizontal Rule Medium",
									"<br>[dt_sc_hr_medium] <br>");
							
							a.addImmediate(c, "Horizontal Rule Large",
									"<br>[dt_sc_hr_large] <br>");
							
							a.addImmediate(c, "Horizontal Rule with top link",
									"<br>[dt_sc_hr top] <br>");
							
							a.addImmediate(c, "Whitespace",
									"<br>[dt_sc_hr_invisible] <br>");
							
							a.addImmediate(c, "Whitespace Medium",
									"<br>[dt_sc_hr_invisible_medium] <br>");
							
							a.addImmediate(c, "Whitespace Large",
									"<br>[dt_sc_hr_invisible_large] <br>");

							/* Icon Box */
							a.addWithDialog(b, "Icon Boxes", "iconbox");

							/* Full Width Section */
							a.addWithDialog(b,"Full Width Section","fullwidth");

							/* Full Width Section */
							a.addWithDialog(b,"Full Width Video","video");

							/* List Shortcodes */
							c = b.addMenu({
								title : "Lists"
							});
							a.addWithDialog(c, "Ordered List", "orderedlist");
							a.addWithDialog(c, "Unordered List","unorderedlist");

							/*Pricing Table*/
							a.addWithDialog(b, "Pricing Table", "pricingtable");
							
							/* Progressbar*/
							c = b.addMenu({ title:"Progress Bar"});
							a.addImmediate(c, "Standard","<br>[dt_sc_progressbar value='85' type='standard' color='#9c59b6' textcolor=''] consectetur[/dt_sc_progressbar]<br>");
							a.addImmediate(c, "Stripe","<br>[dt_sc_progressbar value='75' type='progress-striped' color='' textcolor=''] consectetur[/dt_sc_progressbar]<br>");
							a.addImmediate(c, "Active","<br>[dt_sc_progressbar value='45' type='progress-striped-active'] consectetur[/dt_sc_progressbar]<br>");

							/* Quotes */
							c = b.addMenu({
								title : "Quotes"
							});
							a.addWithDialog(c, "Pullquote", "pullquote");
							a.addWithDialog(c, "Blockquote", "blockquote");

							/* Tab */
							c = b.addMenu({
								title : "Tabs"
							});
							a.addImmediate(c, "Horizontal",
									"[dt_sc_tabs_horizontal]" + dummy_tabs
											+ "[/dt_sc_tabs_horizontal]");

							var s = "[dt_sc_tabs_horizontal_frame_less]"
									+ dummy_tabs
									+ "[/dt_sc_tabs_horizontal_frame_less]";
							a.addImmediate(c, "Frameless", s);

							a.addImmediate(c, "Vertical",
									"[dt_sc_tabs_vertical]" + dummy_tabs
											+ "[/dt_sc_tabs_vertical]");

							a.addImmediate(c, "Vertical with Icon",
									"[dt_sc_tabs_vertical]" + dummy_tabs_icon
											+ "[/dt_sc_tabs_vertical]");

							/* Toggle */
							c = b.addMenu({
								title : "Toggle"
							});

							a.addImmediate(c, "Default",
								'[dt_sc_toggle title="What is Lorem Ipsum?"]<br>'+ dummy_conent + "<br>[/dt_sc_toggle]"
								+'<br>[dt_sc_toggle title="Where does it come from?"]<br>'+ dummy_conent + "<br>[/dt_sc_toggle]"
								+'<br>[dt_sc_toggle title="Why do we use it?"]<br>'+ dummy_conent + "<br>[/dt_sc_toggle]");
							
							a.addImmediate(c, "Framed",
								'[dt_sc_toggle_framed title="What is Lorem Ipsum?"]<br>'+ dummy_conent + "<br>[/dt_sc_toggle_framed]"
								+'<br>[dt_sc_toggle_framed title="Where does it come from?"]<br>'+ dummy_conent + "<br>[/dt_sc_toggle_framed]"
								+'<br>[dt_sc_toggle_framed title="Why do we use it?"]<br>'+ dummy_conent + "<br>[/dt_sc_toggle_framed]");
									
							/* Tooltip Shortcodes */
							a.addWithDialog(b, "Tooltip", "tooltip");

							c = b.addMenu({
								title : "Others"
							});
							
							a.addImmediate(c, "Team",'<br>[dt_sc_team limit= "4" columns="4" role="yes" /]<br>');
							a.addImmediate(c, "Testimonial",'<br>[dt_sc_testimonial name="Lorem" role="Chairman" image=""]'+ dummy_conent +'[/dt_sc_testimonial]<br>');
							a.addImmediate(c, "Contact Form",'<br>[dt_contact_form to_email="admin@somedomain.com" success_msg="Thanks for Contacting Us, We will call back to you soon." error_msg="Sorry your message not sent, Try again Later." /]');
							a.addImmediate(c, "Address",'<br>[dt_address title="Address"]103, C Block, West Street, New York, BMC, US[/dt_address]<br>');
							
							a.addImmediate(c, "Phone",'<br>[dt_phone title="Phone" no="+020 65241 652145" /]<br>');
							a.addImmediate(c, "Email",'<br>[dt_email title="Mail" id="someemail@somedomain.com" /]<br>');
							a.addImmediate(c, "Website",'<br>[dt_website title="Website" url="http://somedomain.com" /]<br>');
							a.addImmediate(c, "Social Profile",'<br>[dt_social text="We can be spotted here!" /]<br>');
							
							a.addImmediate(c, "Contact Box",'<br>[dt_contact_box title="Contact Info" street="103, C Block, West Street, New York, BMC, US" phone="+020 65241 652145" email="someemail@somedomain.com" web="http://somedomain.com" /]<br>');
							a.addImmediate(c, "Intro Text",'<br>[dt_intro_text type="type1" class="with-bg"]<h4>The Best Courses like Elsewhere. Come get trained. Guranteed Placements.</h4><h5>You\'ll get what you came for!</h5>[dt_join_button currency="$" link="#"]Join Now[/dt_join_button]<br>[/dt_intro_text]<br>');
							
							c = b.addMenu({
								title : "Theme"
							});
							
							a.addImmediate(c, "Join Now Button",'<br>[dt_join_button link="#" target="_blank" currency="&euro;"]Join Now[/dt_join_button]<br>');
							
							a.addImmediate(c, "Title with HR",'<br>[dt_hr_title tag="h1"]Lorem ipsum[/dt_hr_title]<br>');
							a.addImmediate(c, "Icon Service",'<br>[dt_theme_service icon_url="http://placehold.it/50" title="Lorem ipsum" subtitle="Interdum malesuada"]'+ dummy_conent +'[/dt_theme_service]<br>');
							a.addImmediate(c, "Animate Section",'<br>[dt_animate animation="bounceIn" delay="350"]'+ dummy_conent +'[/dt_animate]<br>');
							a.addImmediate(c, "Progress Chart",'<br>[dt_progress_chart percentage="65" percent_text="Save" bgcolor="#1e73be" fgcolor="#1dc63f" title="Lorem ipsum" subtitle="only for kids" button_text="Join Now" button_link="#" size="small" button_color="blue"]'+ dummy_conent +'[/dt_progress_chart]<br>');
							
							a.addImmediate(c, "Blog Posts",'<br>[dt_blog_posts show_feature_image="true" excerpt_length="35" show_meta="true" limit="2" categories="2,4" posts_column="one-half-column" /]<br>');
							a.addImmediate(c, "Gallery Items",'<br>[dt_gallery_items limit="4" categories="2,4" posts_column="one-fourth-column" filter="true" posts_design="default" /]<br>');
							a.addImmediate(c, "Gallery Carousel",'<br>[dt_gallery_carousel limit="4" categories="2,4" posts_design="default" /]<br>');
							a.addImmediate(c, "Event List",'<br>[dt_events_list limit="3" excerpt_length="25" feature_image="small-thumb" /]<br>');
							
							a.addImmediate(c, "Reviews Carousel", '[dt_review_carousel]'
								+'<br>[dt_review name="Donec Ornaren" role="Eleifend Magna" image="http://placehold.it/50"]<br>'+ dummy_conent + '<br>[/dt_review]'
								+'<br>[dt_review name="Fusce Malesuada" role="Vestibulum Ipsum" image="http://placehold.it/50"]<br>'+ dummy_conent + '<br>[/dt_review]'
								+'<br>[dt_review name="Pellensque Facisis" role="Vestibulum Accumsan" image="http://placehold.it/50"]<br>'+ dummy_conent + '<br>[/dt_review]'
								+'<br>[/dt_review_carousel]');
							a.addImmediate(c, "Counting Number",'<br>[dt_number_count icon="fa-star" value="850" title="Lorem ipsum"]'+ dummy_conent +'[/dt_number_count]<br>');

						});

				return btn;
			}
		},

		addImmediate : function(d, e, a) {
			d.add({
				title : e,
				onclick : function() {
					tinyMCE.activeEditor.execCommand("mceInsertContent", false,
							a);
				}
			});
		},

		addWithDialog : function(d, e, a) {
			d.add({
				title : e,
				onclick : function() {
					tinyMCE.activeEditor.execCommand("scnOpenDialog", false, {
						title : e,
						identifier : a
					});
				}
			});
		}

	});

	// add DTCoreShortcodePlugin plugin
	tinymce.PluginManager.add("DTCoreShortcodePlugin",
			tinymce.plugins.DTCoreShortcodePlugin);
})();