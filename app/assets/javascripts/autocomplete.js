
// $(document).on({
//     'DOMNodeInserted': function() {
//         $('.pac-item, .pac-item span', this).addClass('needsclick');
//     }
// }, '.pac-container');
// var observer_config = { attributes: false, childList: true, subTree: false, characterData: false }
// var observer = new MutationObserver( function(mutations) {
//     var self = this;
//     mutations.forEach(function(mutation){

//         // look for the container being added to the DOM
//         var pac_container_added = $(mutation.addedNodes).hasClass('pac-container');
//         // if it is, begin observing it
//         if (pac_container_added){
//             var pac_container = mutation.addedNodes[0];
//             self.observe(pac_container, observer_config);
//         }

//         // look for pac-items being added (as children of pac_container)
//         // This will not resolve if the observer on pac-container has not been created
//         var pac_item_added = $(mutation.addedNodes).hasClass('pac-item');
//         // when pac items are added, add the needsclick class
//         if (pac_item_added) {
//             $('.pac-item, .pac-item span').addClass('needsclick')
//         }
//     });
// });
// observer.observe(document.body, observer_config);
var pacContainerInitialized = false; 
$('#autocomplete_address').keypress(function() { 
        if (!pacContainerInitialized) { 
                $('.pac-container').css('z-index', '9999'); 
                pacContainerInitialized = true; 
        } 
}); 

$(document).on('turbolinks:load', function() {
function initializeAutocomplete(id) {     
     var element = document.getElementById(id);
     if (element) {
       var autocomplete = new google.maps.places.Autocomplete(element, { types: ['geocode'], componentRestrictions: {country: 'us'} });
       google.maps.event.addListener(autocomplete, 'place_changed', onPlaceChanged);
       }
}

function onPlaceChanged() {
     var place = this.getPlace();     

     // console.log(place);  // Uncomment this line to view the full object returned by Google API.     

for (var i in place.address_components) {
 var component = place.address_components[i];
 for (var j in component.types) {  // Some types are ["country", "political"]
  var type_element = document.getElementById(component.types[j]);
  if (type_element) {
   type_element.value = component.long_name;
   }
  }
 }
}   
google.maps.event.addDomListener(window, 'load', function() {
 initializeAutocomplete('autocomplete_address');   
 }); 
}); 
