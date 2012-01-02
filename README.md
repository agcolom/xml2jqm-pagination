XLM2JQM-PAGINATION - README

xml2jqm-pagination allows to build a jQuery Mobile application that uses the [Pagination plugin](http://filamentgroup.com/lab/jquery_mobile_pagination_plugin/), developed by [Filament Group](http://filamentgroup.com), from an XML file. 

xml2jqm-pagination is a variant of the xml2jqm plugin.

The XML file
============

     <pages_all>
     <doc_title>My title</doc_title>
     
     <page>                                            <!-- open page -->
        <page_id>one</page_id>                         <!-- unique page id -->
        <content>your content here...</content>        <!-- page content, which should contain your image -->
     </page>                                           <!-- close page -->
     
     </pages_all>


The produced jQuery Mobile pages
================================

The XML file is transformed into HTML using XSLT. Each page, defined between <code>&lt;page&gt;</code> and <code>&lt;page&gt;</code> is turned into a separate jQuery Mobile page.
The page_id is used as the id attribute for the page. All pages in the document will be automatically linked through the automatically generated Previous and Next arrows on the left and right handside of each page. 
The right arrow of the last page in your XML file will link to the first page and the left arrow of the first page in your XML file links to the last page, hence allowing the user to loop through all images, like a looping carousel. 

Linking your XML file to the xml2jqm-pagination.xsl
===================================================

You can either do the XSL transformation on the server or on the client. 

One simple solution is to link the xml2jqm.xsl from the xml file:
<code>&lt;?xml-stylesheet type="text/xsl" href="xml2jqm-pagination.xsl" ?&gt;</code>

Another solution is to load both the xml and the xsl files using php.

Demos
=====

The [online demo](http://users.cscs.wmin.ac.uk/~coloma/jqm/xml2jqm-pagination/demo/demo1.xml). This is a simple demo that shows how easy it is to create some simple jQuery Mobile pages with the Pagination plugin from XML content using the xml2jqm-pagination plugin. 

