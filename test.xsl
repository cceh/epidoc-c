<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"  
    xpath-default-namespace="http://www.tei-c.org/ns/1.0" version="2.0">
    
    <xsl:output method="xml" encoding="UTF-8" /> <!-- indent="yes" -->
    
    <xsl:strip-space elements="*" />
    
    <xsl:template match="node() | @* ">
        <xsl:copy>
            <xsl:apply-templates select="@* | node()" />
        </xsl:copy>
    </xsl:template>
    
    <xsl:template match="idno[@type='TM']">
        <idno xmlns="http://www.tei-c.org/ns/1.0" type="TM"><xsl:value-of select="parent::place/@xml:id/substring-after(., 'TM')" /></idno>
    </xsl:template>
    
    <xsl:template match="@part | @instant | @full | @default | @anchored" />
    
</xsl:stylesheet>