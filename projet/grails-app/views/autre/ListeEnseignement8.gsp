<!DOCTYPE html>
<html>
<head>
<meta name="layout" content="main" />
<title>Liste Enseignements</title>
<style type="text/css" media="screen">
#status {
	background-color: #eee;
	border: .2em solid #fff;
	margin: 2em 2em 1em;
	padding: 1em;
	width: 12em;
	float: left;
	-moz-box-shadow: 0px 0px 1.25em #ccc;
	-webkit-box-shadow: 0px 0px 1.25em #ccc;
	box-shadow: 0px 0px 1.25em #ccc;
	-moz-border-radius: 0.6em;
	-webkit-border-radius: 0.6em;
	border-radius: 0.6em;
}


footer{
background: #2c6596;
height : 2em;
padding-top : 1em;
}

#sondage {
	margin-left : 10px;
}

.ie6 #status {
	display: inline;
	/* float double margin fix http://www.positioniseverything.net/explorer/doubled-margin.html */
}

#status ul {
	font-size: 0.9em;
	list-style-type: none;
	margin-bottom: 0.6em;
	padding: 0;
}

#status li {
	line-height: 1.3;
}

#status h1 {
	text-transform: uppercase;
	font-size: 1.1em;
	margin: 0 0 0.3em;
}

#page-body {
	margin: 2em 1em 1.25em 18em;
}

h2 {
	margin-top: 1em;
	margin-bottom: 0.3em;
	font-size: 1em;
}

p {
	line-height: 1.5;
	margin: 0.25em 0;
}

#controller-list ul {
	list-style-position: inside;
}

#controller-list li {
	line-height: 1.3;
	list-style-position: inside;
	margin: 0.25em 0;
}

@media screen and (max-width: 480px) {
	#status {
		display: none;
	}
	#page-body {
		margin: 0 1em 1em;
	}
	#page-body h1 {
		margin-top: 0;
	}
}

#h1 {
	text-align: center;
	margin-top: 50px;
	margin-bottom: 30px;
	font-size: 18pt;
	margin-left: 100px;
	font-style: italic;
}

#login {
	text-align: center;
	margin-bottom: 20px;
	margin-left: 25px;
}

#mdp {
	text-align: center;
	margin-bottom: 20px;
}

#bouton {
	text-align: center;
	margin-left: 100px;
}

#tableau {
background : #cccccc; 
}
#home {
text-align : center ;
}

#texte {
text-align : center ;
}

#utilisateur {
text-align : center ;
}


</style>
</head>


	
<body>

	<div id="grailsLogo" role="banner">
		<a href="${createLink(uri: '/')}"><asset:image src="Test3.png"
				alt="Test" /></a>
	</div>
	<a href="#page-body" class="skip"><g:message
			code="default.link.skip.label" default="Skip to content&hellip;" /></a>


	<table id = tableau>

   <tr>

       <td id=home class="nav" role="navigation" ><a class="home" href="${createLink(uri: '/')}"><g:message
						code="default.home.label" /></a></td>

       <td id = texte ><font face="arial"> <font size="4pt">
						<b> LISTE ENSEIGNEMENT</b>
				</font></font></td>

       <td id=utilisateur class="nav" role="navigation"  ><a
				href="${createLink(uri: 'http://localhost:8080/airports')}"><g:message
						code="Utilisateur" /></a></td>

   </tr>

</table>
		
			<h1 id =sondage ><FONT color="black">Sondages </FONT><FONT color="blue">à venir </FONT></h1>  
			
			
			<a href="#list-airport" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><font face="arial"> <font size="4pt"><b> Mathématiques</b></font></font></li>
				<li><a  href="${createLink(uri: 'http://localhost:8080/airports')}" ><g:message code="Modifier"/></a></li> 
			</ul>
			</div>
		
		<a href="#list-airport" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><font face="arial"> <font size="4pt"><b> Informatique</b></font></font></li> 
				<li><a  href="${createLink(uri: 'http://localhost:8080/airports')}" ><g:message code="Modifier"/></a></li> 
			</ul>
			</div>
			
			
			<h1 id=sondage><FONT color="black">Sondages </FONT><FONT color="green">en cours </FONT></h1> 
			
			<a href="#list-airport" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><font face="arial"> <font size="4pt"><b> Structure</b></font></font></li> 
				<li><a  href="${createLink(uri: 'http://localhost:8080/airports')}" ><g:message code="Modifier"/></a></li> 
		
			</ul>
			</div>
		
		<a href="#list-airport" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><font face="arial"> <font size="4pt"><b> Mécanique des fluides</b></font></font></li> 
				<li><a  href="${createLink(uri: 'http://localhost:8080/airports')}" ><g:message code="Modifier"/></a></li> 
			
			</ul>
			</div>
			
			
			
			<h1 id = sondage><FONT color="black">Sondages </FONT><FONT color="red"> terminés </FONT></h1> 
			
			<a href="#list-airport" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><font face="arial"> <font size="4pt"><b> Economie-Gestion</b></font></font></li> 
		
			</ul>
			</div>
		
		<a href="#list-airport" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><font face="arial"> <font size="4pt"><b> Sport </b></font></font></li> 
				
			</ul>
			</div>
			
			<h1 id = sondage><FONT color="black">Enseignements sans sondage </FONT></h1>  
			
			
			<a href="#list-airport" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><font face="arial"> <font size="4pt"><b> Automatique</b></font></font></li>
				<li><a  href="${createLink(uri: 'http://localhost:8080/airports')}" ><g:message code="Modifier"/></a></li> 
				<li><a  href="${createLink(uri: 'http://localhost:8080/airports')}" ><g:message code="Créer sondage"/></a></li> 
			</ul>
			</div>
		
		<footer>
	<div id = sondage>  leclubdes5 - tous droits réservés </div>
	</footer>		
		

	<div id="page-body" role="main"></div>
</body>
</html>