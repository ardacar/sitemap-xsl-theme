<?xml version="1.0" encoding="UTF-8"?>
	<xsl:stylesheet version="2.0"
		xmlns:html="http://www.w3.org/TR/REC-html40"
		xmlns:image="http://www.google.com/schemas/sitemap-image/1.1"
		xmlns:sitemap="http://www.sitemaps.org/schemas/sitemap/0.9"
		xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
	<xsl:output method="html" version="1.0" encoding="UTF-8" indent="yes"/>
	<xsl:template match="/">
		<html xmlns="http://www.w3.org/1999/xhtml">
		<head>
			<title>XML Sitemap</title>
			<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
			<style type="text/css">
				body {
					font-family: Helvetica, Arial, sans-serif;
					font-size: 13px;
					color: #8b949e;
					background-color: #0d1117;
				}
				table {
					border-collapse: collapse;
				}
				#kh8EJsc tbody tr:hover td {
					background-color: #161b22;
				}
				#fsb8Sfx {
					width: 950px;
				}
				h1 {
					color: #f0f6fc;
				}
				a {
					color: #58a6ff;
					text-decoration: none;
				}
				a:hover {
					text-decoration: underline;
				}
				td {
					font-size:11px;
				}
				th {
					text-align:left;
					padding-right:30px;
					font-size:11px;
				}
				tr {
  					border-bottom: 1px solid #21262d;
				}
			</style>
		</head>
		<body>
		<div id="fsb8Sfx">
			<h1>XML Sitemap</h1>
			<p>
				This XML Sitemap was created by Arda Acar. You can <a href="https://github.com/ardacar/sitemap-xsl-theme" target="_blank" rel="external noopener nofollow">click here</a> to use the theme of the sitemap.
			</p>
			<xsl:if test="count(sitemap:sitemapindex/sitemap:sitemap) &gt; 0">
				<p>
					This XML Sitemap Index file contains <xsl:value-of select="count(sitemap:sitemapindex/sitemap:sitemap)"/> sitemaps.
				</p>
				<table id="kh8EJsc" cellpadding="3">
					<thead>
					<tr>
						<th width="75%">Sitemap</th>
						<th width="25%">Last Modified</th>
					</tr>
					</thead>
					<tbody>
					<xsl:for-each select="sitemap:sitemapindex/sitemap:sitemap">
						<xsl:variable name="sitemapURL">
							<xsl:value-of select="sitemap:loc"/>
						</xsl:variable>
						<tr>
							<td>
								<a href="{$sitemapURL}"><xsl:value-of select="sitemap:loc"/></a>
							</td>
							<td>
								<xsl:value-of select="concat(substring(sitemap:lastmod,0,11),concat(' ', substring(sitemap:lastmod,12,5)),concat(' ', substring(sitemap:lastmod,20,6)))"/>
							</td>
						</tr>
					</xsl:for-each>
					</tbody>
				</table>
			</xsl:if>
			<xsl:if test="count(sitemap:sitemapindex/sitemap:sitemap) &lt; 1">
				<p>
					This XML Sitemap contains <xsl:value-of select="count(sitemap:urlset/sitemap:url)"/> URLs.
				</p>
				<table id="kh8EJsc" cellpadding="3">
					<thead>
					<tr>
						<th width="80%">URL</th>
						<th width="5%">Images</th>
						<th title="Last Modification Time" width="15%">Last Modified</th>
					</tr>
					</thead>
					<tbody>
					<xsl:variable name="lower" select="'abcdefghijklmnopqrstuvwxyz'"/>
					<xsl:variable name="upper" select="'ABCDEFGHIJKLMNOPQRSTUVWXYZ'"/>
					<xsl:for-each select="sitemap:urlset/sitemap:url">
						<tr>
							<td>
								<xsl:variable name="itemURL">
									<xsl:value-of select="sitemap:loc"/>
								</xsl:variable>
								<a href="{$itemURL}">
									<xsl:value-of select="sitemap:loc"/>
								</a>
							</td>
							<td>
								<xsl:value-of select="count(image:image)"/>
							</td>
							<td>
								<xsl:value-of select="concat(substring(sitemap:lastmod,0,11),concat(' ', substring(sitemap:lastmod,12,5)),concat(' ', substring(sitemap:lastmod,20,6)))"/>
							</td>
						</tr>
					</xsl:for-each>
					</tbody>
				</table>
			</xsl:if>
		</div>
		</body>
		</html>
	</xsl:template>
	</xsl:stylesheet>
<!-- https://github.com/ardacar/sitemap-xsl-theme -->
