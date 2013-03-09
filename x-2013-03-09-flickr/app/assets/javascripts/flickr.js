var timer;
var photos;
var index;
var per_page = 5;
var page = 1;
var is_paused = false;

$(document).ready(start_program);

function start_program()
{
  $('#search_button').click(search_flickr);
  $('#pause_button').click(pause);
}

function pause()
{
  if(is_paused)
    timer = setInterval(display_photo, 1000);
  else
    clearInterval(timer);

  is_paused = !is_paused;
}

function search_flickr()
{
  var query = $('input').val();
  $.getJSON('http://api.flickr.com/services/rest/?method=flickr.photos.search&api_key=4c6e1f137bbeb666a1c0a884b609e286&text=' + query + '&per_page=' + per_page + '&page=' + page + '&format=json&jsoncallback=?', flickr_finished);
}

function flickr_finished(data)
{
  index = 0;
  photos = data.photos.photo;
  timer = setInterval(display_photo, 1000);
}

function display_photo()
{
  var photo = photos[index];
  var url = "url(http://farm"+ photo.farm +".static.flickr.com/"+ photo.server +"/"+ photo.id +"_"+ photo.secret +"_m.jpg)";
  $('body').css('background-image', url);
  index++;
  if(index == per_page)
  {
    clearInterval(timer);
    page++;
    search_flickr();
  }
}
