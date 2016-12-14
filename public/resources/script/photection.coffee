
"use strict"
$ = jQuery

class Image_Protector

	constructor: ->
		$(document).on 'contextmenu', 'img, #photection', @protect
		$(document).on 'click', '#photection', @close

	protect: (e) ->
		$message = $('#photection-message')

		$('#photection').addClass('is-active')

		# Reset message position
		$message.css({})

		# Make sure we have a place for the message
		if e.clientX > 0 and e.clientY > 0
			position =
				left: e.clientX
				top: e.clientY

			$('#photection-message').css position


		return false

	close: ->
		$('#photection').removeClass('is-active')




$(document).ready ->
	new Image_Protector()