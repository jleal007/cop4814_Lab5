<!-- This comment was added during step 7 -->
<!-- This line is a change done to one branch -->
<?xml version="1.0" encoding="utf-8"?>
<!-- This comment was added onto the code via the master branch -->
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
  <xsl:output method="html"/>
  <xsl:template match="/">
    <html>
      <head>
        <title>Basketball Scores</title>
      </head>
      <body>
        <h2>Basketball Scores, Fall 2017</h2>
        <xsl:apply-templates select="teamscores/season/game"/>
      </body>
    </html>
  </xsl:template>

  <xsl:template match="game">
    <xsl:apply-templates select="date"/>
    <xsl:apply-templates select="team1"/>
    <xsl:apply-templates select="team2"/>
    <p />
  </xsl:template>

  <xsl:template match="date">
    Date: &#40;
    <xsl:value-of select="date"/> &#41;
    <br />
  </xsl:template>
  
  <xsl:template match="team1">
    <xsl:value-of select="."/> &#40;
    <xsl:value-of select="@score"/> &#41;
    <br />
  </xsl:template>

  <xsl:template match="team2">
    <xsl:value-of select="."/> &#40;
    <xsl:value-of select="@score"/> &#41;
  </xsl:template>

</xsl:stylesheet>
