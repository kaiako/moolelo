<%@ page import="moolelo.Story"%>

<a class="waves-effect waves-light btn location-modal-trigger" href="#modal1">Choose where</a>

<!-- Modal Structure -->
<div id="modal1" class="modal locationModal modal-fixed-footer">
	<div class="modal-content">
		<h4>Where does this Mo'olelo take place?</h4>
		<div class="input-field col s12">
          <input placeholder="Where the Mo'olelo takes place" id="placeName" type="text" class="validate">
          <label for="placeName">Name of Place</label>
        </div>
		<div class="input-field col s12">
          <input placeholder="Go to a location" id="locationSearch" type="text" class="validate">
          <label for="locationSearch">Go to a Location</label>
        </div>
		<div id="map"></div>
	</div>
	<div class="modal-footer ">
		<a href="#!"
			class=" modal-action modal-close waves-effect waves-green btn-flat">Done</a>
	</div>
</div>

