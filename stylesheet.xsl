<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">

<xsl:template match="/">

<html>
<head>
	<meta http-equiv="Content-Type" content="text/html;charset=utf-8" />
	<link href="https://fonts.googleapis.com/css?family=Roboto" rel="stylesheet" />
	<link rel="stylesheet" type="text/css" href="styles.css" />
	<title>Periodic Table of Elements - XML API DTD</title>
</head>

<body>
<div class="content">
<xsl:apply-templates/>
</div>
</body>
</html>
</xsl:template>
	
	<xsl:template match="/project">
		
		<!-- Begin table -->
		<table class="table-style">
		
			<!-- Parse columns -->
			<xsl:for-each select="./columns/column">
				<!-- Comment out because data not important -->
				<!-- <th><xsl:value-of select="id"/></th> -->
				<!-- <th><xsl:value-of select="index"/></th> -->
				<th><xsl:value-of select="name"/></th>
				<!-- Comment out because data not important -->
				<!-- <th><xsl:value-of select="data-type"/></th> -->
				<!-- <th><xsl:value-of select="semantic-type"/></th> -->
			</xsl:for-each>
			
			<!-- Parse rows -->
			<xsl:for-each select="./rows/row">
				<!-- Comment out because data not important -->
				<!-- <xsl:value-of select="id"/><br/> -->
				<xsl:choose>
					<xsl:when test="fields/type = 'Metal'">
						<tr class='rowcolor solo'>
						<td><xsl:value-of select="fields/atomic-number"/></td>
						<td><xsl:value-of select="fields/element"/></td>
						<td><xsl:value-of select="fields/symbol"/></td>
						<td><xsl:value-of select="fields/atomic-weight"/></td>
						<td><xsl:value-of select="fields/period"/></td>
						<td><xsl:value-of select="fields/group"/></td>
						<td><xsl:value-of select="fields/phase"/></td>
						<td><xsl:value-of select="fields/most-stable-crystal"/></td>
						<td><xsl:value-of select="fields/type"/></td>
						<td><xsl:value-of select="fields/ionic-radius"/></td>
						<td><xsl:value-of select="fields/atomic-radius"/></td>
						<td><xsl:value-of select="fields/electronegativity"/></td>
						<td><xsl:value-of select="fields/first-ionization-potential"/></td>
						<td><xsl:value-of select="fields/density"/></td>
						<td><xsl:value-of select="fields/melting-point-k"/></td>
						<td><xsl:value-of select="fields/boiling-point-k"/></td>
						<td><xsl:value-of select="fields/isotopes"/></td>
						<td><xsl:value-of select="fields/discoverer"/></td>
						<td><xsl:value-of select="fields/year-of-discovery"/></td>
						<td><xsl:value-of select="fields/specific-heat-capacity"/></td>
						<td><xsl:value-of select="fields/electron-configuration"/></td>
						<td><xsl:value-of select="fields/display-row"/></td>
						<td><xsl:value-of select="fields/display-column"/></td>
						</tr>
					</xsl:when>
					<xsl:otherwise>
						<tr class='rowcolor {fields/type}'>
						<td><xsl:value-of select="fields/atomic-number"/></td>
						<td><xsl:value-of select="fields/element"/></td>
						<td><xsl:value-of select="fields/symbol"/></td>
						<td><xsl:value-of select="fields/atomic-weight"/></td>
						<td><xsl:value-of select="fields/period"/></td>
						<td><xsl:value-of select="fields/group"/></td>
						<td><xsl:value-of select="fields/phase"/></td>
						<td><xsl:value-of select="fields/most-stable-crystal"/></td>
						<td><xsl:value-of select="fields/type"/></td>
						<td><xsl:value-of select="fields/ionic-radius"/></td>
						<td><xsl:value-of select="fields/atomic-radius"/></td>
						<td><xsl:value-of select="fields/electronegativity"/></td>
						<td><xsl:value-of select="fields/first-ionization-potential"/></td>
						<td><xsl:value-of select="fields/density"/></td>
						<td><xsl:value-of select="fields/melting-point-k"/></td>
						<td><xsl:value-of select="fields/boiling-point-k"/></td>
						<td><xsl:value-of select="fields/isotopes"/></td>
						<td><xsl:value-of select="fields/discoverer"/></td>
						<td><xsl:value-of select="fields/year-of-discovery"/></td>
						<td><xsl:value-of select="fields/specific-heat-capacity"/></td>
						<td><xsl:value-of select="fields/electron-configuration"/></td>
						<td><xsl:value-of select="fields/display-row"/></td>
						<td><xsl:value-of select="fields/display-column"/></td>
						</tr>
					</xsl:otherwise>
				</xsl:choose>				
			</xsl:for-each>
		<!-- End table -->
		</table>
								
		<!-- Views -->
		<!-- Comment out because data not important -->
		<!-- <xsl:for-each select="./views/scatter-plot">
			<span>Extent: <xsl:value-of select="extent"/></span><br/>
			<span>x column id: <xsl:value-of select="layout/x-axis-column-id"/></span><br/>
			<span>x sort order: <xsl:value-of select="layout/x-axis-sort-order"/></span><br/>
			<span>y column id: <xsl:value-of select="layout/y-axis-column-id"/></span><br/>
			<span>y sort order: <xsl:value-of select="layout/y-axis-sort-order"/></span><br/>
			<span>color column id: <xsl:value-of select="layout/color-column-id"/></span><br/>
			<span>color palette name: <xsl:value-of select="layout/color-palette-name"/></span><br/>
			<span>size column id: <xsl:value-of select="layout/size-column-id"/></span><br/>
			<span>size sort order: <xsl:value-of select="layout/size-sort-order"/></span><br/>
			<span>lower size: <xsl:value-of select="layout/lower-size"/></span><br/>
			<span>upper size: <xsl:value-of select="layout/upper-size"/></span><br/>
			<span>shape column id: <xsl:value-of select="layout/shape-column-id"/></span><br/>
			<span>label column id: <xsl:value-of select="layout/label-column-id"/></span><br/>
			<span>link column id: <xsl:value-of select="layout/link-column-id"/></span><br/>
		</xsl:for-each> -->
				
		<br></br>
		<br></br>
		
		<!-- Sourde file -->
		<span>Source file: <xsl:value-of select="./sources/csv-file-source"/></span>
		
	</xsl:template>
</xsl:stylesheet>