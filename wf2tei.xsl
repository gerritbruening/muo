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
    <xsl:template match="DOKUMENT">
        <TEI>
            <xsl:apply-templates/>
        </TEI>
    </xsl:template>
    <xsl:template match="KOPF">
        <teiHeader>
            <fileDesc>
                <titleStmt>
                    <title>
                        <xsl:text>TEI-Konvertierung</xsl:text>
                    </title>
                </titleStmt>
                <publicationStmt>
                    <p>Publication Information</p>
                </publicationStmt>
                <sourceDesc>
                    <p>
                        <xsl:value-of select="Werktitel/text()"/>
                        <xsl:text>, Bd. 2, </xsl:text>
                        <xsl:value-of select="Inhalt/text()"/>
                    </p>
                </sourceDesc>
            </fileDesc>
        </teiHeader>
    </xsl:template>
    <xsl:template match="Band">
        <fileDesc>
            <titleStmt>
                <xsl:value-of select="text()"/>
                <xsl:text>Bd. </xsl:text>
                <xsl:value-of select="Band/@Nummer"> </xsl:value-of>
            </titleStmt>
        </fileDesc>
    </xsl:template>
    <xsl:template match="TEXT">
        <text>
            <body>
                <xsl:apply-templates/>
            </body>
        </text>
    </xsl:template>
    <xsl:template match="Erstausgabe">
        <pb ed="Erstdruck">
            <xsl:attribute name="n">
                <xsl:value-of select="text()"/>
            </xsl:attribute>
        </pb>
    </xsl:template>
    <xsl:template match="Kapiteltitel">
        <milestone unit="div"/>
        <head type="chapter">
            <xsl:apply-templates/>
        </head>
    </xsl:template>
    <xsl:template match="Absatz">
        <p>
            <xsl:apply-templates/>
        </p>
    </xsl:template>
    <xsl:template match="Versal">
        <hi rend="allcaps">
            <xsl:apply-templates/>
        </hi>
    </xsl:template>
    <xsl:template match="Rowohlt">
        <pb ed="Rowohlt">
            <xsl:attribute name="n">
                <xsl:value-of select="text()"/>
            </xsl:attribute>
        </pb>
    </xsl:template>
    <xsl:template match="Variante[following-sibling::*[1][self::Korrektur]]">
        <choice>
            <sic>
                <xsl:apply-templates/>
            </sic>
            <corr>
                <xsl:value-of select="following-sibling::*[1][self::Korrektur]"
                />
            </corr>
        </choice>
    </xsl:template>
    <xsl:template match="Korrektur"/>
    <xsl:template
        match="Variante[following-sibling::*[1][self::Druck[child::text()[contains(., 'gesperrt')]]]]">
        <hi rend="letter-spaced">
            <xsl:apply-templates/>
        </hi>
    </xsl:template>
    <xsl:template match="Druck[child::text()[contains(., 'gesperrt')]]"/>
    <xsl:template
        match="//Variante[following-sibling::*[1][self::Handexemplar[child::text()[contains(., 'Haken')]]]]">
        <app>
            <lem wit="#HE" rend="hook">
                <xsl:apply-templates/>
            </lem>
        </app>
    </xsl:template>
    <xsl:template match="Handexemplar"/>
    <xsl:template match="//Variante[following-sibling::*[1][self::Frisé]]">
        <app>
            <lem wit="#EA">
                <xsl:apply-templates/>
            </lem>
            <rdg wit="#Frisé">
                <xsl:value-of select="following-sibling::*[1][self::Frisé]"/>
            </rdg>
        </app>
    </xsl:template>
    <xsl:template match="Frisé"/>
</xsl:stylesheet>
