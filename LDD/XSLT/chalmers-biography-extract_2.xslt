<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
  <xsl:template match="/">
    <html>
      <body>
        <table>
          <thead>
            <tr>
              <th>Século</th>
              <th>Nascidos</th>
              <th>Mortos</th>
            </tr>
          </thead>
          <tbody>
            <xsl:for-each select="distinct-values(//entry/substring-before(@born,'00') )">
              <xsl:variable name="century" select="concat(.,'00')"/>
              <tr>
                <td><xsl:value-of select="concat(substring($century,1,2),'-',substring($century,3,4))"/></td>
                <td><xsl:value-of select="count(//entry[contains(@born,$century)])"/></td>
                <td><xsl:value-of select="count(//entry[contains(@died,$century)])"/></td>
              </tr>
            </xsl:for-each>
          </tbody>
        </table>
      </body>
    </html>
  </xsl:template>
</xsl:stylesheet>