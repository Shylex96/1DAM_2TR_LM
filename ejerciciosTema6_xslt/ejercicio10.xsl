<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
<xsl:output method="xml" encoding="ISO-8859-1" omit-xml-declaration="yes" indent="yes"></xsl:output>

<xsl:template match="/">
    <ciudades>
        <xsl:apply-templates />
    </ciudades>
</xsl:template>

<xsl:template match="museo">
    <ciudad>
        <nombre>
            <xsl:value-of select="ciudad" />
        </nombre>
        <pais>
            <xsl:value-of select="pais" />
        </pais>
        <museo>
            <xsl:value-of select="museo" />
        </museo>
    </ciudad>
</xsl:template>

</xsl:stylesheet>