<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
  <xsl:template match="/">
    <html>
      <head>
        <title>Classificação Final do Campeonato</title>
      </head>
      <body>
        <h1>Classificação Final do Campeonato</h1>
        <table border="1">
          <tr>
            <th>Colocação</th>
            <th>Time</th>
            <th>Pontos</th>
            <th>Vitórias</th>
            <th>Empates</th>
            <th>Derrotas</th>
            <th>Gols Marcados</th>
            <th>Gols Sofridos</th>
            <th>Saldo de Gols</th>
          </tr>
          <xsl:for-each select="//time">
            <xsl:sort select="pontos" order="descending"/>
            <tr>
              <td><xsl:value-of select="position()"/></td>
              <td><xsl:value-of select="nome"/></td>
              <td><xsl:value-of select="pontos"/></td>
              <td><xsl:value-of select="vitorias"/></td>
              <td><xsl:value-of select="empates"/></td>
              <td><xsl:value-of select="derrotas"/></td>
              <td><xsl:value-of select="gols_marcados"/></td>
              <td><xsl:value-of select="gols_sofridos"/></td>
              <td><xsl:value-of select="gols_marcados - gols_sofridos"/></td>
            </tr>
          </xsl:for-each>
        </table>
      </body>
    </html>
  </xsl:template>
</xsl:stylesheet>