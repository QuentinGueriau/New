<!DOCTYPE html>
<html>
<head>
<meta name="layout" content="main" />
<title>Connexion</title>

</head>
<body>
 <g:if test="${session.user == null}">
 
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

#login {
	text-align: center;
	margin-bottom: 20px;
	margin-left: 25px;
	margin-top: 30px;
}

#password {
	text-align: center;
	margin-bottom: 20px;
	margin-left: 25px;
	margin-top: 30px;
}

#mdp {
	text-align: center;
	margin-bottom: 20px;
}

#bouton {
	text-align: center;
	margin-left: 0px;
}

footer {
	background: #c89a1f;
	height: 2em;
	padding-top: 1em;
}

#tableau {
	background: #cccccc;
}

#home {
	text-align: center;
}

#texte {
	text-align: center;
}

#utilisateur {
	text-align: center;
}

#banniere {
	max-width: 960px;
	height: auto;
}
</style>
 
 
	<div id="banniere" role="banner">
		<a href="${createLink(uri: '/')}"><asset:image src="Test4.png"
				alt="Test" /></a>
	</div>
	
	<table id=tableau>

		<tr>

			<td id=home class="nav" role="navigation"><a class="home"
				href="${createLink(uri: '/')}"><g:message
						code="default.home.label" /></a></td>

			<td id=texte><font face="arial"> <font size="4pt">
						<b> CONNEXION</b>
				</font></font></td>

					
		</tr>

	</table>

			


	<g:form controller="utilisateur" action="login"> 
	<p id="login">
		<label for="identifiant">Identifiant :</label> <input id="identifiant"
			name="identifiant" required />
	</p>

	<p id="mdp">
		<label for="pwd1">Mot de passe :</label> <input type=password
			id="pwd1" name="mdp" required " />
	</p>

	<p id="bouton">
		<input type="submit" value="Envoyer">
	</p>
	</g:form>

<p>
<br/>
<br/>
</p>



	<footer>
		<div id=sondage>Le Club des 5 - tous droits réservés</div>
	</footer>
</g:if>
<g:if test="${session.user?.droit == true}">
<g:javascript>
window.location.href = '<g:createLink controller="sondage"  />';
</g:javascript>

</g:if>
<g:if test="${session.user?.droit == false}">	

<g:javascript>
window.location.href = '<g:createLink controller="sondage"  />';
</g:javascript>

</g:if>
	
</body>
</html>
