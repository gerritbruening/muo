<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:xs="http://www.w3.org/2001/XMLSchema" exclude-result-prefixes="xs"
    version="2.0">
    <!-- xmlns="http://www.tei-c.org/ns/1.0" xpath-default-namespace="http://www.tei-c.org/ns/1.0" -->
    <xsl:template match="@* | node()">
        <xsl:copy>
            <xsl:apply-templates select="@* | node()"/>
        </xsl:copy>
    </xsl:template>
    <xsl:template match="pb"/>
    <xsl:template match="hi[@rend = 'allcaps']">
        <xsl:value-of select="upper-case(.)"/>
    </xsl:template>
    <xsl:template match="VERWEISE"/>
    <xsl:template match="app">
        <xsl:apply-templates/>
    </xsl:template>
    <xsl:template match="lem">
        <xsl:apply-templates/>
    </xsl:template>
    <xsl:template match="rdg">
        <xsl:apply-templates/>
    </xsl:template>
    <xsl:template match="choice">
        <xsl:apply-templates></xsl:apply-templates>
    </xsl:template>
    <xsl:template match="sic"/>
    <xsl:template match="corr">
        <xsl:apply-templates></xsl:apply-templates>
    </xsl:template>
</xsl:stylesheet>
