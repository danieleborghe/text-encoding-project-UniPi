<?xml version="1.0" encoding="UTF-8"?>

<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:tei="http://www.tei-c.org/ns/1.0" xmlsn="http://www.w3.org/1999/xhtml" version="1.0">

    <xsl:output method="html" encoding="UTF-8" indent="yes" />

    <xsl:template match="/">
        <html>
            <head>
                <title>LL1.7</title>
                <meta charset="UTF-8" />
                <link rel="stylesheet" href="style.css" />
                <link href="https://fonts.googleapis.com/css2?family=Montserrat:wght@400;700;800&display=swap" rel="stylesheet">
            </head>

            <body>
                <header>
                    <article>
                        <h1><xsl:value-of select="//tei:msIdentifier/tei:idno " /></h1>
                        <h2>Edizione digitale a cura di <xsl:value-of select="//tei:editionStmt//tei:name" /></h2>
                    </article>
                </header>

                <section id="info">
                    <article>
                        <h2>Informazioni generali sulla lettera</h2>
                        <h3>Vincenzo Bellini a Giovanni Battista Perucchini, in Milano, novembre 1830</h3>

                        <br />

                        <xsl:apply-templates select="//tei:msIdentifier" />
                        <xsl:apply-templates select="//tei:msContents" />
                        <xsl:apply-templates select="//tei:supportDesc" />
                        <xsl:apply-templates select="//tei:handDesc" />
                    </article>
                </section>

                <section id="biblio">
                    <article>
                        <h2>Bibliografia</h2>

                        <p>
                            <b><xsl:value-of select="//tei:respStmt/tei:name[@ref='#GS']" /> (2017): </b>pagine <xsl:value-of select="//tei:bibl[@resp='#GS']//tei:citedRange" />
                            <br />
                            <b><xsl:value-of select="//tei:respStmt/tei:name[@ref='#CN']" /> (2005): </b>pagina <xsl:value-of select="//tei:bibl[@resp='#CN']//tei:citedRange" />
                        </p>
                    </article>
                </section>

                <section class="nav">
                    <article>
                        <h2>Indicazioni</h2>

                        <p>
                            <ul>
                                <li><em>Termine</em>: termine tecnico o per cui è necessaria una definizione</li>
                                <li><mark class="green">Luogo</mark>: nome di un luogo fisico, stato, città o continente</li>
                                <li><mark class="yellow">Persona</mark>: nome di persona o riferimenti ad essa</li>
                            </ul>
                        </p>
                    </article>

                    <article id="nav">
                        <h2 >Navigazione</h2>

                        <p>
                            <ul>
                                <li><a href="#pg1">Pagina 1</a></li>
                                <li><a href="#pg2">Pagina 2</a></li>
                                <li><a href="#pg3">Pagina 3</a></li>
                                <li><a href="#pg4">Pagina 4</a></li>
                            </ul>
                        </p>
                    </article>
                </section>

                <section class="pagina" id="pg1">
                    <figure>
                        <img src="./scan/LL1.7_0001.jpg" />
                    </figure>

                    <article>
                        <h2>Pagina 1</h2>

                        <xsl:apply-templates select="//tei:body/tei:div[@n='pg1']" />
                    </article>
                </section>

                <section class="note">
                    <article>
                        <h2>Note pagina 1</h2>

                        <p>
                            <ol>
                                <li><b>Milano: </b>comune della Lombardia (181,67 km2 con 1.378.689 ab. nel 2019), capoluogo di regione e città metropolitana, è la seconda città in Italia, dopo Roma, e costituisce la massima concentrazione delle forme più moderne e dinamiche dell’economia del paese</li>
                                <li><b>Nov:<sup>e</sup>: </b>abbreviazione per "novembre" (undicesimo mese dell'anno)</li>
                                <li><b>Giovanni Battista Perucchini: </b>(Bergamo, 1784-Venezia, 1870), giurista, fu compositore dilettante e rinomato autore di romanze da camera  - fonte: <i>Seminara (2017) n.346, pag.219</i></li>
                                <li><b>Mad:<sup>a</sup>: </b>abbreviazione per "madama"; Titolo di onore o di rispetto rivolto a una signora</li>
                                <li><b>Marianna Lewis: </b>soprano inglese (prima metà del secolo XIX) - fonte: <i>Seminara (2017) n.375, pag.228</i></li>
                                <li><b>Cotesta: </b>agg. e pron. dimostr. [lat. eccu(m) tibi iste]. – Indica persona o cosa vicina a chi ascolta, o a lui relativa, o nominata subito prima</li>
                                <li><b>Prima donna: </b>Nel linguaggio teatrale, prima d. (anche unito, primadonna), l’attrice cui viene affidata la parte più importante</li>
                                <li><b>Teatro della Fenice: </b>teatro lirico di Venezia, inaugurato nel 1792, in sostituzione del Teatro di San Benedetto, raso al suolo da un incendio</li>
                                <li><b>Europa: </b>parte occidentale del continente eurasiatico, delimitata a O dall’Oceano Atlantico, a N dal Mar Glaciale Artico, a S dal Mar Mediterraneo</li>
                                <li><b>Apollo: </b>Divinità della religione greca, figlio di Zeus e di Leto (Latona). La sfera nella quale esercita la sua sovranità è costituita principalmente dalla musica, dalla medicina, dalla mantica</li>
                                <li><b>Veneto: </b>Regione dell’Italia nord-orientale (18.399 km2 con 4.905.854 ab. nel 2019, ripartiti in 568 comuni; densità 267 ab./km2) compresa fra le Alpi Carniche a N, il Trentino-Alto Adige e il Lago di Garda a O, il Mincio e il Po a S, il Mar Adriatico e il Friuli-Venezia Giulia a E</li>
                                <li><b>V:ri: </b>abbreviazione per "vostri"</li>
                                <li><b>Venezia: </b>Comune del Veneto (415,9 km2 con 261.362 ab. al censimento del 2011, divenuti 260.520 secondo rilevamenti ISTAT del 2019, detti Veneziani), capoluogo di regione e città metropolitana</li>
                                <li><b>Giovine: </b>agg. e s. m. e f. – Variante meno com. di giovane (v. questa voce, anche per gli alterati giovincello e giovinaccio).</li>
                            </ol>
                        </p>

                        <p style="text-align:right; border:0;" >
                            - fonte <a href="http://www.treccani.it/">treccani.it</a>
                        </p>
                    </article>
                </section>

                <section class="pagina" id="pg2">
                    <figure>
                        <img src="./scan/LL1.7_0002.jpg" />
                    </figure>

                    <article>
                        <h2>Pagina 2</h2>

                        <xsl:apply-templates select="//tei:body/tei:div[@n='pg2']" />
                    </article>
                </section>

                <section class="note">
                    <article>
                        <h2>Note pagina 2</h2>

                        <p>
                            <ol>
                                <li><b>Sig:ra: </b>abbreviazione per "signora"</li>
                                <li><b>Madre: </b>ci si riferisce alla madre del soprano inglese Marianna Lewis</li>
                                <li><b>v:ri: </b>abbrezione per "vostri"</li>
                                <li><b>Vecchietti: </b>ci si riferisce ai genitori del compositore Giovanni Battista Perucchini</li>
                                <li><b>abb:ci: </b>abbreviazione per "abbracci"</li>
                                <li><b>cred:mi: </b>abbreviazione per "credetemi"</li>
                                <li><b>pruove: </b>s. f. – Variante ant. di prova</li>
                                <li><b>v:ro: </b>abbreviazione per "vostro"</li>
                                <li><b>Bellini: </b>firma del mittente, il compositore Vincenzo Bellini</li>
                            </ol>
                        </p>

                        <p style="text-align:right; border:0;">
                            - fonte <a href="http://www.treccani.it/">treccani.it</a>
                        </p>
                    </article>
                </section>

                <section class="pagina" id="pg3">
                    <figure>
                        <img src="./scan/LL1.7_0003.jpg" />
                    </figure>
                
                    <article>
                        <h2>Pagina 3</h2>

                        <p>
                            <i>La pagina numero 3 risulta vuota e priva di testo.</i>
                        </p>
                    </article>
                </section>

                <section class="pagina" id="pg4">
                    <figure>
                        <img src="./scan/LL1.7_0004.jpg" />
                    </figure>
                
                    <article>
                        <h2>Pagina 4</h2>

                        <p>
                            <i>La pagina numero 4 risulta vuota e priva di testo.</i>
                        </p>
                    </article>
                </section>
            </body>
        </html>
    </xsl:template>

    <!--TEMPLATE PER LA COLLOCAZIONE FISICA DELLA LETTERA-->
    <xsl:template match="tei:msIdentifier">
        <p>
            <b>Collocazione: </b> 
            <xsl:value-of select="//tei:country" />,
            <xsl:value-of select="//tei:settlement" />,
            <xsl:value-of select="//tei:repository" />,
            <xsl:value-of select="//tei:altIdentifier/tei:idno" />
        </p>

        <br />
    </xsl:template>

    <!--TEMPLATE PER IL CONTENUTO DELLA LETTERA-->
    <xsl:template match="tei:msContents">
        <p>
            <b>Note: </b> 
            <xsl:value-of select="//tei:msItem/tei:note" />
        </p>
        <br />
        <p>
            <b>Linguaggio: </b> 
            <xsl:value-of select="//tei:msItem/tei:textLang" />
        </p>
        <br />
    </xsl:template>

    <!--TEMPLATE PER LE CONDIZIONI FISICHE DELLA LETTERA-->
    <xsl:template match="tei:supportDesc">
        <p>
            <b>Condizioni: </b> 
            <xsl:value-of select="//tei:support" />
        </p>
        <br />
        <p>
            <b>Dimensioni: </b> 
            <xsl:value-of select="//tei:extent/tei:measure" /> folio 
            <xsl:value-of select="//tei:extent/tei:dimensions/tei:height" />mm x 
            <xsl:value-of select="//tei:extent/tei:dimensions/tei:width" />mm
        </p>
        <br />
        <p>
            <b>Piegatura: </b> 
            <xsl:value-of select="//tei:foliation/tei:p" />
        </p>
        <br />
    </xsl:template>

    <!--TEMPLATE PER LE ANNOTAZIONI DI SECONDA MANO-->
    <xsl:template match="tei:handDesc">
        <p>
            <b>Annotazioni: </b>
            <xsl:apply-templates />
        </p>
        <br />
    </xsl:template>

    <!--TEMPLATE PER LE LINEE-->
    <xsl:template match="tei:lb">
        <xsl:apply-templates/>
        <br/>
    </xsl:template>

    <!--TEMPLATE PER I LUOGHI-->
    <xsl:template match="tei:placeName | tei:orgName | tei:state[@type='nationality']">
        <mark class="green"><xsl:apply-templates /></mark>
    </xsl:template>

    <!--TEMPLATE PER I NOMI E I RIFERIMENTI A PERSONE-->
    <xsl:template match="tei:persName | tei:salute//tei:state[@type='personal'] | tei:ref[@target='#GBP'] | tei:ref[@target='#ML'] | tei:addName">
        <mark class="yellow"><xsl:apply-templates /></mark>
    </xsl:template>

    <!--TEMPLATE PER I TERMINI INSOLITI-->
    <xsl:template match="tei:distinct">
        <i><xsl:apply-templates /></i>
    </xsl:template>

    <!--TEMPLATE PER I TERMINI TECNICI-->
    <xsl:template match="tei:term">
        <i><xsl:apply-templates /></i>
    </xsl:template>

    <!--TEMPLATE PER IL TESTO GENERALE DELLA LETTERA-->
    <xsl:template match="tei:div">
        <p>
            <xsl:apply-templates/>
        </p>
    </xsl:template>

    <!--TEMPLATE PER LA DATA-->
    <xsl:template match="tei:opener//tei:dateline">
        <span style="display:block; text-align:right;" id="opener">
            <xsl:apply-templates />
        </span>
    </xsl:template>

    <!--TEMPLATE PER LA FIRMA-->
    <xsl:template match="tei:closer//tei:signed">
        <span style="display:block; text-align:right;" id="opener">
            <xsl:apply-templates />
        </span>
    </xsl:template>

    <!--TEMPLATE PER IL SALUTO INIZIALE-->
    <xsl:template match="tei:s[@n='1']">
        <span style="display:block; text-align:center;" id="opener">
            <xsl:apply-templates />
        </span>
    </xsl:template>

    <xsl:template match="tei:*[@rend='superscript']">
        <sup><xsl:apply-templates /></sup>
    </xsl:template>

    <xsl:template match="tei:p//tei:expan | tei:signed//tei:expan">
        <xsl:value-of select="tei:abbr" />
    </xsl:template>

    <xsl:template match="tei:opener//tei:expan" />
    <xsl:template match="tei:corr" />
    <xsl:template match="tei:salute//tei:note" />
</xsl:stylesheet>