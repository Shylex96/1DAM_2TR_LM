<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
<xsl:output method="html" encoding="ISO-8859-1" omit-xml-declaration="yes" indent="yes"></xsl:output>

<xsl:template match="/">
    <museos>
        <xsl:apply-templates />
    </museos>
</xsl:template>

<xsl:template match="museo">
    <ciudad>
        <nombre>
            <xsl:value-of select="nombre" />
        </nombre>

        <ubicacion>
            <xsl:attribute name="ciudad">
                <xsl:value-of select="ciudad" />
            </xsl:attribute>

            <xsl:attribute name="pais">
                <xsl:value-of select="pais" />
            </xsl:attribute>
        </ubicacion>
        
        
    </ciudad>
</xsl:template>

</xsl:stylesheet>