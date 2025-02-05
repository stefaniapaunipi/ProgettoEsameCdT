$(document).ready(function () {
  // funzione per gestire l'abbr ed expan
  $("abbr").mouseover(function() {
      $(this).next().show("slow");
      $(this).hide("40000");
    });
  
    $(".expan").mouseover(function() {
      $(this).prev().show("slow");
      $(this).hide("40000");
    });

    const toggleButtonClass = (buttonId, targetClass, toggleClass) => {
      $(buttonId).click(function() {
          $(this).toggleClass("btnOn");
          $(targetClass).toggleClass(toggleClass);
      });
  };

  toggleButtonClass("#Pers", ".persName", "persNameOn");
  toggleButtonClass("#Org", ".orgName", "orgNameOn");
  toggleButtonClass("#Date", ".date", "dateNameOn");
  toggleButtonClass("#luoghi", ".placeName", "placeNameOn");
  toggleButtonClass("#opere", ".title", "titleOn");
  toggleButtonClass("#numeri", ".num", "numOn");
  toggleButtonClass("#citaz", ".quote", "quoteOn");

  $(".tooltip").on("mouseover", function() {
    $(this).find(".tooltip-content").fadeIn("slow");
  });

  $(".tooltip").on("mouseout", function() {
      $(this).find(".tooltip-content").fadeOut("slow");
  });
});