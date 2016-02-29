<!DOCTYPE html>
<html>
<head>
<meta name="layout" content="main" />
<title>Créer un utilisateur</title>
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
	margin-left: 30%;;
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

footer {
	background: #2c6596;
	height: 2em;
	padding-top: 1em;
}

#utilisateur {
	text-align: center;
}

#banniere {
	max-width: 960px;
	height: auto;
}

#bouton {
	margin-left:100px;
	margin-top: 30px;
}
</style>
</head>
<body>

	<div id="banniere" role="banner">
		<a href="${createLink(uri: '/')}"><asset:image src="Test3.png"
				alt="Test" /></a>
	</div>
	
	<table id = tableau>

   <tr>

       <td id=home class="nav" role="navigation" ><a class="home" href="${createLink(uri: '/')}"><g:message
						code="default.home.label" /></a></td>

       <td id = texte ><font face="arial"> <font size="4pt">
						<b> DASHBOARD ADMINISTRATION</b>
				</font></font></td>

       <td id=utilisateur class="nav" role="navigation"  ><a
				href="${createLink(uri: '/utilisateur/edit/'+session.user.id)}"><g:message
						code="${session.user?.prenom+" "+session.user?.nom}" /></a></td>
						
		<td id=utilisateur class="nav" role="navigation"  ><a
				href="${createLink(uri: '/utilisateur/logout')}"><g:message
						code="Deconnexion" /></a></td>

   </tr>

</table>
	
			<div id="form">
			<g:form  controller="utilisateur" action="save">
			<p>
				<label for="name">Nom :</label> <input id="nom" name="nom" required />
			</p>
			<p>
				<label for="name">Prénom :</label> <input id="prenom" name="prenom"
					required />
			</p>
				
			<p>
				<label for="droit">
				<g:message code="utilisateur.droit.label" default="Administrateur :" />
				
			</label>
			<g:checkBox name="droit" value="${utilisateurInstance?.droit}" />
			</p>
	
	
		
		<p id="bouton">
			<input type="submit" value="Envoyer"> <input type="reset"
				value="Effacer">
		</p>
			
		</g:form>
		</div>
		
	</body>
</html>
