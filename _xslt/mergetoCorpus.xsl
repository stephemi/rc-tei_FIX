<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    version="1.0" xmlns="http://www.tei-c.org/ns/1.0"
    xmlns:tei="http://www.tei-c.org/ns/1.0">
    
    <xsl:output method="xml" encoding="utf-8" indent="yes"/>
    <xsl:strip-space elements="*"/>
    
    <xsl:template match="/">
        <teiCorpus>
            <teiHeader>
                <fileDesc>
                    <titleStmt>
                        <title/>
                    </titleStmt>
                    <publicationStmt>
                        <publisher/>
                    </publicationStmt>
                    <sourceDesc>
                        <bibl/>
                    </sourceDesc>
                </fileDesc>
                <encodingDesc>
                    <tagsDecl/>
                </encodingDesc>
                <profileDesc/>
                <revisionDesc>
                    <change/>
                </revisionDesc>
            </teiHeader>
            <xsl:for-each select="//part[not(contains(@code, 'contribs.xml'))]">
            <xsl:copy-of select="document(@code)/tei:TEI"/>
        </xsl:for-each>
        </teiCorpus>
    </xsl:template>
 
</xsl:stylesheet>
