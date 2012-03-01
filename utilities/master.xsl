<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

<xsl:import href="date-time.xsl"/>
<xsl:import href="page-title.xsl"/>
<xsl:import href="typography.xsl"/>

<xsl:output method="xml" doctype-public="-//W3C//DTD XHTML 1.0 Strict//EN" doctype-system="http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd" omit-xml-declaration="yes" encoding="UTF-8" indent="yes"/>
	
<xsl:template match="/">
	<xsl:comment><![CDATA[[if IE 6]><html lang="en" class="no-js ie6 lte-ie9 lte-ie8 lte-ie7 lte-ie6 gte-ie6"><![endif]]]></xsl:comment>
	<xsl:comment><![CDATA[[if IE 7]><html lang="en" class="no-js ie7 lte-ie9 lte-ie8 lte-ie7 gte-ie7 gte-ie6"><![endif]]]></xsl:comment>
	<xsl:comment><![CDATA[[if IE 8]><html lang="en" class="no-js ie8 lte-ie9 lte-ie8 gte-ie8 gte-ie7 gte-ie6"><![endif]]]></xsl:comment>
	<xsl:comment><![CDATA[[if IE 9]><html lang="en" class="no-js ie9 lte-ie9 gte-ie9 gte-ie8 gte-ie7 gte-ie6"><![endif]]]></xsl:comment>
	<xsl:comment><![CDATA[[if !(lte IE 9)]><!]]></xsl:comment><html lang="en" class="no-js"><xsl:comment><![CDATA[<![endif]]]></xsl:comment>
		<head>
	<meta charset="utf-8"/>
	
	<xsl:text disable-output-escaping="yes">
	&lt;!--
	
	  (o_                    _o)
	  //\    Hello there!    /\\
	  V_/_                  _\_V
	==============================
	
	If you, like us, enjoy adding comments
	for those peeking under the hood, you
	can do it like this.
	
	--&gt;
	</xsl:text>
	
	<title><xsl:value-of select="$page-title"/><xsl:text> &#8212; </xsl:text><xsl:value-of select="$website-name"/></title>

	<!-- Use the .htaccess and remove these lines to avoid edge case issues.
 			More info: h5bp.com/i/378 -->
	<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1"/>
	<meta name="description" content=""/>

	<!-- Mobile viewport optimized: h5bp.com/viewport -->
	<meta name="viewport" content="width=device-width"/>

	<!-- Styles are generated using Compass and the html5-boilerplate gem in workspace/scss -->
	<link rel="stylesheet" href="{$workspace}/css/style.css"/>

	<!-- More ideas for your <head> here: h5bp.com/d/head-Tips -->

	<!-- Most JavaScript at the bottom, except Modernizr and google API (to deal with webfonts) 
		 respond.js is included. -->
	<script src="{$workspace}/js/modernizr-2.5.2.min.js"></script>
</head>
<body>
	<!-- Prompt IE 6 users to install Chrome Frame. Remove this if you support IE 6.
 			chromium.org/developers/how-tos/chrome-frame-getting-started -->
	<xsl:comment>
		<!--[if lt IE 7]><p class=chromeframe>Your browser is <em>ancient!</em> <a href="http://browsehappy.com/">Upgrade to a different browser</a> or <a href="http://www.google.com/chromeframe/?redirect=true">install Google Chrome Frame</a> to experience this site.</p><![endif]-->	
	</xsl:comment>


	<header role="banner">
	
		
		<nav role="navigation">
		
		</nav>
	</header>
	
	<!-- Individual pages include role="main" and role="complimentary" -->
	<div>
		<xsl:apply-templates />
	</div>

	<footer>

	</footer>


	<!-- Base scripts loaded via google loader

		 Grab Google API's jQuery fall back to local if offline 
		 Note: If you want to actually use webfonts, it's better
		 to move this back into <head> to deal with the flash of
		 unstyled text.

		 I prefer loading a newer version of jQuery than what
		 Symphony uses. Also, you'll notice that I pull jQueryUI
		 as a default, you don't need to, but I find it useful
		 the projects I work on.
	-->

	<script src="https://www.google.com/jsapi"></script>
	<script>
		google.load("jquery", "1.7.1");
		google.load("jqueryui", "1.8.17");

		google.load("webfont", "1");

		google.setOnLoadCallback(function() {
			WebFont.load({
			typekit: {
			    id:''
			}});
		});
	</script>
	<xsl:text disable-output-escaping="yes">
	&lt;script&gt;window.jQuery || document.write('&lt;script src="js/libs/jquery-1.7.1.min.js"&gt;&lt;\/script&gt;')&lt;/script&gt;
	</xsl:text>

	<!-- scripts concatenated and minified via build script -->
	<script src="{$workspace}/js/plugins.js"></script>
	<script src="{$workspace}/js/script.js"></script>
	<!-- end scripts -->

	<!-- Asynchronous Google Analytics snippet. Change UA-XXXXX-X to be your site's ID.
 			mathiasbynens.be/notes/async-analytics-snippet -->
	<script>
		var _gaq=[['_setAccount','UA-XXXXX-X'],['_trackPageview']];
		(function(d,t){var g=d.createElement(t),s=d.getElementsByTagName(t)[0];
		g.src=('https:'==location.protocol?'//ssl':'//www')+'.google-analytics.com/ga.js';
		s.parentNode.insertBefore(g,s)}(document,'script'));
	</script>


</body>
</html>
</xsl:template>

</xsl:stylesheet>
