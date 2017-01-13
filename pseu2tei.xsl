<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:xs="http://www.w3.org/2001/XMLSchema" exclude-result-prefixes="xs" version="2.0"
    xmlns="http://www.tei-c.org/ns/1.0" xpath-default-namespace="http://www.tei-c.org/ns/1.0">
    <xsl:template match="@* | node()">
        <xsl:copy>
            <xsl:apply-templates select="@* | node()"/>
        </xsl:copy>
    </xsl:template>
    <xsl:template match="hi[@rend = 'color(FF0000)']">
        <pb ed="EA">
            <xsl:attribute name="n">
                <xsl:value-of select="text()"/>
            </xsl:attribute>
        </pb>
    </xsl:template>
    <xsl:template match="hi[@rend = 'L-KONKORDANZ']">
        <pb ed="RA">
            <xsl:attribute name="n">
                <xsl:value-of select="seg/text()"/>
            </xsl:attribute>
        </pb>
    </xsl:template>
    <xsl:template match="seg[@rend = 'color(4472C4)' or @rend = 'color(0070C0)']">
        <xsl:apply-templates/>
    </xsl:template>
    <!--    <xsl:template match="hi[@rend = 'color(#0070c0)']">
        <pb ed="RA">
            <xsl:attribute name="n">
                <xsl:value-of select="text()"/>
            </xsl:attribute>
        </pb>
    </xsl:template>
-->
    <xsl:template match="p[anchor[@xml:id[contains(., 'MoE-2/')]] or text()[contains(., '19.')]]">
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
    <xsl:template match="p[not(text()) and hi[@rend = 'italic']]">
        <head>
            <xsl:attribute name="type">
                <xsl:text>chapterTitle</xsl:text>
            </xsl:attribute>
            <xsl:apply-templates/>
        </head>
    </xsl:template>
    <xsl:template
        match="hi[@rend = 'background(yellow)' and following-sibling::*[1][self::note[@place = 'foot']]/p[text()[contains(., 'EA:')]]/hi[@rend = 'allcaps']]">
        <app>
            <lem>
                <xsl:apply-templates/>
            </lem>
            <readings>
                <EA>
                    <hi>
                        <xsl:attribute name="rend">
                            <xsl:text>allcaps</xsl:text>
                        </xsl:attribute>
                        <xsl:value-of
                            select="following-sibling::*[1][self::note[@place = 'foot']]/p[text()[contains(., 'EA:')]]/hi[@rend = 'allcaps']"
                        />
                    </hi>
                </EA>
            </readings>
        </app>
    </xsl:template>
    <xsl:template
        match="hi[@rend = 'background(yellow)' and not(following-sibling::*[1][self::note[@place = 'foot']]/p[text()[contains(., 'EA:')]]/hi[@rend = 'allcaps'])]">
        <app>
            <lem>
                <xsl:apply-templates/>
            </lem>
            <readings>
                <xsl:value-of select="following-sibling::*[1][self::note[@place = 'foot']]"/>
            </readings>
        </app>
    </xsl:template>
    <xsl:template match="note[@place = 'foot']"/>
    <xsl:template match="p/@rend"/>
    <xsl:template match="anchor[@xml:id[contains(., 'MoE-2-S')]]"/>
</xsl:stylesheet>
