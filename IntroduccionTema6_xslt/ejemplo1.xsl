<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
<xsl:output method="html"></xsl:output> <!-- Indicar formato de salida. Se usa poco porque el documento ya detecta automáticamente el formato. -->
<xsl:template match="/"> <!-- Indicaremos la expresión XPATH para que sepa que nodo queremos modificar. -->    
    <xsl:apply-templates />   <!-- Si no escribimos esta expresión, borrará los nodos y luego ya no encontrará lo que busquemos. [Sólo hay que escribirlo en el archivo padre (o en su defecto, en el más elevado del árbol)]  -->
</xsl:template> 

<xsl:template match="/personas/persona/fechaNacimiento"> <!-- Indicaremos la expresión XPATH para que sepa que nodo queremos modificar. -->    
    <xsl:value-of select="dia"></xsl:value-of>

</xsl:template> 

<xsl:template match="/"> <!-- Indicaremos la expresión XPATH para que sepa que nodo queremos modificar. -->    
</xsl:template> 

<xsl:template match="/"> <!-- Indicaremos la expresión XPATH para que sepa que nodo queremos modificar. -->    
</xsl:template> 

<xsl:template match="/"> <!-- Indicaremos la expresión XPATH para que sepa que nodo queremos modificar. -->    
</xsl:template> 

</xsl:stylesheet>