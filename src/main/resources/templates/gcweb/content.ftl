<#macro render
		title>

	<!DOCTYPE html>
	<!--[if lt IE 9]><html class="no-js lt-ie9" lang="en" dir="ltr"><![endif]-->
	<!--[if gt IE 8]><!--><html class="no-js" lang="en" dir="ltr"><!--<![endif]-->

		<head>
			<meta charset="utf-8">

<!-- Web Experience Toolkit (WET) / Boîte à outils de l'expérience Web (BOEW)
     wet-boew.github.io/wet-boew/License-en.html / wet-boew.github.io/wet-boew/Licence-fr.html -->

			<title>${title}</title>
			<meta content="width=device-width,initial-scale=1" name="viewport">
			
			<meta name="description" content="Web Experience Toolkit (WET) includes reusable components for building and maintaining innovative Web sites that are accessible, usable, and interoperable. These reusable components are open source software and free for use by departments and external Web communities">

			<script type="text/javascript" src="https://www.canada.ca/etc/designs/canada/cdts/gcweb/v4_0_22/cdts/compiled/soyutils.js"></script>
			<script type="text/javascript" src="https://www.canada.ca/etc/designs/canada/cdts/gcweb/v4_0_22/cdts/compiled/wet-en.js"></script>
			
			<script type="text/javascript">
				document.write(wet.builder.refTop({
					cdnEnv: "prod"
				}));
			</script>
		</head>

		<body vocab="http://schema.org/" typeof="WebPage">
			<div id="def-top"></div>

			<script type="text/javascript">
				var defTop = document.getElementById("def-top");
				defTop.outerHTML = wet.builder.top({
					cdnEnv: "prod",
					lngLinks: [{
						lang: "fr",
						href: "content-fr.shtml",
						text: "Français"
					}]
				});
			</script>
			
			<main role="main" property="mainContentOfPage" class="container">
				<h1 property="name" id="wb-cont">${title}</h1>
				<#nested/>
				<div id="def-preFooter"></div>

				<script type="text/javascript">
					var defPreFooter = document.getElementById("def-preFooter");
					defPreFooter.outerHTML = wet.builder.preFooter({
						cdnEnv: "prod",
						dateModified: "2016-09-12"
					});
				</script>
			</main>

			<div id="def-footer"></div>

			<script type="text/javascript">
				var defFooter = document.getElementById("def-footer");
				defFooter.outerHTML = wet.builder.footer({
					cdnEnv: "prod"
				});
			</script>

			<script type="text/javascript">
				document.write(wet.builder.refFooter({
					cdnEnv: "prod"
				}));
			</script>
		</body>
		
	</html>
	
</#macro>