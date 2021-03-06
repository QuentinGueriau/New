<%@ page import="projet.Enseignement" %>



<div class="fieldcontain ${hasErrors(bean: enseignementInstance, field: 'nom', 'error')} required">
	<label for="nom">
		<g:message code="enseignement.nom.label" default="Nom" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="nom" required="" value="${enseignementInstance?.nom}"/>

</div>
          <g:each in="${utilisateurInstanceList}" status="i" var="utilisateurInstance">
					 <g:if test="${utilisateurInstance.droit == false}">
						<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
							
							<div class="fieldcontain ${hasErrors(bean: utilisateurInstance, field: 'droit', 'error')} ">
							<label for="droit">
								<g:message code="${utilisateurInstance?.prenom+" "+utilisateurInstance?.nom}" default="${utilisateurInstance?.prenom+" "+utilisateurInstance?.nom}" />
								
							</label>				
							
							<g:set var="t" value="false"/> 
							 <g:each in="${emargementInstanceList}" status="j" var="emargementInstance">
									 <g:if test="${emargementInstance.enseignement == enseignementInstance}">
										<g:if test="${emargementInstance.utilisateur == utilisateurInstance}">
											<g:set var="t" value="true"/> 
								 		</g:if>
								 	</g:if>
								</g:each>
							
							
							
							<g:if test="${t == "false"}">
								<g:checkBox name="${"emargement"+utilisateurInstance?.id}" value=""  />
							</g:if>
							
							<g:else test="${t == "true"}">
								<g:checkBox name="${"emargement"+utilisateurInstance?.id}" value="true"  />
							</g:else> 
							
							
							</div>						
						</tr>
						</g:if>
				</g:each>




