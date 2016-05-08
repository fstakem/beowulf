


function pageLoaded() {
  console.log("Page loaded");

  var width = $(window).width()
  if (width <= 780) {
    console.log('NEW LOCATION')
    var url_tokens = document.URL.split('/');
    var username = url_tokens[url_tokens.length - 1];
    document.location = username + "/about_me";
  }
}

$('.users.user_landing').ready(function() {
  console.log('Document ready')
  pageLoaded();
})
