<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:xs="http://www.w3.org/2001/XMLSchema" exclude-result-prefixes="xs" version="2.0"
    xmlns="http://www.tei-c.org/ns/1.0" xpath-default-namespace="http://www.tei-c.org/ns/1.0">
    <xsl:template match="@* | node()">
        <xsl:copy>
            <xsl:apply-templates select="@* | node()"/>
        </xsl:copy>
    </xsl:template>
    <xsl:template match="EA">
        <rdg wit="#EA">
            <xsl:apply-templates/>
        </rdg>
    </xsl:template>
    <xsl:template match="HE">
        <rdg wit="#HE">
            <xsl:apply-templates/>
        </rdg>
    </xsl:template>
    <xsl:template match="RA">
        <rdg wit="#RA">
            <xsl:apply-templates/>
        </rdg>
    </xsl:template>
    <xsl:template match="KA">
        <rdg wit="#KA">
            <xsl:apply-templates/>
        </rdg>
    </xsl:template>
    <xsl:template match="GA">
        <rdg wit="#GA">
            <xsl:apply-templates/>
        </rdg>
    </xsl:template>
    <xsl:template match="sp">
        <hi rend="letter-spaced">
            <xsl:apply-templates/>
        </hi>
    </xsl:template>
    <xsl:template match="it">
        <hi rend="italics">
            <xsl:apply-templates/>
        </hi>
    </xsl:template>
    <xsl:template match="readings">
        <xsl:apply-templates/>
    </xsl:template>
</xsl:stylesheet>
