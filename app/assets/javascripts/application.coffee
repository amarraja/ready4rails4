#= require jquery
#= require jquery_ujs
#= require turbolinks
#= require_tree .

onReady = ->
  $('#gems-search').keyup ->
    $.get $(this).attr("action"), $(this).serialize(), null, "script"
    false

$(document).ready onReady
$(document).on "page:change", onReady
