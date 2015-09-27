
<%@ page import="moolelo.Story" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'story.label', default: 'Story')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-story" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="index"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-story" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list story">
			
				<g:if test="${storyInstance?.title}">
				<li class="fieldcontain">
					<span id="title-label" class="property-label"><g:message code="story.title.label" default="Title" /></span>
					
						<span class="property-value" aria-labelledby="name-label"><g:fieldValue bean="${storyInstance}" field="title"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${storyInstance?.estDate}">
				<li class="fieldcontain">
					<span id="estDate-label" class="property-label"><g:message code="story.estDate.label" default="When" /></span>
					
						<span class="property-value" aria-labelledby="estDate-label">${storyInstance?.estDate}</span>
					
				</li>
				</g:if>
			
				<g:if test="${storyInstance?.placeOfStory}">
				<li class="fieldcontain">
					<span id="placeOfStory-name-label" class="property-label"><g:message code="story.placeOfStory.name.label" default="Name of Place" /></span>
					
						<span class="property-value" aria-labelledby="placeOfStory-name-label">${storyInstance?.placeOfStory?.name}</span>
					
				</li>
				</g:if>
			
				<g:if test="${storyInstance?.placeOfStory}">
				<li class="fieldcontain">
					<span id="placeOfStory-lat-label" class="property-label"><g:message code="story.placeOfStory.lat.label" default="Latitude" /></span>
					
						<span class="property-value" aria-labelledby="placeOfStory.lat-label">${storyInstance?.placeOfStory?.location?.latitude}</span>
					
				</li>
				</g:if>
			
				<g:if test="${storyInstance?.placeOfStory}">
				<li class="fieldcontain">
					<span id="placeOfStory-lng-label" class="property-label"><g:message code="story.placeOfStory.lng.label" default="Longitude" /></span>
					
						<span class="property-value" aria-labelledby="placeOfStory-lng-label">${storyInstance?.placeOfStory?.location?.longitude}</span>
					
				</li>
				</g:if>
			
				<g:if test="${storyInstance?.description}">
				<li class="fieldcontain">
					<span id="description-label" class="property-label"><g:message code="story.description.label" default="Description" /></span>
					
						<span class="property-value" aria-labelledby="description-label"><g:fieldValue bean="${storyInstance}" field="description"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${storyInstance?.text}">
				<li class="fieldcontain">
					<span id="text-label" class="property-label"><g:message code="story.text.label" default="Text" /></span>
					
						<span class="property-value" aria-labelledby="text-label"><g:fieldValue bean="${storyInstance}" field="text"/></span>
					
				</li>
				</g:if>
			
			</ol>
			<g:form url="[resource:storyInstance, action:'delete']" method="DELETE">
				<fieldset class="buttons">
					<g:link class="edit" action="edit" resource="${storyInstance}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
