<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:xs="http://www.w3.org/2001/XMLSchema" exclude-result-prefixes="xs" version="2.0"
    xmlns="http://www.tei-c.org/ns/1.0" xpath-default-namespace="http://www.tei-c.org/ns/1.0">
    <xsl:template match="@* | node()">
        <xsl:copy>
            <xsl:apply-templates select="@* | node()"/>
        </xsl:copy>
    </xsl:template>
    <xsl:template match="div[not(child::head[@type = 'chapterNum'])]">
        <div>
            <xsl:attribute name="type">
                <xsl:text>title</xsl:text>
            </xsl:attribute>
            <xsl:apply-templates/>
        </div>
    </xsl:template>
    <xsl:template match="div[not(child::head[@type = 'chapterNum'])]/p">
        <head>
            <xsl:attribute name="type">
                <xsl:text>volTitle</xsl:text>
            </xsl:attribute>
            <xsl:apply-templates/>
        </head>
    </xsl:template>
    <xsl:template match="div[not(child::head[@type = 'chapterNum'])]/p/anchor"/>
</xsl:stylesheet>
