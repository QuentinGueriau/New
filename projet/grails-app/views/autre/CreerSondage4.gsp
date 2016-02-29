<!DOCTYPE html>
<html>
<head>
<meta name="layout" content="main" />
<title>Créer Sondage</title>
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

footer {
	background: #2c6596;
	height: 2em;
	padding-top: 1em;
}

#sondage {
	margin-left: 10px;
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
</style>

<script>
	function verif() {
		var date_pas_sure = document.getElementById('valeur').value;
		var format = /^(\d{1,2}\/){2}\d{4}$/;
		if (!format.test(date_pas_sure)) {
			alert('Date non valable !')
		} else {
			var date_temp = date_pas_sure.split('/');
			date_temp[1] -= 1; // On rectifie le mois !!!
			var ma_date = new Date();
			ma_date.setFullYear(date_temp[2]);
			ma_date.setMonth(date_temp[1]);
			ma_date.setDate(date_temp[0]);
			if (ma_date.getFullYear() == date_temp[2]
					&& ma_date.getMonth() == date_temp[1]
					&& ma_date.getDate() == date_temp[0]) {
				alert('Date valable !');
			} else {
				alert('Date non valable !');
			}
		}
	}
</script>

</head>

<body>
	<form action="javascript:verif()">
		<div style="margin: 50px 0 0 50px">
			<label for="valeur">Entrez un date au format jj/mm/aaaa : </label> <input
				type="text" id="valeur" /><br /> <input type="submit"
				value="Vérifier la date" />
		</div>
	</form>
</body>
</html>
</head>



<body>

	<div id="grailsLogo" role="banner">
		<a href="${createLink(uri: '/')}"><asset:image src="Test3.png"
				alt="Test" /></a>
	</div>
	<a href="#page-body" class="skip"><g:message
			code="default.link.skip.label" default="Skip to content&hellip;" /></a>

	<style>
#home {
	
}

#texte {
	margin-left: 28%;
}

#utilisateur {
	margin-left: 28%;
}

#bouton {
	margin-top: 30px;
}
</style>

	<table id=tableau>

		<tr>

			<td id=home class="nav" role="navigation"><a class="home"
				href="${createLink(uri: '/')}"><g:message
						code="default.home.label" /></a></td>

			<td id=texte><font face="arial"> <font size="4pt">
						<b> CREER SONDAGE</b>
				</font></font></td>

			<td id=utilisateur class="nav" role="navigation"><a
				href="${createLink(uri: 'http://localhost:8080/airports')}"><g:message
						code="Utilisateur" /></a></td>

		</tr>

	</table>

	<h1>
		<FONT color="black">Choix date </FONT><FONT color="green">début
		</FONT>
	</h1>

	<input type="date" name="debut" oninput="verif()">




	<h1>
		<FONT color="black">Choix date </FONT><FONT color="red">fin </FONT>
	</h1>

	<input type="date" name="fin" oninput="verif()">


	<p id="bouton">
		<input type="submit" value="Envoyer">
	</p>
	<footer>
		<div id=sondage>leclubdes5 - tous droits réservés</div>
	</footer>



	<div id="page-body" role="main"></div>
</body>
</html>
