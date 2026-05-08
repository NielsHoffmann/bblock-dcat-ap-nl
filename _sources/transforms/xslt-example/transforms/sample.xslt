<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
  <xsl:output method="xml" indent="yes" encoding="UTF-8"/>
  
  <!-- Match the root node -->
  <xsl:template match="/">
    <xsl:apply-templates select="Article"/>
  </xsl:template>
  
  <!-- Transform <Article> -->
  <xsl:template match="Article">
    <Document type="article">
      <xsl:apply-templates select="*"/>
    </Document>
  </xsl:template>
  
  <!-- Transform <Title> to <Heading> -->
  <xsl:template match="Title">
    <Heading>
      <xsl:apply-templates/>
    </Heading>
  </xsl:template>
  
  <!-- Wrap <Authors> content in <Contributors> -->
  <xsl:template match="Authors">
    <Contributors>
      <xsl:apply-templates select="Author"/>
    </Contributors>
  </xsl:template>
  
  <!-- Leave <Author> as is -->
  <xsl:template match="Author">
    <xsl:copy>
      <xsl:apply-templates/>
    </xsl:copy>
  </xsl:template>
  
  <!-- Append " [Modified]" to the <Body> -->
  <xsl:template match="Body">
    <xsl:copy>
      <xsl:value-of select="concat(., ' [Modified]')"/>
    </xsl:copy>
  </xsl:template>
  
</xsl:stylesheet>