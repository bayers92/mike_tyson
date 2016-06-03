# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/


$ ->
    $forms = $('.tag_form')
    $forms.each (i, el) -> 
        $('input[type=submit]', el).hide()
        $('select', el).on 'change', (ev) -> 
            $(el).submit() 