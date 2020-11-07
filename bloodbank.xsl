<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0"
xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

<xsl:template match="/">
  <html>
  <body>
    <h2>BLOOD BANK LIST</h2>
    <table border="1">
      <tr bgcolor="#9acd32">
        <th>Location</th>
        <th>Name</th>
        <th>Phone number</th>
        <th>Email</th>

      </tr>
      <xsl:for-each select="bloodbank/bank">
      <xsl:sort select="location"/>
      <tr>
        <td><xsl:value-of select="location"/></td>
        <td><xsl:value-of select="name"/></td>
        <td><xsl:value-of select="phone"/></td>
        <td><xsl:value-of select="email"/></td>
      </tr>
      </xsl:for-each>
    </table>
  </body>
  </html>
</xsl:template>
</xsl:stylesheet>

