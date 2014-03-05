# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://jashkenas.github.com/coffee-script/
$ ->
	$(".gallery-item").on "click", ->
		$(this).closest(".media-items").find(".main-gallery-image").attr("
			.src", $(this).attr("data-img-lg"))