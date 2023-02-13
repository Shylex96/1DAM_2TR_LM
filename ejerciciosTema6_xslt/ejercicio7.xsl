<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
<xsl:output method="html" encoding="ISO-8859-1" omit-xml-declaration="yes" indent="yes"></xsl:output>

<xsl:template match="ies">
    <html lang="es">
        <h1>
            <xsl:value-of select="@nombre" />
        </h1>
        <p>Página web:
            <a>
                <xsl:attribute name="href">
                    <xsl:value-of select="@web" />
                </xsl:attribute> 
                <xsl:value-of select="@web" />
            </a>
        </p>
        <table border="1">
            <tr>
                <th>Nombre del ciclo</th>

                <th>Grado</th>

                <th>Año del título</th>
            </tr>
            <xsl:apply-templates />
        </table>
    </html>
</xsl:template>

<xsl:template match="ciclo">
        <tr>
            <td>
                <xsl:value-of select="nombre" />
            </td>

            <td>
                <xsl:value-of select="grado" />
            </td>

            <td>
                <xsl:value-of select="decretoTitulo/@anio" />
            </td>
        </tr>
</xsl:template>


</xsl:stylesheet>