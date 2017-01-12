<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:xs="http://www.w3.org/2001/XMLSchema" exclude-result-prefixes="xs" version="2.0"
    xmlns="http://www.tei-c.org/ns/1.0" xpath-default-namespace="http://www.tei-c.org/ns/1.0">
    <xsl:template match="@* | node()">
        <xsl:copy>
            <xsl:apply-templates select="@* | node()"/>
        </xsl:copy>
    </xsl:template>
    <xsl:template match="hi[@rend = 'color(#ff0000)']">
        <pb ed="EA">
            <xsl:attribute name="n">
                <xsl:value-of select="text()"/>
            </xsl:attribute>
        </pb>
    </xsl:template>
    <xsl:template match="hi[@rend = 'color(#4472c4)']">
        <pb ed="RA">
            <xsl:attribute name="n">
                <xsl:value-of select="text()"/>
            </xsl:attribute>
        </pb>
    </xsl:template>
    <xsl:template match="hi[@rend = 'color(#0070c0)']">
        <pb ed="RA">
            <xsl:attribute name="n">
                <xsl:value-of select="text()"/>
            </xsl:attribute>
        </pb>
    </xsl:template>
    <xsl:template match="p[@rend = 'center']">
        <milestone>
            <xsl:attribute name="unit">
                <xsl:text>div</xsl:text>
            </xsl:attribute>
            <xsl:attribute name="type">
                <xsl:text>chapter</xsl:text>
            </xsl:attribute>
            <xsl:attribute name="n">
                <xsl:value-of select="anchor/@xml:id"/>
            </xsl:attribute>
        </milestone>
        <head>
            <xsl:attribute name="type">
                <xsl:text>chapterNum</xsl:text>
            </xsl:attribute>
            <xsl:attribute name="n">
                <xsl:value-of select="anchor/@xml:id"/>
            </xsl:attribute>
            <xsl:apply-templates/>
        </head>
    </xsl:template>
    <xsl:template match="p[@rend = 'center italic']">
        <head>
            <xsl:attribute name="type">
                <xsl:text>chapterTitle</xsl:text>
            </xsl:attribute>
            <xsl:apply-templates/>
        </head>
    </xsl:template>
    <xsl:template match="hi[@rend = 'color(#000000)']">
        <xsl:apply-templates/>
    </xsl:template>
    <xsl:template match="hi[@rend = 'color(#000000) background-color(#ffff00)']">
        <app>
            <lem>
                <xsl:apply-templates/>
            </lem>
            <readings>
                <xsl:value-of
                    select="following-sibling::*[1][self::hi[@rend = 'color(#000000)' or self::hi[@rend = 'sup color(#000000)']]/note]"
                />
            </readings>
        </app>
    </xsl:template>
    <xsl:template match="note"/>
    <xsl:template match="hi[@rend = 'sup color(#000000)']">
        <xsl:apply-templates/>
    </xsl:template>
    <xsl:template match="p/@rend"/>
</xsl:stylesheet>
