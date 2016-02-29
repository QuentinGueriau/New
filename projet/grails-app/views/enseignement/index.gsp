<!DOCTYPE html>
<html>
<head>
<meta name="layout" content="main" />

<title>Liste Enseignements</title>

</head>
<body>
 
<g:if test="${session.user?.droit == true}">

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

#home {
	text-align: left;
}

footer{
background: #2c6596;
height : 2em;
padding-top : 1em;
}

#sondage {
	margin-left : 10px ;
}

#texte {
	text-align: center;
}

#utilisateur {
	text-align: right;
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
text-align : left ;
}

#texte {
text-align : center ;
}

#utilisateur {
text-align : right ;
}
</style>

<div id="grailsLogo" role="banner">
		<a href="${createLink(uri: '/')}"><asset:image src="Test3.png"
				alt="Test" /></a>
	</div>
	<a href="#page-body" class="skip"><g:message
			code="default.link.skip.label" default="Skip to content&hellip;" /></a>
			
	<style>
	#home {
	
	}
	
	#texte{
	margin-left : 28%;
	}
	
	#utilisateur {
	margin-left : 28%;
	
	}
	
	#tableau {
background : #cccccc; 
}
#home {
text-align : left ;
}

#texte {
text-align : center ;
}

#utilisateur {
text-align : right ;
}
	
	</style>

	<table id = tableau>

   <tr>

       <td id=home class="nav" role="navigation" ><a class="home" href="${createLink(uri: '/')}"><g:message
						code="default.home.label" /></a></td>

       <td id = texte ><font face="arial"> <font size="4pt">
						<b> LISTE ENSEIGNEMENT</b>
				</font></font></td>

       <td id=utilisateur class="nav" role="navigation"  ><a
				href="${createLink(uri: '/utilisateur/edit/'+session.user.id)}"><g:message
						code="${session.user?.prenom+" "+session.user?.nom}" /></a></td>
						
		<td id=utilisateur class="nav" role="navigation"  ><a
				href="${createLink(uri: '/utilisateur/logout')}"><g:message
						code="Deconnexion" /></a></td>

   </tr>

</table>
	
		<div class="nav" role="navigation">
			<ul>
				<li><a  href="${createLink(uri: '/enseignement/')}"><g:message code="Liste Enseignements"/></a></li> 
				<li><a  href="${createLink(uri: '/utilisateur/create')}" ><g:message code="Créer Utilisateur"/></a></li> 
				<li><a  href="${createLink(uri: '/enseignement/create')}" ><g:message code="Créer Enseignement"/></a></li> 
			</ul>
		</div>
		
		<h1 id = sondage><FONT color="black">Enseignements sans sondage </FONT></h1>  
			
		<g:each in="${enseignementInstanceList}" status="i" var="enseignementInstance">
			<g:if test="${enseignementInstance.sondage[0]==null  }"> 		
				
				<div class="nav" role="navigation">
					<ul>
						<li><font face="arial"> <font size="4pt"><b> ${enseignementInstance?.nom}</b></font></font></li> 
						<li><a  href="${createLink(uri: '/enseignement/edit/'+enseignementInstance?.id)}" ><g:message code="Modifier"/></a></li>
						<li><a  href="${createLink(uri: '/sondage/create/'+enseignementInstance?.id)}" ><g:message code="Créer sondage"/></a></li>
					</ul>
				</div>
			</g:if>
		</g:each>
			
		
			<h1 id = sondage><FONT color="black">Sondages </FONT><FONT color="blue">à venir </FONT></h1> 
			


		<g:each in="${sondageInstanceList}" status="i" var="sondageInstance">
					
			<g:if test="${sondageInstance?.dateDebut?.after(new Date()) }"> 		

				<div class="nav" role="navigation">
					<ul>
						<li><font face="arial"> <font size="4pt"><b> ${sondageInstance?.enseignement.nom}</b></font></font></li> 
						<li><a  href="${createLink(uri: '/enseignement/edit/'+sondageInstance?.enseignement.id)}" ><g:message code="Modifier"/></a></li>
					</ul>
				</div>
			</g:if>
		</g:each>
			
						
			<h1 id = sondage><FONT color="black">Sondages </FONT><FONT color="green">en cours </FONT></h1> 
			
			<g:each in="${sondageInstanceList}" status="i" var="sondageInstance">
					
			<g:if test="${sondageInstance?.dateDebut?.before(new Date()) }"> 		
			<g:if test="${sondageInstance?.dateFin?.after(new Date()) }"> 
			
			
				<div class="nav" role="navigation">
					<ul>
						<li><font face="arial"> <font size="4pt"><b> ${sondageInstance?.enseignement.nom}</b></font></font></li> 
						<li><a  href="${createLink(uri: '/sondage/edit/'+sondageInstance?.enseignement.id)}" ><g:message code="Modifier"/></a></li>
				</ul>
				</div>
			</g:if>
			</g:if>
		</g:each>
			
			
			
			
			
			<h1 id = sondage><FONT color="black">Sondages </FONT><FONT color="red"> terminés </FONT></h1> 
			
			<g:each in="${sondageInstanceList}" status="i" var="sondageInstance">
					
			<g:if test="${sondageInstance?.dateDebut?.before(new Date()) }"> 		
			<g:if test="${sondageInstance?.dateFin?.before(new Date()) }"> 
			
			
				<div class="nav" role="navigation">
					<ul>
						<li><font face="arial"> <font size="4pt"><b> ${sondageInstance?.enseignement.nom}</b></font></font></li> 
				</ul>
				</div>
			</g:if>
			</g:if>
		</g:each>
			
			
			
			
	<footer>
	<div id = sondage>  Le Club des 5 - tous droits réservés</div>
	</footer>		


</g:if>

	
</body>
</html>
