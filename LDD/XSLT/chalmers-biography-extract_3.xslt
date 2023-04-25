<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
  <xsl:template match="/">
    <html>
      <body>
        <ol>
          <xsl:for-each select="//entry">
            <xsl:sort select="string-length(normalize-space(title))" order="descending"/>
            <li><xsl:value-of select="title"/></li>
          </xsl:for-each>
        </ol>
      </body>
    </html>
  </xsl:template>
</xsl:stylesheet>