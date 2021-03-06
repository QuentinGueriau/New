<%@ page import="projet.Utilisateur" %>



<div class="fieldcontain ${hasErrors(bean: utilisateurInstance, field: 'nom', 'error')} required">
	<label for="nom">
		<g:message code="utilisateur.nom.label" default="Nom" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="nom" required="" value="${utilisateurInstance?.nom}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: utilisateurInstance, field: 'prenom', 'error')} required">
	<label for="prenom">
		<g:message code="utilisateur.prenom.label" default="Prenom" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="prenom" required="" value="${utilisateurInstance?.prenom}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: utilisateurInstance, field: 'identifiant', 'error')} ">
	<label for="identifiant">
		<g:message code="utilisateur.identifiant.label" default="Identifiant" />
		
	</label>
	<g:textField name="identifiant" value="${utilisateurInstance?.identifiant}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: utilisateurInstance, field: 'mdp', 'error')} ">
	<label for="mdp">
		<g:message code="utilisateur.mdp.label" default="Mdp" />
		
	</label>
	<g:textField name="mdp" value="${utilisateurInstance?.mdp}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: utilisateurInstance, field: 'droit', 'error')} ">
	<label for="droit">
		<g:message code="utilisateur.droit.label" default="Droit" />
		
	</label>
	<g:checkBox name="droit" value="${utilisateurInstance?.droit}" />

</div>

<div class="fieldcontain ${hasErrors(bean: utilisateurInstance, field: 'emargement', 'error')} ">
	<label for="emargement">
		<g:message code="utilisateur.emargement.label" default="Emargement" />
		
	</label>
	
<ul class="one-to-many">
<g:each in="${utilisateurInstance?.emargement?}" var="e">
    <li><g:link controller="emargement" action="show" id="${e.id}">${e?.encodeAsHTML()}</g:link></li>
</g:each>
<li class="add">
<g:link controller="emargement" action="create" params="['utilisateur.id': utilisateurInstance?.id]">${message(code: 'default.add.label', args: [message(code: 'emargement.label', default: 'Emargement')])}</g:link>
</li>
</ul>


</div>

