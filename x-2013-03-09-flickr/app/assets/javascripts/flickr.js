$(document).ready(start_program);

function start_program()
{
  $('button').click(search_flickr);
}

function search_flickr()
{
  var page = 1;
  var query = $('input').val();
  $.getJSON('http://api.flickr.com/services/rest/?method=flickr.photos.search&api_key=4c6e1f137bbeb666a1c0a884b609e286&text=' + query + '&per_page=500&page=' + page + '&format=json&jsoncallback=?', flickr_finished);
}

function flickr_finished(data)
{

}
