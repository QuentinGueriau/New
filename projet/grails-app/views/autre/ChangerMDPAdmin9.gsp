<!DOCTYPE html>
<html>
<head>
<meta name="layout" content="main" />
<title>Changer mot de passe</title>
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

#mdp2 {
	text-align: center;
	margin-bottom: 20px;
}

#mdp {
	text-align: center;
	margin-bottom: 20px;
	margin-left: 90px;
	margin-top: 30px;
}

#bouton {
	text-align: center;
	margin-left: 200px;
}

footer {
	background: #2c6596;
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
</head>
<body>

	<div id="banniere" role="banner">
		<a href="${createLink(uri: '/')}"><asset:image src="Test3.png"
				alt="Test" /></a>
	</div>
	<a href="#page-body" class="skip"><g:message
			code="default.link.skip.label" default="Skip to content&hellip;" /></a>


	<a href="#page-body" class="skip"><g:message
			code="default.link.skip.label" default="Skip to content&hellip;" /></a>



	<a href="#list-airport" class="skip" tabindex="-1"><g:message
			code="default.link.skip.label" default="Skip to content&hellip;" /></a>
	<table id=tableau>

		<tr>

			<td id=home class="nav" role="navigation"><a class="home"
				href="${createLink(uri: '/')}"><g:message
						code="default.home.label" /></a></td>

			<td id=texte><font face="arial"> <font size="4pt">
						<b> CHANGER MOT DE PASSE</b>
				</font></font></td>

			<td id=utilisateur class="nav" role="navigation"><a
				href="${createLink(uri: 'http://localhost:8080/airports')}"><g:message
						code="Utilisateur" /></a></td>

		</tr>

	</table>

	<form action="cgi/form.cgi">
		<p id="mdp">
			<label for="pwd1">Mot de passe :</label> <input type=password
				id="pwd1" name="password" required oninput="checkPassword()"
				placeholder="Entrer votre nouveau mot de passe" />
		</p>

		<p id="mdp2">
			<label for="pwd2">Confirmer le mot de passe :</label> <input
				type=password id="pwd2" required oninput="checkPassword()"
				placeholder="Confirmer votre nouveau mot de passe" />
		</p>

		<p id="bouton">
			<input type="submit" value="Envoyer"> <input type="reset"
				value="Effacer">
		</p>
	</form>

	<script>
		function checkPassword() {
			var password1 = document.getElementById('pwd1');
			var password2 = document.getElementById('pwd2');
			if (password1.value != password2.value) {
				password2.setCustomValidity
				{
					'Les mots de passe ne sont pas identiques'
				}

			} else {
				password2.setCustomValidity
				{
					''
				}
			}
		}
	</script>

	<footer>
		<div id=sondage>leclubdes5 - tous droits réservés</div>
	</footer>


	<div id="page-body" role="main"></div>
</body>
</html>
