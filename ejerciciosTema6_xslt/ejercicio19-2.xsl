<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
<xsl:output method="html" encoding="ISO-8859-1" omit-xml-declaration="yes" indent="yes"></xsl:output>


    <!-- For Each -->

<xsl:template match="horario">
    <html lang="es">
    <xsl:for-each select="dia">
        <xsl:if test="numdia>=3">
            <p>DIA: <xsl:value-of select="numdia" /></p>
        </xsl:if>
    </xsl:for-each>
    </html>
</xsl:template>

</xsl:stylesheet>