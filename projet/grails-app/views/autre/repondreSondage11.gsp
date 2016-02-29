<!DOCTYPE html>
<html>
<head>
<meta name="layout" content="main" />
<title>Répondre au sondage</title>
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

#form {
	margin-top: 30px;
	margin-left: 35%;
}


footer{
background: #48b863;
height : 2em;
padding-top : 1em;
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

#banniere {
	max-width: 960px;
	height: auto;
}

#bouton {
	text-align: center;
	margin-top: 30px;
}
</style>
</head>
<body>

	<div id="banniere" role="banner">
		<a href="${createLink(uri: '/')}"><asset:image src="Test.png"
				alt="Test" /></a>
	</div>
	<a href="#page-body" class="skip"><g:message
			code="default.link.skip.label" default="Skip to content&hellip;" /></a>


	<a href="#page-body" class="skip"><g:message
			code="default.link.skip.label" default="Skip to content&hellip;" /></a>



	<a href="#list-airport" class="skip" tabindex="-1"><g:message
			code="default.link.skip.label" default="Skip to content&hellip;" /></a>
		<table id = tableau>

   <tr>

       <td id=home class="nav" role="navigation" ><a class="home" href="${createLink(uri: '/')}"><g:message
						code="default.home.label" /></a></td>

       <td id = texte ><font face="arial"> <font size="4pt">
						<b> REPONDRE AU SONDAGE </b>
				</font></font></td>

       <td id=utilisateur class="nav" role="navigation"  ><a
				href="${createLink(uri: 'http://localhost:8080/airports')}"><g:message
						code="Utilisateur" /></a></td>

   </tr>

</table>

	<form action="note" id="form">
		Note : <input name="note" type="radio" value="1"> 1 <input
			name="note" type="radio" value="2"> 2 <input name="note"
			type="radio" value="3"> 3 <input name="note" type="radio"
			value="4"> 4 <input name="note" type="radio" value="5">
		5 <input name="note" type="radio" value="6"> 6


	</form>
	<p id="bouton">
		<input type="submit" value="Envoyer">
	</p>

<footer>
	<div id = sondage>  leclubdes5 - tous droits réservés </div>
	</footer>


	<div id="page-body" role="main"></div>
</body>
</html>
