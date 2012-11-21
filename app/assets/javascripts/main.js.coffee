$(document).ready(() ->
  
  gplus()
  topHeight = 140

  $(".nav td").click(() ->
    tar = $(this).attr("target")
    div = $(".divider[name='"+tar+"']")
    $("body,html,document").animate({
      scrollTop: $(div).offset().top - topHeight
    }, 500);
    console.log $(div).offset().top
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