<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
<xsl:template match="/">
  <html>
  <body>
    <h2>ShopSmart Products</h2>
    <table border="1">
      <tr>
        <th>Product</th>
        <th>Price</th>
        <th>Name</th>
        <th>Category</th>
      </tr>
      <xsl:for-each select="Products/Product">
        <tr>          
          <td><xsl:value-of select="productName"/></td>
          <td><xsl:value-of select="price"/></td>
          <td><xsl:value-of select="quantity"/></td>
          <td><xsl:value-of select="category"/></td>
        </tr>
      </xsl:for-each>
    </table>
  </body>
  </html>
</xsl:template>
</xsl:stylesheet>
