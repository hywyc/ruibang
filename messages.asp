<!--#include file="conn.asp"--><!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<link rel="stylesheet"  href="style.css" type="text/css" />
<head>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312" name="keywords" content="caster, castor,gas spring, metal sheet stamping parts,home care bed,medical bed,heath care bed,wheelchair,metal works,furniture components,hardware products,stainless steel product,aluminium extrusion｜http://www.ruibang.hk"/>
<meta content="caster, castor,gas spring, metal sheet stamping parts,home care bed,medical bed,heath care bed,wheelchair,metal works,furniture components,hardware products,stainless steel product,aluminium extrusion｜http://www.ruibang.hk" name="description"></meta>
<title><%=new_title%></title>
</head>

<body>

<div id="container">
<!--    header  -->
	<div id="header">
		<div id="logo"><img src="image/logo.png" alt="Caster Provider" /></div>
		<div id="slogan">
			<h1>RUIBANG HARDWARE TOOLS</h1><span>Provides Casters &amp; Custom Metal Works &amp; Healthcare Bed Parts &amp; Gas Springs &amp; Sliders
</span>
		</div>
		<div style="float:right; margin-right:20px; margin-top:85px; font-family:Arial, Helvetica, sans-serif; font-size:14px; color:#33f;">Email:  info@ruibang.hk</div>
		<div class="clear-both"></div>
	</div>
	<!-- end header   -->
	
	<!-- smooth menu   -->
		<div id="smoothmenu1" class="ddsmoothmenu">
			<ul>
				<li><a href="index.html">Home</a></li>
				<li><a  href="product.html">Products</a></li>
				<li><a class="current-item" href="inquiry.html" rel="nofollow">Inquiry</a></li>
				<li><a href="news.html">News</a></li>
				<li><a href="equipment.html" rel="nofollow">Equipment</a></li>
				<li><a href="jobs.html" rel="nofollow">Jobs</a></li>
				<li><a href="contact.html" rel="nofollow">Contacts</a></li>
			</ul>
			<div class="clear-both"></div>
		</div>
	<!-- end smooth menu  -->
	<div class="header_return">
		<a href="index.html">Home</a> &gt; <strong>Inquiry</strong>
	</div>  
	
	
	<div id="content-contain">
	
		<div class="left-bar">
			<div class="left-box-top">Quick Catalog</div>
			<div class="left-box">
				<h3>Casters</h3>
				<ul>
					<li><a href="heavy-duty-casters.html">Heavy Duty Caster</a></li>
					<li><a href="light-duty-casters.html">Light-Duty Caster</a></li>
					<li><a href="medical-appliance-casters.html">Medical Appliance Caster</a></li>
					<li><a href="industrial-casters.html">Industrial Caster</a></li>
					<li><a href="#">Shopping Trolleys Caster</a></li>
				</ul>
				
				<h4><a href="Healthcare-Bed-Components.html">Healthcare Bed Components</a></h4>
				<h4><a href="Custom-metal-works.html">Custom Metal Works</a></h4>
				<h4><a href="gas-springs.html">Gas Springs</a></h4>
				<h4><a href="Hardware-Sliders.html">Hardware Sliders</a></h4>		
			</div>
		</div>
		
		<div class="right-bar">
			<h4 style="font-family:Arial, Helvetica, sans-serif; font-size:16px; color:#0033FF; padding-top:20px; padding-left:10px;">Ruibang support - Request received</h4>
			<p style="font-family:Arial, Helvetica, sans-serif; font-size:14px; color:#333; padding:10px;">Your inquiry has been sent to our customer service representatives. And we will contact within one business day.</p>
		</div>
		
		<div class="clear-both"></div>
	</div>
	
<!-- footer  -->
<div id="footer">
		<div id="footer-left">
		<a href="index.html">Home</a> &nbsp; | &nbsp; <a href="product.html">Products</a> &nbsp; | &nbsp; <a href="news.html">News</a> &nbsp; | &nbsp; <a href="contact.html" rel="nofollow">Contact</a> 
		</div>
		
		<div id="footer-right">
		Copyright(C) 2009-2013 Ruibang Hardware Tools Co.,Ltd. All rights reserved.
		</div>
		<div class="clear-both"></div>
</div>
<!-- end footer -->

</div>


<%
if request("action")="ok" then

	
   set rs=Server.createObject("adodb.recordset")
strsql="select * from gutbooks"
rs.open strsql,conn,3,3

    rs.addnew
	rs("pn1")=request("pn1")
	rs("pn_comp")=request("pn_comp")
	rs("rod")=request("rod")
	rs("tube")=request("tube")
	rs("stroke")=request("stroke")
	rs("extended")=request("extended")
	rs("Short_no")=request("Short_no")
	rs("force")=request("force")
	rs("fittings")=request("fittings")
rs("Comments1")=request("Comments1")
rs("Short_Term")=request("Short_Term")
rs("Long_Term")=request("Long_Term")
rs("First_Delivery")=request("First_Delivery")
rs("Comments2")=request("Comments2")
rs("Company_Name")=request("Company_Name")
rs("Title")=request("Title")
rs("FirstName")=request("FirstName")
rs("LastName")=request("LastName")
rs("JobTitle")=request("JobTitle")
rs("Email")=request("Email")
rs("TelNo")=request("TelNo")
rs("FaxNo")=request("FaxNo")
rs("Address")=request("Address")
rs("Town")=request("Town")
rs("City")=request("City")
rs("County")=request("County")
rs("PostCode")=request("PostCode")
rs("Country")=request("Country")
rs("hear")=request("hear")
	rs("b_time")=date()
rs.update
rs.close
set rs=nothing
	
end if

function ChangeChr(str) 
   ChangeChr=replace(replace(replace(replace(str,"<","&lt;"),">","&gt;"),chr(13),"<br>")," ","&nbsp;") 
end function
%>

</body>
</html>
