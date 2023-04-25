<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
  <xsl:key name="cidade" match="entry" use="@birthplace"/>
  <xsl:template match="/">
    <html>
      <head>
        <title>Biografados por cidade de nascimento</title>
      </head>
      <body>
        <h1>Biografados por cidade de nascimento</h1>
        <xsl:for-each select="//entry[count(. | key('cidade', @birthplace)[1]) = 1]">
          <h2><xsl:value-of select="@birthplace"/></h2>
          <ul>
            <xsl:for-each select="key('cidade', @birthplace)">
              <li><xsl:value-of select="title"/> (<xsl:value-of select="@born"/>-<xsl:value-of select="@died"/>)</li>
            </xsl:for-each>
          </ul>
        </xsl:for-each>
      </body>
    </html>
  </xsl:template>
</xsl:stylesheet>