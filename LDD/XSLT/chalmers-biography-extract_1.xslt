<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
  <xsl:template match="/">
    <html>
      <body>
        <table>
          <thead>
            <tr>
              <th>Nome</th>
              <th>Idade ao falecer</th>
            </tr>
          </thead>
          <tbody>
            <xsl:for-each select="//entry">
              <xsl:sort select="number(@died) - number(@born)" order="ascending"/>
              <tr>
                <td><xsl:value-of select="title"/></td>
                <td><xsl:value-of select="number(@died) - number(@born)"/></td>
              </tr>
            </xsl:for-each>
          </tbody>
        </table>
      </body>
    </html>
  </xsl:template>
</xsl:stylesheet>