// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or vendor/assets/javascripts of plugins, if any, can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// the compiled file.
//
// WARNING: THE FIRST BLANK LINE MARKS THE END OF WHAT'S TO BE PROCESSED, ANY BLANK LINE SHOULD
// GO AFTER THE REQUIRES BELOW.
//
//= require jquery
//= require jquery_ujs
//= require jquery-ui
//= require lib/lazybox/lazybox

jQuery(document).ready(function(){
	builder_form();
	$('.education input[type=radio]').click(function(){
		builder_form();
	});
	$('#class_id').change(function () {
		addSelectOptonsClass($(this).val())
	});
		/****
	 **  Эффект загрузки для remote true
	 ****/
		$('a[data-remote],input[data-remote], form[data-remote]')
		.bind("ajax:beforeSend", function(et, e){ $("#loading").show();	})
		.bind("ajax:complete", function(et, e){  $("#loading").hide(); })
		.bind("ajax:after", function(et, e){  $("#loading").hide(); });
});
function addSelectOptonsFaculty(faculty){
	$.get('getBakalavriatByFaculty', { faculty: faculty}, function(data) {
	});
}
function addSelectOptonsClass(klass){
	$.get('getBakalavriatByClass', { klass:klass}, function(data) {
	});
}
function builder_form(){
	at = $('.education input[type=radio]:checked').val()
	if(at == "Высшее"){
		$('.f1,.f2,.f3,.f5').show();
		$('.f4, .f6,.f7,.f8').hide();
	}
	else if(at == "Бакалавриат, магистратура"){
		$('.f1,.f2,.f4,.f5').show();
		$('.f3, .f6,.f7,.f8').hide();
	}
	else if(at == "Среднее специальное"){
		$('.f2,.f4,.f5,.f7').show();
		$('.f1, .f3, .f6,.f8').hide();
	}
	else if(at == "Послевузовское"){
		$('.f2,.f8,.f6').show();
		$('.f1, .f3,.f4, .f5,.f7').hide();
	}
	reset_selected();
}
function reset_selected(){
	$('.f1,.f2,.f3,.f4,.f5,.f6,.f7,.f8').find('select option:first-child').attr("selected","selected");
	$('.f1,.f2,.f3,.f4,.f5,.f6,.f7,.f8').find('input[type=text]').val("");
}
