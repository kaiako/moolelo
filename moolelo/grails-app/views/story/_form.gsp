<%@ page import="moolelo.Story"%>


<div class="row">
	<div class="col s12">
		<div class="row">
			<div
				class="input-field col s12 fieldcontain ${hasErrors(bean: storyInstance, field: 'title', 'error')} required">
				<label for="title"> <g:message code="story.name.label"
						default="Title" /> <span class="required-indicator">*</span>
				</label>
				<g:textField name="title" required="true"
					value="${storyInstance?.title}" />

			</div>
		</div>
		<div class="row">
			<div
				class="col s4 fieldcontain ${hasErrors(bean: storyInstance, field: 'dateOfStory', 'error')}">
				<label for="estDate"> <g:message
						code="story.estDate.label" default="When" />
				</label> <input name="estDate" type="text" 	value="${storyInstance?.estDate}" />

			</div>
			
			<div
				class="col s4 fieldcontain ${hasErrors(bean: storyInstance, field: 'placeOfStory.name', 'error')} required">
				<label for="placeOfStory.name"> <g:message
						code="story.placeOfStory.name.label" default="Where" /> <span
					class="required-indicator">*</span>
				</label>
				<g:textField id="nameOfPlace" name="placeOfStory.name" required="true" class="hidden"
					value="${storyInstance?.placeOfStory?.name}" />

			</div>
			<div
				class="hidden col s3 fieldcontain ${hasErrors(bean: storyInstance, field: 'placeOfStory.location.latitude', 'error')} required">
				<label for="placeOfStory.location.latitude"> <g:message
						code="story.placeOfStory.location.latitude.label" default="Lat" />
					<span class="required-indicator">*</span>
				</label>
				<g:textField data-role="latitude" name="placeOfStory.location.latitude" required="true"
					value="${storyInstance?.placeOfStory?.location?.latitude}" />

			</div>
			<div
				class="hidden col s3 fieldcontain ${hasErrors(bean: storyInstance, field: 'placeOfStory.location.longitude', 'error')} required">
				<label for="placeOfStory.location.longitude"> <g:message
						code="story.placeOfStory.location.longitude.label" default="Lng" />
					<span class="required-indicator">*</span>
				</label>
				<g:textField  data-role="longitude" name="placeOfStory.location.longitude" required="true"
					value="${storyInstance?.placeOfStory?.location?.longitude}" />
					
			</div>
			<g:render template="locationModal" />
		</div>

		<div class="row">
			<div
				class="input-field col s12 fieldcontain ${hasErrors(bean: storyInstance, field: 'description', 'error')} required">
				<label for="description"> <g:message
						code="story.description.label" default="Description" /> <span
					class="required-indicator">*</span>
				</label>
				<g:textArea name="description" class="materialize-textarea"
					required="true" value="${storyInstance?.text}" length="255" />

			</div>
		</div>

		<div class="row">
			<div
				class="input-field col s12 fieldcontain ${hasErrors(bean: storyInstance, field: 'text', 'error')} required">
				<label for="text"> <g:message code="story.text.label"
						default="Text" /> <span class="required-indicator">*</span>
				</label>
				<g:textArea name="text" class="materialize-textarea" required="true"
					value="${storyInstance?.text}" />

			</div>
		</div>

	</div>
</div>

