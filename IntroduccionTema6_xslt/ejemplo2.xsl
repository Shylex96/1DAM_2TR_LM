<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:output method="html" encoding="ISO-8859-1" omit-xml-declaration="yes" indent="yes"></xsl:output>

    <xsl:template match="/">
        <html>
            <head></head>
            <body>
                <xsl:apply-templates />
            </body>
        </html>
    </xsl:template>

    
    <xsl:template match="biblioteca">
    <xsl:for-each select="libro"> <!--/fechaPublicacion[@ano&lt;1980] El filtro se quita para poder acceder desde el padre con sort.-->
        <xsl:sort select="titulo" order="ascending" /> <!-- lt es menor que, gt es mayor que -->
        <p>
            <xsl:value-of select="titulo"/>
        </p>
    </xsl:for-each>


    <!-- 
        <xsl:choose>
            <xsl:when test="titulo='Los pilares de la tierra'">
            <p>
                <xsl:value-of select="titulo" />
            </p>
            <p>
                <xsl:value-of select="autor" />
            </p>
            <p>
                <xsl:value-of select="fechaPublicacion/@ano" />
            </p>
            </xsl:when>
            <xsl:when test="autor='J.R.R. Tolkien'">
            <p>
                <xsl:value-of select="autor" />
            </p>
            <p>
                <xsl:value-of select="titulo" />
            </p>
            </xsl:when>
            <xsl:otherwise>
                Esta es la opción por defecto
            </xsl:otherwise>
        </xsl:choose>



        <xsl:if test="autor='Philip K. Dick'">
        <p>
            <xsl:value-of select="titulo" ></xsl:value-of>
        </p>
        <p>
            <xsl:value-of select="autor" ></xsl:value-of>
        </p>
        <p>
            <xsl:value-of select="fechaPublicacion/@ano"/>
        </p>
        <p>
            <img>
                <xsl:attribute name="src">
                    <xsl:value-of select="portada"/>
                </xsl:attribute>
            </img>
        </p>
        <xsl:text>&#10;</xsl:text>
    </xsl:if>
    -->
    </xsl:template>
</xsl:stylesheet>