//= require active_admin/base
$(document).ready(function() {
	f1 = "#rule_faculty_input";
	f2 = "#rule_form_input";
	f3 = "#rule_special_input";
	f4 = "#rule_bakalavriat_input";
	f5 = "#rule_course_id_input";
	f6 = "#rule_year_id_input";
	f7 = "#rule_class_id_input";
	f8 = "#rule_bakalavriat_aspirant_input";
	
	st_at = $('#rule_education_id option:selected').html();
	if(st_at == "") hide_all();
	else builder_form(st_at);
	
$('#rule_education_id').change(function () {
	at = $(this).find('option:selected').html();
	builder_form(at);
	reset_selected();
});
function builder_form(at){
	
	if(at == "Высшее"){
		$(f1 +","+ f2 +","+ f3 +","+ f5).show();
		$(f4 +","+ f6 +","+ f7 +","+ f8).hide();
	}
	else if(at == "Высшее бакалавриат"){
		$( f1 +","+ f2 +","+ f4 +","+ f5).show();
		$( f3 +","+ f6 +","+ f7 +","+ f8).hide();
	}
	else if(at == "Среднее специальное"){
		$( f2 +","+ f4 +","+ f5 +","+ f7).show();
		$( f1 +","+ f3 +","+ f6 +","+ f8 ).hide();
	}
	else if(at == "Послевузовское"){
		$( f2 +","+ f8 +","+ f6 ).show();
		$( f1 +","+ f3 +","+ f4 +","+ f5 +","+ f7 ).hide();
	}
	
}
function reset_selected(){
	$(f1 +","+ f2 +","+ f3 +","+ f4 +","+ f5 +","+ f6 +","+ f7  +","+ f8).find('select option:first-child').attr("selected","selected");
}
function hide_all(){
	$(f1 +","+ f2 +","+ f3 +","+ f4 +","+ f5 +","+ f6 +","+ f7  +","+ f8).hide();
}
tinyMCE.init({
        // General options
        mode : "textareas",
        theme : "advanced",
        plugins : "autolink,lists,spellchecker,pagebreak,style,layer,table,save,advhr,advimage,advlink,emotions,iespell,inlinepopups,insertdatetime,preview,media,searchreplace,print,contextmenu,paste,directionality,fullscreen,noneditable,visualchars,nonbreaking,xhtmlxtras,template",

        // Theme options
        theme_advanced_buttons1 : "save,newdocument,|,bold,italic,underline,strikethrough,|,justifyleft,justifycenter,justifyright,justifyfull,|,styleselect,formatselect,fontselect,fontsizeselect",
        theme_advanced_buttons2 : "cut,copy,paste,pastetext,pasteword,|,search,replace,|,bullist,numlist,|,outdent,indent,blockquote,|,undo,redo,|,link,unlink,anchor,image,cleanup,help,code,|,insertdate,inserttime,preview,|,forecolor,backcolor",
        theme_advanced_buttons3 : "tablecontrols,|,hr,removeformat,visualaid,|,sub,sup,|,charmap,emotions,iespell,media,advhr,|,print,|,ltr,rtl,|,fullscreen",
        theme_advanced_buttons4 : "insertlayer,moveforward,movebackward,absolute,|,styleprops,spellchecker,|,cite,abbr,acronym,del,ins,attribs,|,visualchars,nonbreaking,template,blockquote,pagebreak,|,insertfile",
        theme_advanced_toolbar_location : "top",
        theme_advanced_toolbar_align : "left",
        theme_advanced_statusbar_location : "bottom",
        theme_advanced_resizing : true,

        // Skin options
        skin : "o2k7",
        skin_variant : "silver",

        // Example content CSS (should be your site CSS)
        content_css : "css/example.css",

        // Drop lists for link/image/media/template dialogs
        template_external_list_url : "js/template_list.js",
        external_link_list_url : "js/link_list.js",
        external_image_list_url : "js/image_list.js",
        media_external_list_url : "js/media_list.js",

        // Replace values for the template plugin
        template_replace_values : {
                username : "Some User",
                staffid : "991234"
        }
	});
	
});