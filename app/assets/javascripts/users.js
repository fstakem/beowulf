
var links = []
var linkFinder;
var screenText = '';
var likelyLink = null;

function findTextCompletion() {
  likelyLink = linkFinder.search(screenText)[0];
  var likelyStr = likelyLink.token;

  var likelyPartialStr = likelyStr.substring(screenText.length)
  var fullStr = screenText + likelyPartialStr;
  var keyboardText = $('.keyboard-completion-text');

  if(fullStr == likelyStr)
  {
    keyboardText.text(likelyPartialStr);
  }
  else
  {
    keyboardText.text("");
    likelyLink = null;
  }
}

function processRealKeyboard(event) {
  console.log(event)
  var keyboardText = $('.keyboard-text');

  if(event.keyCode == 8) { // backspace
    screenText = screenText.substring(0, screenText.length-1);
    keyboardText.text(screenText);
    findTextCompletion()
  }
  else if(event.keyCode == 27) { //esc
    screenText = '';
    screenTextComplete = '';
    keyboardText.text(screenText);
    likelyLink = null;

    if($('.overlay').hasClass('open')) {
      $('.overlay').toggleClass("open")
    }
  }
  else if(event.keyCode == 9) { // tab
    if($('.overlay').hasClass('open')) {
      if(likelyLink != null) {
        var keyboardText = $('.keyboard-text');
        var keyboardCompletionText = $('.keyboard-completion-text');
        screenText = likelyLink.token;
        keyboardText.text(screenText);
        keyboardCompletionText.text("");
      }
    }
  }
  else if(event.keyCode == 13) { //return
    if($('.overlay').hasClass('open') && likelyLink != null) {
      console.log("LINK")
      window.location.href = likelyLink.url;
    }
  }
  else {
    newKey(String.fromCharCode(event.charCode));
  }

  return false;
}

function processVirtualKeyboard(key) {
  console.log(key)

  var keyboardText = $('.keyboard-text');
  var currentText = keyboardText.text();

  if(key == 'esc')
  {
    screenText = '';
    screenTextComplete = '';
    keyboardText.text(screenText);
    likelyLink = null;

    if($('.overlay').hasClass('open'))
    {
      $('.overlay').toggleClass("open")
    }
  }
  else if(key == 'space')
  {
    keyboardText.text(currentText + " ");
  }
  else if(key == 'tab')
  {
    if($('.overlay').hasClass('open')) {
      if(likelyLink != null) {
        var keyboardText = $('.keyboard-text');
        screenText = likelyLink.token;
        keyboardText.text(screenText);
      }
    }
  }
  else if(key == 'return')
  {
    if($('.overlay').hasClass('open') && likelyLink != null) {
      console.log("LINK")
      window.location.href = likelyLink.url;
    }
  }
  else
  {
    newKey(key);
  }
}

function newKey(key) {
    var keyboardText = $('.keyboard-text');
    var currentText = keyboardText.text();

    screenText = screenText + key;
    screenTextComplete = '';
    keyboardText.text(screenText);
    findTextCompletion()

    if(!$('.overlay').hasClass('open'))
    {
      $('.overlay').toggleClass("open")
    }
}

function pageLoaded() {
  console.log("READY!");

// JS key handling
/*
  document.onkeypress = function(event) {
    event.preventDefault();
    var key = String.fromCharCode(event.keyCode);
    processRealKeyboard(key);
  };
  */

  // other keypress lib
 // var keyListener = new window.keypress.Listener();

  $('#cup-area').click(function(){
    console.log('CLick')
    $('.overlay').toggleClass("open")
  });

  $('.link_area').mouseover(function() {
    console.log(this.id)
    var x = $(this).attr('coords')
    console.log(x)
  });

  $('.input_area').mouseover(function() {
    console.log(this.id.split('-')[0])
    var x = $(this).attr('coords')
    console.log(x)
  });

  $('.input_area').click(function() {
    var key = this.id.split('-')[0];
    processVirtualKeyboard(key);
  });


  var regularKeys = ['a', 'b', 'c', 'd', 'e', 'f', 'g', 'h', 'i',
                     'j', 'k', 'l', 'm', 'n', 'o', 'p', 'q', 'r',
                     's', 't', 'u', 'v', 'w', 'x', 'y', 'z', '1',
                     '2', '3', '4', '5', '6', '7', '8', '9', '0',
                     'space', 'esc', 'backspace', 'tab', '_', '-',
                     '/', '.', 'enter']
  Mousetrap.bind(regularKeys, processRealKeyboard);

  var areaLinks = $('.link-area');
  for(var i = 0; i < areaLinks.length; i++)
  {
    var url = areaLinks[i].href;
    var tokens = url.split('/');
    var lastToken = tokens[tokens.length-1];

    if(lastToken != '#')
    {
      links.push({
        id: 1,
        token: lastToken,
        url: url
      })
    }
  }

  var options = {
    keys: ['token']
  }
  linkFinder = new Fuse(links, options);

}

$(document).ready( function() {
  pageLoaded();
});