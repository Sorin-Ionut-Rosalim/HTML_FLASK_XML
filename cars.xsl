<?xml version="1.0" encoding="ISO-8859-1"?>

<xsl:stylesheet version="1.0"
	xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
	<xsl:template match="/cars">
		<html>
			<head>
				<title>Reading cars</title>
			</head>
			<body>
				<ul>
					<xsl:for-each select="./car">
						<li>
							<strong>
								<xsl:value-of select="./@name" />
							</strong>
							<ul>
								<li>
									<a>
										<xsl:attribute name="href">
											<xsl:value-of select="./@uri" />
										</xsl:attribute>
										<xsl:value-of select="./@uri" />
									</a>
								</li>
								<li>
									<strong>
										<xsl:value-of select="./@type" />
									</strong>
								</li>
								<li>
									<a>
										Rateing: 
										<xsl:value-of select="./@rating" />
									</a>
								</li>
							</ul>
						</li>
						<br/>
						<ol>
							<li>
								<strong>
									<xsl:element name="car">
										<xsl:value-of select="price" />
									</xsl:element>
								</strong>
							</li>
							<li>
								<strong>
									<xsl:element name="car">
										<xsl:value-of select="comment" />
									</xsl:element>
								</strong>
							</li>
							<li>
								<strong>
									<xsl:element name="car">
										<xsl:value-of select="manufacturer" />
									</xsl:element>
								</strong>
							</li>
						</ol>
						<br />
					</xsl:for-each>
				</ul>
			</body>
		</html>
	</xsl:template>
</xsl:stylesheet>