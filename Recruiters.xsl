<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
<xsl:template match="/">
<html> 
<style>
.sansserif {
  font-family: Arial, Helvetica, sans-serif;
}
body{
 background-color:#D9F1CE
 }
</style>
<body>
  <h2 class="sansserif">Recruiter Profiles</h2>
  <table class="sansserif" border="1">
    <tr bgcolor="#FFD5AD">
      <th style="text-align:centre">RID</th>
      <th style="text-align:centre">Company Name</th>
      <th style="text-align:centre">Recruits</th>
      <th style="text-align:centre">Location</th>
      <th style="text-align:centre">Vacancies</th>
      <th style="text-align:centre">Email</th>
      <th style="text-align:centre">Payscale</th>
    </tr>
    <xsl:for-each select="recruiter-data/recruiter">
    <tr bgcolor="#FDE17E">
      <td><xsl:value-of select="@id"/></td>
      <td><xsl:value-of select="company"/></td>
      <td><xsl:value-of select="recruits"/></td>
      <td><xsl:value-of select="Location"/></td>
      <td><xsl:value-of select="vacancies"/></td>
      <td><xsl:value-of select="email"/></td>
      <td><xsl:value-of select="payscale"/></td>
    </tr>
    </xsl:for-each>
  </table>
</body>
</html>
</xsl:template>
</xsl:stylesheet>