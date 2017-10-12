<?xml version="1.0"?>
<!--Example Greg Gambits Avatars: xsl file -->
	<!-- xsl goes here -->
<xsl:stylesheet version = "2.0" xmlns:xsl = "http://www.w3.org/1999/XSL/Transform">
<xsl:output method = "html" doctype-system = "about:legacy-compat"/>
<xsl:template match="/">
	<html>
	<head>
		<meta charset = "utf-8"/>
		<link rel = "stylesheet" type = "text/css" href = "lee_services.css"/>
		<title>Lee's Landscape | Service's Offered</title>
	</head>
	<body>
	<div id="container" style="width: 900px;">


<div id="content">
		<table border = "1" align = "center" width = "100%" cellpadding = "5">
			<tr>
				<th>landscape</th>
				<th>service</th>
				<th>frequeny</th>
				<th>cost</th>
			</tr>
		<!-- insert each avatar's information into a table row -->
		<xsl:for-each select = "/lee/landscape"
		xmlns:lawnMonthly = 'http://lee.com/lawnMonthly'
		xmlns:lawnWeekly = 'http://lee.com/lawnWeekly'
		xmlns:lawnService = 'http://lee.com/lawnService'
		xmlns:treeYearly = 'http://lee.com/treeYearly'
		xmlns:treeVisit = 'http://lee.com/treeVisit'
		xmlns:treeService = 'http://lee.com/treeService'
		xmlns:pestMonthly = 'http://lee.com/pestMonthly'
		xmlns:pestYearly = 'http://lee.com/pestYearly'
		xmlns:pestService = 'http://lee.com/pestService'>
		
			<tr>
				<td><xsl:value-of select = "service" /></td>
				<td><xsl:value-of select = "frequency" /></td>
				<td><xsl:value-of select = "cost" /></td>
			</tr>
		</xsl:for-each>
		
		<tr>
			<td colspan = "5">Select an avatar to view more details.</td>
		</tr>

		</table>
	</div>
</div>
	</body>
</html>
</xsl:template>
</xsl:stylesheet>

