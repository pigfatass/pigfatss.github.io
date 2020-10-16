<?xml version="1.0" encoding="UTF-8"?>

<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
<xsl:template match="/">
<html>
      <head>

	<style type="text/css"> 

	   .CatalogueTable { border-collapse: collapse; 
                      border-spacing: 0; 
		      width: 100%; 
		      border: 1px solid #ddd; 
		      } 

	   .CatalogueTable th { background-color:#9acd32; 
			 font-weight:bold; 
  			 text-align: center; 
			 color:white; 
			 text-shadow: 1px 1px 4px black; 
			 padding: 5px; 
			 border: 0.5px solid #ddd; 
			 } 

	   .CatalogueTable td { font-family:arial narrow; 
			 text-align: center; 
			 padding: 2px; 
			 border: 0.5px solid #BDB76B; } 

	   .CatalogueTable tr:nth-child(even) { background-color: #CCCC99; } 
	
	</style>

     </head>


     <body>
	   <table style="border-collapse: collapse; 
                      border-spacing: 0; 
		      width: 100%; 
		      border: 0px solid #ddd;" 
		      > 

		<tr>
			<td style="background-color:aqua; 
			           font-weight:bold; 
				   font-size:58;
  			           text-align: center; 
			           color:yellow; 
			           text-shadow: 2px 2px 8px red; 
			           padding: 28px; 
			           border: 0px solid #ddd;">
                       
                            Bigfool Science &amp; Technology
                        </td>
 		</tr>

		<tr>
<!--
		        <td style="background-color:aqua; 
				   text-align: center;
				   padding: 8px;">

			   123 Bigfool St <br />
		           Indianapolis, IN 45678 <br />
			   Tel: (317)759-XXXX <br />
			   eMail: forexampleonly@gmail.com <br />
			</td>
-->
		</tr>
	</table> 

      

	
	<table class="CatalogueTable">

	   <tr>
		<th>NAME</th>
		<th>COMPARISON</th>
		<th>MixVol</th>
		<th>DESCRIPTION</th>
		<th>COLOR</th>
		<th>WORKTIME(min)</th>
		<th>PEAK</th>
		<th>FIXTURE(min)</th>
		<th>TENSILE(psi)</th>
		<th>ELONGATION(%)</th>
		<th>SHEAR(psi)</th>
		<th>VISCOSITY(kcP)</th>
	   </tr>

	  <xsl:for-each select="product/category/adhesive">
	   <tr>
		<td style="color:MidnightBlue; font-family:times; font-weight:bold">
                    <xsl:value-of select="name"/></td>
		<td><xsl:value-of select="similar"/></td>
		<td><xsl:value-of select="mixing"/></td>
		<td><xsl:value-of select="description"/></td>
		<td><xsl:value-of select="color"/></td>
		<td><xsl:value-of select="worktime"/></td>
		<td><xsl:value-of select="peak"/></td>
		<td><xsl:value-of select="fixture"/></td>
		<td><xsl:value-of select="tensile"/></td>
		<td><xsl:value-of select="elongation"/></td>
		<td><xsl:value-of select="shear"/></td>
		<td><xsl:value-of select="viscosity"/></td>
	  </tr>

	 </xsl:for-each>

	</table>

	<table style="border-collapse: collapse; 
                      border-spacing: 0; 
		      width: 100%; 
		      border: 0px solid #ddd;" 
		      > 
		<tr>
			<td> <br />
			    <ul style="list-style-type:square;">

			    <li>Tradenames mentioned in COMPARISON columns belong to corresponding 
			     business organizations. 
                             Bigfool Science &amp; Technology (hereinafter BFST) does 
			     not affilate with any said business organizations.</li> 
			     
			    <li>Existing valid patents, such as the one related to 3M DP8110NS, 
			     may exclude BFST from making use of certain raw materials for 
			     the same subject matters; Meanwhile, BFST is trying to eliminate the
			     use of phthalates, be their molecular weight low or high, which means 
			     that a BFST product might not be identical to a compared product if
			     said compared product contains any phthalate.  
			     However, great efforts have been made to find substitutes which make 
                             "COMPARISON" possible.</li>
		
			    <li>Technical data and information is typical and representative only 
			     and should not be used for any specification purpose. Testing results
			     can vary significantly depening on temperature, mass, and age of products.
			     Unless otherwise specified, a curing profile is based on 10g mass of fresh 
			     sample at 23C.</li>
	
			    <li>The following products are tested in 30g mass: MAHT530, MAHT560, 
			     MAGP433; MAHT245; MAHT290; MAHT230LS; MAHT245LS; MALS125; MAUR550;
 			     MAHT215UR; MAHT230UR</li>

			    <li>The following products are tested in 100g mass: MAHT590</li>

			    </ul>
                       </td>
		</tr>
		
	   </table> <br />

      

     </body>

</html>
</xsl:template>
</xsl:stylesheet>