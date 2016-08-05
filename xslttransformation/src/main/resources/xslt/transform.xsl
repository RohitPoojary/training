<?xml version="1.0" encoding="UTF-8"?>
 
<xsl:stylesheet version="1.0"
	xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
	<xsl:output method="xml" indent="yes" />
	<xsl:template match="/">
		<Staff>
			<xsl:for-each select="//Employees/Employee">
				<ITStaff>	
					<xsl:for-each select="./KeyValuePair">
						<xsl:text disable-output-escaping="yes">&lt; &#xD;&#xA;</xsl:text><xsl:value-of select="key"/><xsl:text disable-output-escaping="yes">&gt;</xsl:text>
						<xsl:value-of select="value"/>
						<xsl:text disable-output-escaping="yes">&lt;</xsl:text><xsl:value-of select="key"/><xsl:text disable-output-escaping="yes">&gt; </xsl:text>
					</xsl:for-each>
				</ITStaff>
			</xsl:for-each>
		</Staff>
	</xsl:template>
</xsl:stylesheet>