# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/
$(document).on 'turbolinks:load', ->
	$('#example').dataTable 'order': []
	#$('#btnLimpiarForm').trigger 'click'
	date = new Date
	day = date.getDate()
	year = date.getFullYear()
	#get year
	month = date.getMonth()
	#get month
	$('.fechas').datepicker
	  format: 'dd/mm/yyyy'
	  language: 'es'
	  autoclose: true
	  todayHighlight: true
	  startDate: new Date(year, month, day)
  $('[data-toggle="tooltip"]').tooltip()