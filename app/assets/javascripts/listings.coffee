# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/
 ->
  initialize_listings_typeahead = ->
    users_typeahead = new Bloodhound(
      datumTokenizer: Bloodhound.tokenizers.obj.whitespace(
        "title", "Description", "brand"
      ),
      queryTokenizer: Bloodhound.tokenizers.whitespace,
      prefetch: "/listings/autocomplete"
    )

    listings_typeahead.initialize()

    $(".js-listings-autocomplete").typeahead null,
  displayKey: "title"
  source: listings_typeahead.ttAdapter()
