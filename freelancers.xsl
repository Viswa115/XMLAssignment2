<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
<xsl:template match="/">
<html> 
<body>
<style> 
.sansserif {
  font-family: Arial, Helvetica, sans-serif;
}
body{ 
	background-color:#D9F1CE
}
</style>
  <h2 class="sansserif">Freelancer Worker Profiles</h2>
  <table class="sansserif" border="1">
    <tr bgcolor="#FDE17E">
      <th style="text-align:centre">FID</th>
      <th style="text-align:centre">Name</th>
      <th style="text-align:centre">Qualification</th>
      <th style="text-align:centre">Freelancer_In</th>
      <th style="text-align:centre">Age</th>
      <th style="text-align:centre">Email</th>
      <th style="text-align:centre">Short Bio</th>
    </tr>
    <xsl:for-each select="freelancer-data/freelancer">
    <tr bgcolor="#FFD5AD">
      <td><xsl:value-of select="@id"/></td>
      <td><xsl:value-of select="name"/></td>
      <td><xsl:value-of select="qualification"/></td>
      <td><xsl:value-of select="freelancer-in"/></td>
      <td><xsl:value-of select="age"/></td>
      <td><xsl:value-of select="email"/></td>
      <td><xsl:value-of select="shortbio"/></td>
    </tr>
    </xsl:for-each>
  </table>
</body>
</html>
</xsl:template>
</xsl:stylesheet>