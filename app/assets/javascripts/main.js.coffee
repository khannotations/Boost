$(document).ready(() ->
  
  top = "600px"
  gplus()
  
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

# Check every second for the google+ to load, and change its vertical align
gplus = () ->
  setTimeout(() ->
    if($("#___plusone_0").length)
      $("#___plusone_0").css({"verticalAlign" : "top"})
    else
      gplus()
  , 1000)
  

#'fade,fold,sliceDown,sliceUp'
$(window).load(() ->
  $("#slider").nivoSlider({
    effect: 'fade,fold,sliceDown,sliceUp',
    pauseTime: 10000
  })
)
