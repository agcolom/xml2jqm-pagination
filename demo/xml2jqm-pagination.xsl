<?xml version="1.0" encoding="UTF-8"?>
<!-- DWXMLSource="page_jqm.xml" -->
<!--
* jQuery Mobile Framework : xml2jqm-pagination plugin
* Copyright (c) Anne-Gaelle Colom
* Authored by Anne-Gaelle Colom, coloma@wmin.ac.uk
* Dual licensed under the MIT or GPL Version 2 licenses.
-->
<!DOCTYPE xsl:stylesheet  [
	  <!ENTITY nbsp   "&#160;">
	  <!ENTITY copy   "&#169;">
	  <!ENTITY reg    "&#174;">
	  <!ENTITY trade  "&#8482;">
	  <!ENTITY mdash  "&#8212;">
	  <!ENTITY ldquo  "&#8220;">
	  <!ENTITY rdquo  "&#8221;"> 
	  <!ENTITY pound  "&#163;">
	  <!ENTITY yen    "&#165;">
	  <!ENTITY euro   "&#8364;">
]>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
  <xsl:output method="html" encoding="UTF-8" doctype-public="-//W3C//DTD XHTML 1.0 Transitional//EN" doctype-system="http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd"/>
  <xsl:template match="/">
    <html xmlns="http://www.w3.org/1999/xhtml">
    <head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>
    <meta name="viewport" content="width=device-width, initial-scale=1" /> 
    <link rel="stylesheet" href="http://code.jquery.com/mobile/1.0/jquery.mobile-1.0.min.css"/>
    <link rel="stylesheet" href="http://filamentgroup.com/examples/jqm-pagination/jquery.mobile.pagination.css"/>
    <link rel="stylesheet" href="http://filamentgroup.com/examples/jqm-pagination/demo/demo.css"/>
    <script src="http://code.jquery.com/jquery-1.6.4.min.js"/>
    <script src="http://code.jquery.com/mobile/1.0/jquery.mobile-1.0.min.js"/>
    <script src="http://filamentgroup.com/examples/jqm-pagination/jquery.mobile.pagination.js"></script>
    <script src="http://filamentgroup.com/mint/?js" type="text/javascript"></script>
    <title><xsl:value-of select="pages_all/doc_title" /></title>
    </head>
    
<body>
  
      <xsl:for-each select="pages_all/page">
      <div data-role="page">
      <xsl:attribute name="id"> <xsl:value-of select="page_id" /> </xsl:attribute>

    <xsl:copy-of select="child::content/node()" />
         <ul data-role="pagination">
         <li class="ui-pagination-prev"> 
          <a><xsl:choose>
         <xsl:when test="position() != 1" >
          <xsl:attribute name="href">#<xsl:value-of select="preceding-sibling::page[1]/page_id" /></xsl:attribute>
          </xsl:when>
          <xsl:otherwise>
          <xsl:attribute name="href">#<xsl:value-of select="//page[last()]/page_id" /></xsl:attribute>
          </xsl:otherwise>
          </xsl:choose>
          <xsl:attribute name="data-direction">reverse</xsl:attribute>Prev</a></li>
         <li class="ui-pagination-next"><a><xsl:choose><xsl:when test="position() != last()" >
          <xsl:attribute name="href">#<xsl:value-of select="following-sibling::page/page_id" /></xsl:attribute>
          </xsl:when>
          <xsl:otherwise>
          <xsl:attribute name="href">#<xsl:value-of select="//page[1]/page_id" /></xsl:attribute>
          </xsl:otherwise>
          </xsl:choose>Next</a></li>
          </ul>
      <!-- /content -->
      </div><!-- page -->
    </xsl:for-each>
    </body>
    </html>
  </xsl:template>
</xsl:stylesheet>

