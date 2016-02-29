<!DOCTYPE html>
<html>
<head>
<meta name="layout" content="main" />
<g:if test="${session.user?.droit == true}">
<title>Dashboard Administration</title>
</g:if>
<g:if test="${session.user?.droit == false}">
<title>Dashboard Elève</title>
</g:if>

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
	
		<a href="#list-airport" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a  href="${createLink(uri: '/enseignement/')}"><g:message code="Liste Enseignements"/></a></li> 
				<li><a  href="${createLink(uri: '/utilisateur/create')}" ><g:message code="Créer Utilisateur"/></a></li> 
				<li><a  href="${createLink(uri: '/enseignement/create')}" ><g:message code="Créer Enseignement"/></a></li> 
			</ul>
		</div>
		
		
			<h1 id = sondage><FONT color="black">Sondages </FONT><FONT color="blue">à venir </FONT></h1> 
			


		<g:each in="${sondageInstanceList}" status="i" var="sondageInstance">
					
			<g:if test="${sondageInstance?.dateDebut?.after(new Date()) }"> 		

				<div class="nav" role="navigation">
					<ul>
						<li><font face="arial"> <font size="4pt"><b> ${sondageInstance?.enseignement.nom}</b></font></font></li> 
						<li><a  href="${createLink(uri: '/sondage/edit/'+sondageInstance?.id)}" ><g:message code="Modifier"/></a></li>
						<li><a  href="${createLink(uri: '/sondage/delete/'+sondageInstance?.id)}" ><g:message code="Supprimer"/></a></li>
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
						<li><a  href="${createLink(uri: '/sondage/edit/'+sondageInstance?.id)}" ><g:message code="Modifier"/></a></li>
						<li><a  href="${createLink(uri: '/sondage/show/'+sondageInstance?.id)}" ><g:message code="Voir"/></a></li>
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
						<li><a  href="${createLink(uri: '/sondage/show/'+sondageInstance?.id)}" ><g:message code="Voir"/></a></li>
						<li><a  href="${createLink(uri: '/sondage/delete/'+sondageInstance?.id)}" ><g:message code="Supprimer"/></a></li>
					</ul>
				</div>
			</g:if>
			</g:if>
		</g:each>
			
			
			
			
	<footer>
	<div id = sondage>  Le Club des 5 - tous droits réservés</div>
	</footer>		


</g:if>
<g:if test="${session.user?.droit == false}">	
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

#sondage {
	margin-left : 10px ;
}

footer{
background: #48b863;
height : 2em;
padding-top : 1em;
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

#form {
	margin-top: 8px;
	margin-left:250px;
}

#submit {
	margin-top:-20px;
	margin-left:250px;
}


</style>
<div id="grailsLogo" role="banner">
		<a href="${createLink(uri: '/')}"><asset:image src="Test.png"
				alt="Test" /></a>
	</div>
			
	<style>
	#home {
	
	}
	
	#texte{
	margin-left : 28%;
	}
	
	#utilisateur {
	margin-left : 28%;
	
	}
	
	</style>

	
	<table id = tableau>

   <tr>

       <td id=home class="nav" role="navigation" ><a class="home" href="${createLink(uri: '/')}"><g:message
						code="default.home.label" /></a></td>

       <td id = texte ><font face="arial"> <font size="4pt">
						<b> DASHBOARD ELEVE</b>
				</font></font></td>

       <td id=utilisateur class="nav" role="navigation"  ><a
				href="${createLink(uri: '/utilisateur/edit/'+session.user.id)}"><g:message
						code="${session.user?.prenom+" "+session.user?.nom}" /></a></td>
						
		<td id=utilisateur class="nav" role="navigation"  ><a
				href="${createLink(uri: '/utilisateur/logout')}"><g:message
						code="Deconnexion" /></a></td>

   </tr>

</table>
	
		
		
		
			<h1 id=sondage><FONT color="black">Sondages </FONT><FONT color="blue">à venir </FONT></h1> 

		<g:each in="${sondageInstanceList}" status="i" var="sondageInstance">
					
			<g:if test="${sondageInstance?.dateDebut?.after(new Date()) }"> 		

				<div class="nav" role="navigation">
					<ul>
						<li><font face="arial"> <font size="4pt"><b> ${sondageInstance?.enseignement.nom}</b></font></font></li> 
					
					</ul>
				</div>
			</g:if>
		</g:each>
			
			
		
			
			
			<h1 id = sondage ><FONT color="black">Sondages </FONT><FONT color="green">en cours </FONT></h1> 
			
			
			<g:each in="${sondageInstanceList}" status="i" var="sondageInstance">
			<g:set var="dejaRepondu" value="false">
			</g:set>
			<g:set var="aParticiper" value="false">
			</g:set>
			
			<g:each in="${emargementInstanceList}" status="j" var="emargementInstance">
			
			
				
				</g:each>
				
				
			<g:if test="${sondageInstance?.dateDebut?.before(new Date()) }"> 		
					<g:if test="${sondageInstance?.dateFin?.after(new Date()) }">
			 
			<g:each in="${emargementInstanceList}"  var="emargementInstance">
			
				
				
				<g:if test="${emargementInstance?.enseignement.id==sondageInstance?.enseignement.id }">
					<g:if test="${emargementInstance?.utilisateur.id==session.user.id}">
						
					
						<g:set var="aParticiper" value="true">
						</g:set>
						<g:if test="${emargementInstance?.aRepondu==true }">
							<g:set var="dejaRepondu" value="true">
							</g:set>
						</g:if>
					</g:if>
				</g:if>
				
				
				
				
			</g:each>	
				
				${"repondu="+dejaRepondu}
				
				
			
			<g:if test="${aParticiper=="true"}">	
				 	
									
					<div  class="nav" role="navigation">
					<ul>
						
						<li><font face="arial"> <font size="5px"> </n> </font> <font size="4pt"><b> ${sondageInstance?.enseignement.nom}</b></font></font></li> 
						<g:set var="dejaRepondu" value="false">
						</g:set>
						
						
						
							<g:if test="${dejaRepondu=="false"}">
								<li> <a  onclick="answer()"  ><g:message  code="Répondre"/></a></li> 
							</g:if>
							<g:if test="${dejaRepondu=="true"}">
								<li> <a   > <g:message  code="Vous avez déjà répondu"/></a></li> 
							</g:if>
						
							
						<div id="form">
						<g:form  controller="sondage" action="saveAnswer">
								Note : <input onclick="check(this.value)" name="note" type="radio" value="1"> 1 <input 
									onclick="check(this.value)" name="note" type="radio" value="2"> 2 <input onclick="check(this.value)" name="note"
									type="radio" value="3"> 3 <input onclick="check(this.value)" name="note" type="radio"
									value="4"> 4 <input onclick="check(this.value)" name="note" type="radio" value="5">
								5 <input onclick="check(this.value)" name="note" type="radio" value="6"> 6
						
								<input type="hidden" name="idSondage" value="${sondageInstance?.id}" >
								
								<div id="submit">
									<input  type="submit" value="Envoyer">
								</div>
							
						</g:form>
						</div>
						
					</ul>
					</div>
					
					</g:if>
				</g:if>
			</g:if>
		</g:each>
			
			
			<g:javascript>
		document.getElementById('form').style.display='none';
		
		function answer() {
			if(document.getElementById('form').style.display=='block')
			{
				document.getElementById('form').style.display='none';
			}
			else
			{
				document.getElementById('form').style.display='block'
			}
		}
		
		var submit= document.getElementById('submit');
		submit.innerHTML='Veuillez choisir une note';
		
		function check(value) {
			var submit= document.getElementById('submit');
			if (value == 0) 
			{
				submit.innerHTML='Erreur : veuillez choisir une note';
			}
			else
			{
				submit.innerHTML='<input  type="submit" value="Envoyer">';
			}
		}
		
		
		
	</g:javascript>
			
		
			
			
			
			<h1 id=sondage><FONT color="black">Sondages </FONT><FONT color="red"> terminés </FONT></h1> 
			
			<g:each in="${sondageInstanceList}" status="i" var="sondageInstance">
					
			<g:if test="${sondageInstance?.dateDebut?.before(new Date()) }"> 		
				<g:if test="${sondageInstance?.dateFin?.before(new Date()) }"> 	
								
				<div class="nav" role="navigation">
				<ul>
					<li><font face="arial"> <font size="5px"> </n> </font> <font size="4pt"><b> ${sondageInstance?.enseignement.nom}</b></font></font></li> 
					<li><a  href="${createLink(uri: '/sondage/show/'+sondageInstance?.id)}" ><g:message code="Voir"/></a></li> 
					
				</ul>
				</div>
				
				</g:if>
			</g:if>
		</g:each>
			
			
			
			
			
		
			
	<footer>
	<div id = sondage>  Le Club des 5 - tous droits réservés </div>
	</footer>	

</g:if>
	
</body>
</html>
