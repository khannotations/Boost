$(document).ready(() ->
  topHeight = 140
  $(".js-nav").click(() ->
    tar = $(this).attr("target")
    div = $("a[name='#{tar}']")
    $("body,html,document").animate({
      scrollTop: $(div).offset().top - topHeight
    }, 500);
  )
  $("#nav-list-show").mouseenter ->
    $("#nav-list").fadeIn("fast");
  $("#nav-list-show").mouseleave ->
    $("#nav-list").fadeOut("fast");
)