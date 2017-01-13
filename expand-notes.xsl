<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:xs="http://www.w3.org/2001/XMLSchema" exclude-result-prefixes="xs" version="2.0"
    xmlns="http://www.tei-c.org/ns/1.0" xpath-default-namespace="http://www.tei-c.org/ns/1.0">
    <xsl:template match="@* | node()">
        <xsl:copy>
            <xsl:apply-templates select="@* | node()"/>
        </xsl:copy>
    </xsl:template>
    <xsl:template match="note[@subtype = 'aa']">
        <xsl:copy>
            <xsl:copy-of select="@*"/>
            <xsl:text>Die Handexemplar-Anmerkungen und als Text formulierte Alternativvarianten im 
                Handexemplar werden für die Textkonstitution in der Gesamtausgabe berücksichtigt.</xsl:text>
        </xsl:copy>
    </xsl:template>
    <xsl:template match="note[@subtype = 'aa+']">
        <xsl:copy>
            <xsl:copy-of select="@*"/>
            <xsl:text>Als Handexemplar-Korrektur Musils zu bewertende Eintragung im Handexemplar 
                (Streichung) wird im Text der Gesamtausgabe vollzogen.</xsl:text>
        </xsl:copy>
    </xsl:template>
    <xsl:template match="note[@subtype = 'aa-']">
        <xsl:copy>
            <xsl:copy-of select="@*"/>
            <xsl:text>Die im Handexemplar eingetragene erwogene Variante wird im Text der 
                Gesamtausgabe nicht vollzogen.</xsl:text>
        </xsl:copy>
    </xsl:template>
    <xsl:template match="note[@subtype = 'bb']">
        <xsl:copy>
            <xsl:copy-of select="@*"/>
            <xsl:text>Reine Anstreichungen im Handexemplar ohne Textvorschlag des Autors sind 
                nicht berücksichtigt.</xsl:text>
        </xsl:copy>
    </xsl:template>
    <xsl:template match="note[@subtype = 'cc']">
        <xsl:copy>
            <xsl:copy-of select="@*"/>
            <xsl:text>Veränderungen am Text des Erstdrucks in der Rowohlt-Ausgabe (Druckfehler und 
                andere Abweichungen) werden auf den Erstdruck zurückkorrigiert.</xsl:text>
        </xsl:copy>
    </xsl:template>
    <xsl:template match="note[@subtype = 'dd']">
        <xsl:copy>
            <xsl:copy-of select="@*"/>
            <xsl:text>Druckfehler, Schreibversehen und Verstöße gegen die zur Zeit Musils geltende 
                Orthographie im Text des Erstdrucks sind in der Gesamtausgabe beseitigt.</xsl:text>
        </xsl:copy>
    </xsl:template>
    <xsl:template match="note[@subtype = 'ee']">
        <xsl:copy>
            <xsl:copy-of select="@*"/>
            <xsl:text>Der Emendationsfehler in der Klagenfurter Ausgabe ist in der Gesamtausgabe korrigiert.</xsl:text>
        </xsl:copy>
    </xsl:template>
    <xsl:template match="note[@subtype = 'ff']">
        <xsl:copy>
            <xsl:copy-of select="@*"/>
            <xsl:text>Es handelt sich um eine Konstitution des Textes, die sowohl vom Erstdruck 
                als auch von der Rowohlt-Ausgabe abweicht.</xsl:text>
        </xsl:copy>
    </xsl:template>
    <xsl:template match="note[@subtype = 'gg']">
        <xsl:copy>
            <xsl:copy-of select="@*"/>
            <xsl:text>Es handelt sich um eine neue Konstitution des Textes, die vom Erstdruck, der 
                Rowohlt-Ausgabe und der Klagenfurter Ausgabe abweicht.</xsl:text>
        </xsl:copy>
    </xsl:template>
    <xsl:template match="note[@subtype = 'hh']">
        <xsl:copy>
            <xsl:copy-of select="@*"/>
            <xsl:text>Es handelt sich um eine arbeitstechnische Eintragung Musils ohne Varianzfunktion.</xsl:text>
        </xsl:copy>
    </xsl:template>
    <xsl:template match="note[@subtype = 'xx+']">
        <xsl:copy>
            <xsl:copy-of select="@*"/>
            <xsl:text>Die Variante der Rowohlt-Ausgabe zum Erstdruck ist auf der Basis der 
                Handexemplar-Eintragung Musils als ‚Korrektur‘ dokumentiert.</xsl:text>
        </xsl:copy>
    </xsl:template>
    <xsl:template match="note[@subtype = 'xx!']">
        <xsl:copy>
            <xsl:copy-of select="@*"/>
            <xsl:text>Die Variante der Rowohlt-Ausgabe 1978 zum Erstdruck ist auf der Basis der 
                Handexemplar-Eintragung Musils als ‚Alternativvariante‘ oder als ‚erwogene Variante‘ dokumentiert.</xsl:text>
        </xsl:copy>
    </xsl:template>
    <xsl:template match="note[@subtype = 'xx-']">
        <xsl:copy>
            <xsl:copy-of select="@*"/>
            <xsl:text>Die Eintragung im Handexemplar ist in der Rowohlt-Ausgabe dokumentiert, aber nicht vollzogen.“</xsl:text>
        </xsl:copy>
    </xsl:template>
    <xsl:template match="note[@subtype = 'xx-!']">
        <xsl:copy>
            <xsl:copy-of select="@*"/>
            <xsl:text>Die Eintragung im Handexemplar ist in der Rowohlt-Ausgabe als ‚Alternativvariante‘ 
                oder als ‚erwogene Variante‘ dokumentiert, aber nicht vollzogen.</xsl:text>
        </xsl:copy>
    </xsl:template>
    <xsl:template match="note[@subtype = 'xx-']">
        <xsl:copy>
            <xsl:copy-of select="@*"/>
            <xsl:text>Die Eintragung im Handexemplar ist in der Rowohlt-Ausgabe nicht dokumentiert 
                und nicht vollzogen.</xsl:text>
        </xsl:copy>
    </xsl:template>
    <xsl:template match="note[@subtype = 'yy']">
        <xsl:copy>
            <xsl:copy-of select="@*"/>
            <xsl:text>Die Variante der Rowohlt-Ausgabe zum Erstdruck beruht auf Abweichungen
    gegenüber der Schreibnorm und ist dokumentiert.</xsl:text>
        </xsl:copy>
    </xsl:template>

    <xsl:template match="note[@subtype = 'yy-']">
        <xsl:copy>
            <xsl:copy-of select="@*"/>
            <xsl:text>Die Variante der Rowohlt-Ausgabe zum Erstdruck beruht auf Abweichungen
    gegenüber der Schreibnorm und ist nicht dokumentiert.</xsl:text>
        </xsl:copy>
    </xsl:template>
    <xsl:template match="note[@subtype = 'zz']">
        <xsl:copy>
            <xsl:copy-of select="@*"/>
            <xsl:text>Die Variante der Rowohlt-Ausgabe zum Erstdruck beruht auf Druckfehler der
    Rowohlt-Ausgabe bzw. zu Unrecht vorgenommenen Eingriffen des Herausgebers, die nicht
    dokumentiert sind.</xsl:text>
        </xsl:copy>
    </xsl:template>
</xsl:stylesheet>
