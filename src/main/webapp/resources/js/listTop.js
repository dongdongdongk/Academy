$(document).ready(function() {
   

    $(".check-item").click(function() {
        if ($(this).prop("checked")) {
            let row = $(this).closest("tr");
            row.addClass("checked");
            row.insertBefore($("tbody tr:first-child"));
            $( 'd-flex align-items-center' ).addClass( 'checkcolor' );
        } else {
            $(this).closest("tr").removeClass("checked");
        }
    });
});