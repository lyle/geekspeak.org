<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
version="1.0">

<xsl:output method='text'/>
<xsl:variable name='newline'><xsl:text>
</xsl:text></xsl:variable>

  <xsl:template match="articles">
    <div id="articles" class="maincontent">
      <h1>Articles</h1>
      <div class="contentbody">
        <xsl:apply-templates mode="list"/>
      </div>
      <div class="footer"><span>We are currently not publishing new articles.</span></div>
    </div>
    <p class="textonly"/>
    <hr class="textonly"/>
    <p class="textonly"/>
  </xsl:template>
  <xsl:template match="article">
    <div id="article" class="maincontent article">
        <h1>Article</h1>
        <div class="contentbody">
          <h2><a href="."><xsl:value-of select="articleinfo/title"/></a></h2>
          <div class="body">
            <xsl:if test="subtitle">
              <h3 class="subtitle"><xsl:value-of select="articleinfo/subtitle" /></h3>
            </xsl:if>
            <span class="author"><xsl:apply-templates select="articleinfo/contributors" />
        <xsl:apply-templates select="articleinfo/authorgroup" /></span><br />
        <span class="date"><xsl:apply-templates select="articleinfo" mode="pubdate" /></span>
            <br class="textonly"/>
            <xsl:apply-templates select="showinfo/abstract" />

            <br class="textonly" />
            <xsl:apply-templates select="section"/>
            <br class="textonly" />
          </div>
        </div>
        <div class="footer"><span><xsl:apply-templates select="articleinfo" mode="pubdate" /></span></div>
    </div>
  </xsl:template>

  <xsl:template match="article" mode="list">
    <div class="article">
      <xsl:apply-templates select="articleinfo" mode="list">
      </xsl:apply-templates>
    </div>
    <p class="textonly"><br /><br /></p>
  </xsl:template>
  
  <xsl:template match="articleinfo">
    <xsl:param name="sections" select="section"/>
    <h2 class="title"><xsl:apply-templates select="title"/></h2>
    <xsl:if test="subtitle">
      <h3 class="subtitle"><xsl:value-of select="subtitle"/></h3>
    </xsl:if>
    <xsl:if test="count($sections) > 1">
      <div id="pagelist">
        <h3>Article Sections</h3>
        <ol>
          <xsl:for-each select="$sections">
            <li><a href="#page{position()}" title="Jump to page {position()}"
              ><xsl:value-of select="title"/></a></li>
          </xsl:for-each>
        </ol>
      </div>
      <hr class="textonly"/>
    </xsl:if>
  </xsl:template>

  <xsl:template match="articleinfo/title">
    <xsl:for-each select=".">
      <xsl:apply-templates/>
    </xsl:for-each>
  </xsl:template>
  
  <xsl:template match="authorgroup">
    
    <xsl:variable name="authors" select="author|author"/>
    <xsl:variable name="author" select="$authors[position()=1]"/>
    <xsl:variable name="user" select="$author/@username"/>
    <xsl:variable name="name"><xsl:choose><xsl:when test="$author/firstname">
       <xsl:value-of select="concat($author/firstname,' ',$author/surname)"/>
       </xsl:when><xsl:when test="$user"><xsl:value-of select="$user"/>
       </xsl:when><xsl:otherwise>Anonymous</xsl:otherwise></xsl:choose></xsl:variable>

          Author: <xsl:value-of select="$name"/>

  </xsl:template>
  
  <xsl:template match="contributor">
    <xsl:variable name="user" select="./@user"/>
    <xsl:if test="position() != 1 and position()=last()">
    and
    </xsl:if>
    <xsl:value-of select="."/>
  </xsl:template>
  
  <xsl:template match="contributors">
    <xsl:variable name="authors" select="contributor[@role='author']"/>
     Author<xsl:if test="count($authors) &gt; 1">s</xsl:if>: <xsl:apply-templates select="contributor[@role='author']" />
        <!--contributors>
            <contributor role="author" user="lyle">   Lyle Troxell </contributor>
            <contributor role="contributor" user="miles">   Miles Elam </contributor>
            <contributor role="editor" user="miles">   Miles Elam </contributor>
        </contributors-->
  </xsl:template>
 
  <xsl:template match="articleinfo" mode="pubdate">
    Published: 
        <xsl:variable name="year" select="substring(pubdate,1,4)"/>
        <xsl:variable name="month" select="substring(pubdate,6,2)"/>
        <xsl:variable name="day" select="substring(pubdate,9,2)"/>
      
        <xsl:value-of select="concat(' ',$day,', ',$year)"/>
  </xsl:template>
  <xsl:template match="articleinfo" mode="revisiondate">
    Updated: 
        <xsl:variable name="year" select="substring(revhistory/revision[last()]/date,1,4)"/>
        <xsl:variable name="month" select="substring(revhistory/revision[last()]/date,6,2)"/>
        <xsl:variable name="day" select="substring(revhistory/revision[last()]/date,9,2)"/>
      
        <xsl:value-of select="concat(' ',$day,', ',$year)"/>


  </xsl:template>
    
  <xsl:template match="articleinfo" mode="pubinfo">
    <xsl:apply-templates select="authorgroup" />
    <xsl:apply-templates select="contributors" />
    <div id="pubdate" class="maincontent">
      <h3>Published:</h3>
      <span>
        <xsl:variable name="year" select="substring(pubdate,1,4)"/>
        <xsl:variable name="month" select="substring(pubdate,6,2)"/>
        <xsl:variable name="day" select="substring(pubdate,9,2)"/>
      
        <xsl:value-of select="concat(' ',$day,', ',$year)"/>
      </span>
    </div>
  </xsl:template>

  <xsl:template match="articleinfo" mode="list">
    <xsl:param name="hasContent"/>
    <xsl:variable name="year" select="substring(pubdate,1,4)"/>
    <xsl:variable name="month" select="substring(pubdate,6,2)"/>
    <xsl:variable name="day" select="substring(pubdate,9,2)"/>
    <xsl:variable name="pubdate">44444</xsl:variable>
    <h2>
      <xsl:choose>
        <xsl:when test="$hasContent">
          <a href="/articles/{id}/" title="The complete article text"
            ><xsl:value-of select="title"/></a>
        </xsl:when>
        <xsl:otherwise>
          <xsl:value-of select="title"/>
        </xsl:otherwise>
      </xsl:choose>
    </h2>
    <div class="body">
    <span class="subtitle date"><xsl:value-of select="$pubdate"/></span>
    <br class="textonly"/>
    <xsl:variable name="linkprefix" select="concat('/articles/',id,'/')"/>
    <xsl:apply-templates select="abstract/*">
      <xsl:with-param name="linkprefix" select="$linkprefix"/>
      <xsl:with-param name="hasContent" select="$hasContent"/>
    </xsl:apply-templates>
    <xsl:if test="$hasContent">
      <span class="readmore">[ <a href="{$linkprefix}"
            title="Read the full article">Full Text</a> ]</span>
    </xsl:if>
   </div>
  </xsl:template>



  <xsl:template match="futureshows">
      <xsl:choose>
        <xsl:when test="show[position()=2]">
      <div id="nextshows" class="maincontent list">
           <h1>Future Shows</h1>
       <div class="contentbody">
            <xsl:apply-templates mode="list"/>
       </div>
          </div>
        </xsl:when>
        <xsl:when test="show[position()=1]">
      <div id="nextshows" class="maincontent one">
           <h1>The Next Show</h1>
           <div class="contentbody">
            <xsl:apply-templates mode="list"/>
       </div>
          </div>
        </xsl:when>
        <xsl:otherwise>
      <div id="nextshows" class="maincontent empty">
           <h1>The Next Show</h1>
       <div class="contentbody">
            <p>To be determined...</p>
       </div>
          </div>
        </xsl:otherwise>
      </xsl:choose>
    <p class="textonly"/>
    <hr class="textonly"/>
    <p class="textonly"/>
  </xsl:template>


<!-- TODO: this can go inside shows.xhtml.xsl and homepage can do something else -->
<xsl:template match="futureshows">   
   <xsl:param name="shows"  select="show[position()>1]"/>
  <xsl:choose>
   <xsl:when test="$shows">
     <div class="twoblockcontent">
         <div id="upcomingshows" class="maincontent secondcol">
            <h1>Upcoming Shows</h1>
        <div class="contentbody">
            <ul class="microshowlist">
                <xsl:apply-templates select="show[position()>1]" mode="microlist"/>
            </ul>
           </div>
          <div class="footer"><span>&#160;</span></div>

    </div>

     <div id="futureshows" class="maincontent firstcol">
       <h1>Our Next Show</h1>
    <div class="contentbody">
        <xsl:apply-templates select="show[position()=1]" mode="list"/>
       </div>
     <div class="footer"><span><a href="http://geekspeak.org/contact?destination=contact">Ask Us Questions</a></span></div>
     </div>
    </div>
   </xsl:when>

  <xsl:otherwise>
   <xsl:if test="show">
     <div id="futureshows" class="maincontent">
       <h1>Our Next Show</h1>
    <div class="contentbody">
        <xsl:apply-templates select="show[position()=1]" mode="list"/>
       </div>
     <div class="footer"><span><a href="http://geekspeak.org/contact?destination=contact">Ask Us Questions</a></span></div>
     </div>
   </xsl:if>
  </xsl:otherwise>
 </xsl:choose>
 </xsl:template>

<xsl:template match="show" mode="microlist">
              <xsl:variable name="date" select="showinfo/airdate"/>
              <xsl:variable name="year"><xsl:value-of select="substring($date,1,4)"/></xsl:variable>
              <xsl:variable name="month"><xsl:value-of select="substring($date,6,2)"/></xsl:variable>
              <xsl:variable name="monthname">dasd</xsl:variable>
              <xsl:variable name="day"><xsl:value-of select="substring($date,9,2)"/></xsl:variable>
              <li><a href="/shows/{$year}/{$month}/{$day}/">
    <span class="blurbshowtopic"><xsl:value-of select="showinfo/topic"/></span>
    <span class="blurbshowdate"><xsl:value-of select="$monthname"/>&#160;<xsl:value-of select="$day"/>,&#160;<xsl:value-of select="$year"/></span>
</a>
              </li>
</xsl:template>


  <xsl:template match="pastshows">
    <div id="pastshows" class="maincontent">
    <xsl:choose>
    <xsl:when test="@title">
        <h1><xsl:value-of select="@title"/></h1>    
    </xsl:when>
    <xsl:otherwise>
            <h1>Recent Shows</h1>
    </xsl:otherwise>
    </xsl:choose>
      <div class="contentbody">
       <xsl:apply-templates mode="list"/>
      </div>
      <div class="footer"><span><a href="/shows/">More Shows in the Archive</a></span></div>
    </div>
    <p class="textonly"/>
    <hr class="textonly"/>
    <p class="textonly"/>
  </xsl:template>

<xsl:template match="show"><xsl:apply-templates select="section"/></xsl:template>





  <xsl:template match="audioobject" mode="quicklink">
    <xsl:variable name="medialinkdata" select="audiodata/@fileref"/>
    <xsl:variable name="medialinktext" select="objectinfo/title"/>
    <span class="recording">[ <a href="{$medialinkdata}" title="Listen to the show recording">
      <xsl:choose>
       <xsl:when test="$medialinktext"><xsl:value-of select="$medialinktext"/></xsl:when>
       <xsl:otherwise>Audio</xsl:otherwise>
      </xsl:choose></a>
 ]</span>
  </xsl:template>

  <xsl:template match="show" mode="list">
    <div class="show">
      <xsl:apply-templates select="showinfo" mode="list">
      </xsl:apply-templates>
    </div>
    <p class="textonly"><br /><br /></p>
  </xsl:template>

  <xsl:template match="showinfo">
    <xsl:param name="hasContent"/>
    <xsl:variable name="airdate">asss</xsl:variable>
    <h1>GeekSpeak for <xsl:value-of select="$airdate"/></h1>
    <h2><a href="."><xsl:value-of select="topic"/></a></h2>

    <div class="abstract"><xsl:apply-templates select="abstract" /></div>

  </xsl:template>
  

  <xsl:template match="showinfo" mode="list">
    <xsl:param name="hasContent"/>
    <xsl:param name="hasAudio"/>
    <xsl:variable name="year" select="substring(airdate,1,4)"/>
    <xsl:variable name="month" select="substring(airdate,6,2)"/>
    <xsl:variable name="day" select="substring(airdate,9,2)"/>
    <xsl:variable name="airdate">asd</xsl:variable>
    <xsl:variable name="linkdate"
        select="concat('/shows/',$year,'/',$month,'/',$day)"/>
    <h2><a href="{$linkdate}/"><xsl:value-of select="topic"/></a></h2>
    <div class="body">
        

        <span class="subtitle date"><xsl:value-of select="$airdate"/></span>
        <br class="textonly"/>
        <xsl:apply-templates select="abstract/*">
          <xsl:with-param name="hasContent" select="$hasContent"/>
          <xsl:with-param name="linkprefix" select="concat($linkdate,'/')"/>
        </xsl:apply-templates>
        <xsl:if test="$hasContent">
          <span class="readmore">[ <a href="{$linkdate}/"
                title="Read more about this show">More Information</a> ]</span>
        </xsl:if>

    </div>
  </xsl:template>

<xsl:template match="abstract"><xsl:apply-templates select="*"></xsl:apply-templates></xsl:apply-templates>


  <xsl:template match="section"><xsl:apply-templates></xsl:apply-templates>

  </xsl:template>

  <xsl:template match="ulink"> "<xsl:apply-templates/>":<xsl:value-of select="@url"/> </xsl:template>

  <xsl:template match="acronym"> <xsl:apply-templates/>(<xsl:value-of select="@expansion"/>) </xsl:template>

  <xsl:template match="abbrev"> <xsl:apply-templates/>(<xsl:value-of select="@expansion"/>) </xsl:template>

  <xsl:template match="orderedlist[title]">
    <xsl:param name="depth" select="number(4)"/>
    <div class="orderedlist">
      <xsl:element name="h{$depth}">
        <xsl:attribute name="class">listheader</xsl:attribute>
        <xsl:value-of select="title"/>
      </xsl:element>
      <ol>
        <xsl:apply-templates select="listitem"><xsl:with-param name="depth" select="$depth + 1"/></xsl:apply-templates>
      </ol>
    </div>
  </xsl:template>

  <xsl:template match="orderedlist">
    <xsl:param name="depth" select="number(4)"/>    
    <xsl:apply-templates select="listitem"><xsl:with-param name="depth" select="$depth + 1"/></xsl:apply-templates>

  </xsl:template>

<xsl:template match="itemizedlist[title]">
h3. <xsl:value-of select="title"/>
<xsl:value-of select="$newline" /><xsl:value-of select="$newline" />
<xsl:apply-templates select="listitem"></xsl:apply-templates>
</xsl:template>

<xsl:template match="itemizedlist">
<xsl:apply-templates select="listitem"></xsl:apply-templates>
</xsl:template>

<xsl:template match="literallayout">--pre--<xsl:apply-templates></xsl:apply-templates>--/pre--</xsl:template>

<xsl:template match="listitem">* <xsl:apply-templates></xsl:apply-templates><xsl:value-of select="$newline" /></xsl:template>

<xsl:template match="blockquote">
bq. <xsl:apply-templates></xsl:apply-templates>
</xsl:template>

<xsl:template match="para">
<xsl:apply-templates></xsl:apply-templates>

</xsl:template>

<!--xsl:template match="text()"><xsl:value-of select="normalize-space(.)"/></xsl:template--> 

  <xsl:template match="title"/><!-- Suppress automatic display -->

  <xsl:template match="imageobject" mode="teaser">
    <xsl:param name="linkprefix"/>
    <xsl:param name="hasContent"/>
    <xsl:variable name="imagedata" select="imagedata[position() = 1]"/>
    <xsl:variable name="width" select="substring-before($imagedata/@width, 'px')"/>
    <xsl:variable name="height" select="substring-before($imagedata/@depth, 'px')"/>

    <xsl:choose>
      <xsl:when test="$hasContent">
        !<xsl:value-of select="$imagedata/@fileref"/>(<xsl:value-of select="textobject/phrase"/>)!:<xsl:value-of select="$linkprefix"/>
      </xsl:when>
      <xsl:otherwise>
        <img src="{$linkprefix}{$imagedata/@fileref}"
           alt="{../objectinfo/title}" width="320"/>
        <!--img src="{$linkprefix}{$imagedata/@fileref}"
           alt="{../objectinfo/title}" width="{$width}" height="{$height}"/-->
      </xsl:otherwise>
    </xsl:choose>
  </xsl:template>

  <xsl:template match="mediaobject[imageobject]">
    <xsl:variable name="image" select="imageobject[position() = 1]"/>
    <xsl:variable name="imagedata" select="$image/imagedata[position() = 1]"/>
    <xsl:variable name="width" select="substring-before($imagedata/@width, 'px')"/>
    <xsl:variable name="height" select="substring-before($imagedata/@depth, 'px')"/>
    <xsl:choose>
      <xsl:when test="count(imageobject) = 1">
!<xsl:value-of select="$imagedata/@fileref"/>(<xsl:value-of select="textobject/phrase"/>)!
      </xsl:when>
      <xsl:otherwise>
!<xsl:value-of select="$imagedata/@fileref"/>(<xsl:value-of select="textobject/phrase"/>)!:imageobject[position() = 2]/imagedata/@fileref
      </xsl:otherwise>
    </xsl:choose>
    <xsl:apply-templates select="caption/*" mode="caption"/>
  </xsl:template>

  <xsl:template match="abstract/mediaobject">
    <xsl:param name="linkprefix"/>
    <xsl:param name="hasContent"/>
    <xsl:apply-templates select="imageobject[position()=1]" mode="teaser">
      <xsl:with-param name="linkprefix" select="$linkprefix"/>
      <xsl:with-param name="hasContent" select="$hasContent"/>
    </xsl:apply-templates>
  </xsl:template>
  
  

<xsl:template match="para" mode="caption">
<xsl:apply-templates />

</xsl:template>

  <xsl:template match="*" mode="caption"/>

  <xsl:template match="emphasis"><em><xsl:apply-templates/></em></xsl:template>



  <xsl:template match="profiles">
    <div id="profiles" class="maincontent">
      <xsl:if test="@title">
        <h2><xsl:value-of select="@title"/></h2>
      </xsl:if>
      <a href="contact" class="contact">Send a message...</a>
      <xsl:apply-templates/>
    </div>
  </xsl:template>

  <xsl:template match="index/profile">
    <div id="profile" class="maincontent">
      <xsl:apply-templates select="*"/>
    </div>
  </xsl:template>

  <xsl:template match="profile">
    <div class="profile">
      <xsl:apply-templates mode="list">
        <xsl:with-param name="username" select="@username"/>
      </xsl:apply-templates>
    </div>
  </xsl:template>

  <xsl:template match="profileinfo">
    <xsl:param name="username"/>
    <h2><xsl:value-of
        select="concat(firstname,' ',othername,' ',surname)"/></h2>
      <a href="contact" class="contact">Send a message...</a>
    <img src="images/snapshot" width="100" height="145"/>
  </xsl:template>

  <xsl:template match="profileinfo" mode="list">
    <xsl:param name="username"/>
    <h3><a href="../{$username}/"><xsl:value-of
        select="concat(firstname,' ',othername,' ',surname)"/></a></h3>
    <img src="../{$username}/images/snapshot" width="100" height="145"/>
  </xsl:template>

  <xsl:template match="bio" mode="list">
    <xsl:apply-templates/>
  </xsl:template>

  <xsl:template match="bio">
    <xsl:apply-templates/>
  </xsl:template>

</xsl:stylesheet>

