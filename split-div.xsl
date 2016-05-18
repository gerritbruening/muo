<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
	xmlns:xs="http://www.w3.org/2001/XMLSchema" exclude-result-prefixes="xs"
	version="2.0">
	<!-- xmlns="http://www.tei-c.org/ns/1.0" xpath-default-namespace="http://www.tei-c.org/ns/1.0" -->

	<xsl:template match="body[milestone[@unit = 'div']]">
		<body>
			<xsl:for-each-group select="node()"
				group-starting-with="milestone[@unit='div' and @type='chapter']">
				<div type="chapter">
					<xsl:apply-templates select="current-group()"
						mode="in-new-div"/>
				</div>
			</xsl:for-each-group>
		</body>
	</xsl:template>
	<xsl:template mode="in-new-div" match="milestone[@unit = 'div']"/>


	<xsl:template match="node() | @*" mode="#all">
		<xsl:copy>
			<xsl:apply-templates select="@* | node()"/>
		</xsl:copy>
	</xsl:template>

</xsl:stylesheet>
