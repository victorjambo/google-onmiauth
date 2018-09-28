$(document).on('turbolinks:load', function(){
  $("table[role='datatable']").each(function(){
	  $(this).DataTable({});
  });
});