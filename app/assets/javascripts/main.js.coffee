$(document).ready(() ->
  
  top = "600px"
  $(".nav li").click(() ->
    if(!$(this).hasClass("selected"))
      # Adjust selected-ness
      $(".nav .selected").removeClass("selected")
      $(this).addClass("selected")

      # Get target div
      t = $(this).attr("target")

      # If first time clicking, slideDown, else fadeIn
      $(".text:visible").hide();
      $(".text[name='"+t+"']").fadeIn("fast");

      

      # if($(".text:visible").hide().length)
      #   $(".text[name='"+t+"']").fadeIn("fast")
      # else
      #   $(".text[name='"+t+"']").slideDown(300)
      #   $(".btn").animate({top:top}, 300)

  )
)
#'fade,fold,sliceDown,sliceUp'
$(window).load(() ->
  $("#slider").nivoSlider({
    effect: 'fade,fold,sliceDown,sliceUp',
    pauseTime: 10000
  })
)