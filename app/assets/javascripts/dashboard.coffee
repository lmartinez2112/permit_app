$(document).on 'turbolinks:load', ->
	$('#btnLimpiarForm').trigger 'click'
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