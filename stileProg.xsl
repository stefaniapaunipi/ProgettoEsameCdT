<?xml version="1.0" encoding="UTF-8"?>
  <xsl:stylesheet version="1.0" 
    xmlns="http://www.w3.org/1999/xhtml" 
    xmlns:tei="http://www.tei-c.org/ns/1.0"
    xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

      <xsl:output method="html" omit-xml-declaration="yes"/>
      <xsl:template match="/">
        <html>
          <head>
            <link href="stile.css" rel="stylesheet" type="text/css"/>
            <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.js"></script>
            <script type="text/javascript" src="bottoni.js"></script>
          </head>
        </html>

        <body>
            <nav> 
                <ul>
                    <li class="text">
                        <a>
                            <xsl:attribute name="href">#descr</xsl:attribute>
                            Descrizione rivista
                        </a>
                    </li>
                    <li class="text">
                        <a>
                            <xsl:attribute name="href">#pg4041</xsl:attribute>
                            Perla
                        </a>
                    </li>
                    <li class="text">
                        <a>
                            <xsl:attribute name="href">#pg111</xsl:attribute>
                            Corrispondenza di Palermo
                        </a>
                    </li>
                    <li class="text">
                        <a>
                            <xsl:attribute name="href">#pg64</xsl:attribute>
                            Sezione bibliografia
                        </a>
                    </li>
                    <li class="text">
                        <a>
                            <xsl:attribute name="href">#pg324</xsl:attribute>
                            Sezione notizie
                        </a>
                    </li>
                </ul>
            </nav>

            <div class="background-section">
                
            </div>

            <section id="descr">
            <div class="infTitle"><!-- Sezione in cui descrivo le parti del Title-->
                <div class="sin">
                    <p>Il titolo della rivista: <br/>
                    <span id="test"><xsl:value-of select="//tei:title" /> <br/> 
                    <xsl:value-of select="//tei:title[@type='sub']" /></span></p>

                </div>
                <div class="dest">
                    <p>Gli autori: <br/>
                    <span id="test"><xsl:value-of select="//tei:author"></xsl:value-of></span> <br/>
                    <span id="test"><xsl:value-of select="//tei:author[@ref='#LF']"></xsl:value-of></span></p>
                    <p>
                    <span id="test"><xsl:value-of select="//tei:respStmt"> </xsl:value-of></span> <br/>
                    </p>
                </div>
            </div>

            <div class="cont">
                <div class="sini">
                    <h2> Contenuti della rivista  </h2> 
                        <xsl:apply-templates select="//tei:msIdentifier" /> <br/>
                        <xsl:apply-templates select="//tei:msContents" />  <br/>
                        <xsl:apply-templates select="//tei:editionStmt" />
                </div>

                <div class="destr">
                    <h2> Descrizione fisica del manoscritto </h2>
                        <xsl:apply-templates select="//tei:physDesc" /> <br/>
                        <xsl:apply-templates select="//tei:history" /> 
                </div>
            </div>
            </section>

            <hr class="stile"/>
            <div id="butstyle">
                <div class="ragrbut">
                    <button class="Off" id="Pers">Persone</button>
                    <button class="Off" id="Org">Organizzazioni</button>
                    <button class="Off" id="luoghi">Luoghi</button>
                    <button class="Off" id="Date">Date</button>
                    <button class="Off" id="opere">Opere</button>
                    <button class="Off" id="numeri">Numeri</button>
                    <button class="Off" id="citaz">Citazioni</button>
                </div>
            </div>
            <hr class="stile"/>

            <section id="pg4041">
              <div>
                <h3> Perla (Vol. 1°, N° 3.)</h3>
                <div class="page">
                    <!--contenitori di pagina 40-->
                    <div class="imgfolio">
                        <xsl:apply-templates select="//tei:surface[@xml:id='Pg_40']" />
                    </div>
                    <div class="textCont">
                        <xsl:apply-templates select="//tei:body/tei:div[@n='40']" />
                    </div>
                    <!--contenitori di pagina 41-->
                    <div class="imgfolio">
                        <xsl:apply-templates select="//tei:surface[@xml:id='Pg_41']" />
                    </div>
                    <div class="textCont">
                        <xsl:apply-templates select="//tei:body/tei:div[@n='41']" />
                    </div>
                </div>
              </div>
            </section>
            
            <section id="pg111">
                <div>
                    <h3>Corrispondenza di Palermo (Vol. 1°, N° 7.)</h3>
                    <div class="page">
                        <div class="imgfolio">
                            <xsl:apply-templates select="//tei:surface[@xml:id='Pg_111']" />
                        </div>
                        <div class="textCont">
                            <xsl:apply-templates select="//tei:body/tei:div[@n='111']" />
                        </div>
                    </div>
                </div>
            </section>

              <section id="pg64">
              <div>
                <h3>Scienze Militari (Vol. 1°, N° 4.)</h3>
                <div class="page">
                    
                    <div class="imgfolio">
                        <xsl:apply-templates select="//tei:surface[@xml:id='Pg_64']" />
                    </div>
                    <div class="textCont">
                        <xsl:apply-templates select="//tei:body/tei:div[@n='64']" />
                    </div>
                </div>
              </div>
            </section>

             <section id="pg81">
                <div>
                    <h3>Scienze Filosofiche (Vol. 1°, N° 5.)</h3>
                    <div class="page">
                        <div class="imgfolio">
                            <xsl:apply-templates select="//tei:surface[@xml:id='Pg_81']" />
                        </div>
                        <div class="textCont">
                            <xsl:apply-templates select="//tei:body/tei:div[@n='81']" />
                        </div>
                    </div>
                </div>
            </section>

             <section id="pg324">
                <div>
                    <h3>Notizie (Vol. 1°, N° 17.)</h3> <!--prima notizia-->
                    <div class="page">
                        <div class="imgfolio">
                            <xsl:apply-templates select="//tei:surface[@xml:id='Pg_324']" />
                        </div>
                        <div class="textCont">
                            <xsl:apply-templates select="//tei:body/tei:div[@n='324']" />
                        </div>
                    </div>
                </div>
            </section>

             <section id="pg464">
                <div>
                    <h3>Notizie (Vol. 1°, N° 24.)</h3> <!--seconda notizia-->
                    <div class="page">
                        <div class="imgfolio">
                            <xsl:apply-templates select="//tei:surface[@xml:id='Pg_464']" />
                        </div>
                        <div class="textCont">
                            <xsl:apply-templates select="//tei:body/tei:div[@n='464']" />
                        </div>
                    </div>
                </div>
            </section>

            <div class="cont">
                <xsl:apply-templates select="//tei:listBibl" />
            </div>

        </body>
    </xsl:template>

    <xsl:template match="tei:surface">
        <xsl:element name="img">
            <xsl:attribute name="class">documento</xsl:attribute>
            <xsl:attribute name="id">
                <xsl:value-of select="@xml:id" />
            </xsl:attribute>
            <xsl:attribute name="src">
                <xsl:value-of select="concat('ImgSrc/', @xml:id, '.png')" />
            </xsl:attribute>
            <xsl:attribute name="width"> 500px</xsl:attribute>
            <xsl:attribute name="usemap">
                <xsl:value-of select="@xml:id" />
            </xsl:attribute>
        </xsl:element>

        <xsl:element name="map">
            <xsl:attribute name="name">
                <xsl:value-of select="@xml:id" />
            </xsl:attribute>
            <xsl:for-each select="current()/tei:zone[@rendition='Line']">

                <xsl:element name="area"> 
                    <xsl:attribute name="shape">poly</xsl:attribute>
                    <xsl:attribute name="coords">
                        <xsl:value-of select="@points" />
                    </xsl:attribute> 
                    <xsl:attribute name="href"> 
                        <xsl:value-of select="@xml:id"/>
                    </xsl:attribute>
                </xsl:element>
            </xsl:for-each>
        </xsl:element>
    </xsl:template>

    <xsl:template match="tei:div[@type='page']">
        <xsl:element name="div">
        <xsl:attribute name="class">newspaper</xsl:attribute>
            <xsl:attribute name="id">
                <xsl:value-of select="../tei:pb[@n=current()/@n]/@facs" />
            </xsl:attribute>
            <xsl:apply-templates/>
        </xsl:element>
    </xsl:template>


    <xsl:template match="tei:lb">
    <br />
      <xsl:element name="span">
        <xsl:attribute name="class">lineNumber</xsl:attribute>
        <xsl:attribute name="id">
          <xsl:value-of select="concat('line', substring(@xml:id, 6, 1), '_', @n)" />
        </xsl:attribute>
        <xsl:value-of select="@n"/>
      </xsl:element>
    </xsl:template>

<!-- colonna di sinistra -->
    <xsl:template match="tei:msIdentifier">
        <xsl:element name="h3"> 
        <xsl:attribute name="class">titoli</xsl:attribute>
        Dove troviamo la rivista
        </xsl:element>
        <xsl:element name="p">
            <xsl:attribute name="class">luoghi</xsl:attribute>
            <xsl:value-of select="//tei:settlement" />,  
            <xsl:value-of select="//tei:region" /> 
        </xsl:element>
        <xsl:element name="p">
            <xsl:attribute name="class">luoghi</xsl:attribute>
            <xsl:value-of select="//tei:repository" /> 
        </xsl:element>
    </xsl:template>

    <xsl:template match="tei:msContents">
        <xsl:element name="h3">
            <xsl:attribute name="class">titoli</xsl:attribute>
            Cosa contiene
        </xsl:element>
        <xsl:element name="p">
            <xsl:attribute name="class">titolo</xsl:attribute>
            Titolo:
            <xsl:value-of select="//tei:msItem/tei:titlePart" />
        </xsl:element>
        <xsl:element name="p">
            <xsl:attribute name="class">autori</xsl:attribute>
            Autori:
            <xsl:value-of select="concat(//tei:msItem/tei:author/tei:persName[tei:surname='Franchetti'], ', ', //tei:msItem/tei:author/tei:persName[tei:surname='Sonnino'])" />   
            <!--<xsl:text>,</xsl:text> -->
        </xsl:element>
        <xsl:element name="p">
            <xsl:attribute name="class">sommario</xsl:attribute>
            Sommario:
            <xsl:value-of select="//tei:summary" />
        </xsl:element>
    </xsl:template>

    <xsl:template match="tei:editionStmt">
        <xsl:element name="h3">
            <xsl:attribute name="class">titoli</xsl:attribute>
            Edizione
        </xsl:element>   
        <xsl:element name="p"> 
            <xsl:attribute name="class">edizione</xsl:attribute>
            <xsl:value-of select="//tei:edition"/>
            <br />
            <xsl:value-of select="//tei:editionStmt/tei:respStmt" />
            <br />
            <xsl:text>e</xsl:text>
            <br />
            <xsl:value-of select="//tei:editionStmt/tei:respStmt[tei:name='Stefania Parello']" />
        </xsl:element>
    </xsl:template>        

<!-- colonna di destra -->   
    <xsl:template match="tei:physDesc">
        <xsl:element name="h3">
        <xsl:attribute name="class">titoli</xsl:attribute>
        Descrizione generale</xsl:element>
        <xsl:element name="p">
            <xsl:attribute name="class">descFisica</xsl:attribute>
            <xsl:value-of select="//tei:extent" /> <br />
            <br/>
            Descrizione materiale: <br/>
            <xsl:value-of select="//tei:support" />
        </xsl:element>

        <xsl:element name="p">
            <xsl:attribute name="class">descFisica</xsl:attribute>
            Layout della rivista:
            <xsl:value-of select="//tei:layout" /> 
        </xsl:element>

        <xsl:element name="p">
            <xsl:value-of select="//tei:handDesk" />
        </xsl:element>
    </xsl:template>

    <xsl:template match="tei:history">
        <xsl:element name="h3">
        <xsl:attribute name="class">titoli</xsl:attribute>
        Storico della rivista
        </xsl:element>
        <xsl:element name="p">
            <xsl:attribute name="class">descFisica</xsl:attribute>
            Origine: <br/>
            <xsl:value-of select="//tei:origin"/>
        </xsl:element>
        <xsl:element name="p">
            <xsl:attribute name="class">descFisica</xsl:attribute>
            Provenienza: <br/>
            <xsl:value-of select="//tei:provenance"/>
        </xsl:element>

    </xsl:template>

    <xsl:template match="tei:abbr">
        <abbr><xsl:value-of select="current()"/></abbr>
    </xsl:template>

    <xsl:template match="tei:expan">
        <xsl:element name="span">
            <xsl:attribute name="class">expan</xsl:attribute>
            <xsl:value-of select="current()"/>
        </xsl:element>
    </xsl:template>

    <xsl:template match="tei:persName | tei:orgName | tei:date | tei:placeName | tei:title | tei:num | tei:term | tei:quote" >
    
    <xsl:element name="div">
        <xsl:attribute name="class">bot</xsl:attribute>
        <xsl:element name="span">
            <xsl:attribute name="class">
                <xsl:value-of select="name()" />
            </xsl:attribute>
            <xsl:choose>

                <!-- Gestione del nodo <term> -->
                <xsl:when test="name() = 'term'">
                    <xsl:element name="span">
                        <xsl:attribute name="class">term tooltip</xsl:attribute>
                        <xsl:attribute name="data-ref">
                            <xsl:value-of select="@ref" />
                        </xsl:attribute>
                        <xsl:value-of select="." />

                        <!-- Tooltip content -->
                        <xsl:element name="span">
                            <xsl:attribute name="class">tooltip-content</xsl:attribute>
                            <xsl:apply-templates select="//tei:gloss[@target=current()/@ref]" />
                        </xsl:element>
                    </xsl:element>
                </xsl:when>

                <xsl:when test="name() = 'persName'">
                    <xsl:element name="id">
                        <xsl:value-of select="." />
                    </xsl:element>
                </xsl:when>
                
                <xsl:when test="name() = 'orgName'">
                    <xsl:element name="id">
                        <xsl:value-of select="."/>
                    </xsl:element>
                </xsl:when>

                <xsl:when test="name() = 'date'">
                    <xsl:element name="id">
                        <xsl:value-of select="."/>
                    </xsl:element>
                </xsl:when>

                <xsl:when test="name() = 'placeName'">
                    <xsl:element name="id">
                        <xsl:value-of select="."/>
                    </xsl:element>
                </xsl:when>

                <xsl:when test="name() = 'title'">
                    <xsl:element name="id">
                        <xsl:value-of select="."/>
                    </xsl:element>
                </xsl:when>

                <xsl:when test="name() = 'num'">
                    <xsl:element name="id">
                        <xsl:value-of select="."/>
                    </xsl:element>
                </xsl:when>

                <xsl:when test="name() = 'quote'">
                    <xsl:element name="id">
                        <xsl:value-of select="."/>
                    </xsl:element>
                </xsl:when>
            </xsl:choose>
        </xsl:element>
    </xsl:element>
    </xsl:template>

 <xsl:template match="tei:listBibl">
        <xsl:element name="h3">
        <xsl:attribute name="class">titoli</xsl:attribute>
        Scopri bibliografia
        </xsl:element>
        <xsl:element name="p">
            <xsl:attribute name="class">titolo</xsl:attribute>
            Titolo:
            <xsl:value-of select="//tei:bibl/tei:title" />
        </xsl:element>
        <xsl:element name="p">
            <xsl:attribute name="class">autori</xsl:attribute>
            Autori:
            <xsl:value-of select="//tei:bibl/tei:author" />   
        </xsl:element>
        <xsl:element name="p">
            <xsl:attribute name="class">data</xsl:attribute>
            Data:
            <xsl:value-of select="//tei:bibl/tei:date" />
        </xsl:element>
        <xsl:element name="p">
            <xsl:attribute name="class">publplace</xsl:attribute>
            Luogo di pubblicazione:
            <xsl:value-of select="//tei:bibl/tei:pubPlace" />
        </xsl:element>
   </xsl:template> 

<xsl:template match="tei:listBibl" priority="1">
    <div class="bibliografia">
        <h3 class="bibliografia-titolo">Scopri la Bibliografia</h3>
        <xsl:for-each select="tei:bibl">
            <div class="bibl-container">
                <div class="bibl-box titolo">
                    <strong>Titolo: </strong><xsl:value-of select="tei:title"/>
                </div>
                <div class="bibl-box autori">
                    <strong>Autori: </strong><xsl:value-of select="tei:author"/>
                </div>
                <div class="bibl-box data">
                    <strong>Data: </strong><xsl:value-of select="tei:date"/>
                </div>
                <div class="bibl-box luogo">
                    <strong>Luogo di pubblicazione: </strong><xsl:value-of select="tei:pubPlace"/>
                </div>
            </div>
        </xsl:for-each>
    </div>
</xsl:template>

  </xsl:stylesheet>
<!--java -jar SaxonHE10-3J/saxon-he-10.3.jar -s:progCod.xml -xsl:stile.xsl -o:test.html-->