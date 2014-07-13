$(document).ready(function(){
 
//RELEASE 0: 
  //Link this script and the jQuery library to the jquery_example.html file and analyze what this code does. 
 
$('body').css({'background-color': 'pink'})
 
//RELEASE 1:
  //Add code here to select elements of the DOM 

  bodyElement = $('body')
 
 
//RELEASE 2: 
  // Add code here to modify the css and html of DOM elements

  $('body').css({
  	'background-color': 'blue',
  	'border-style': 'solid',
  	'border-width': '5px',
  	'visibility': 'visible'
  }) 

  $('.mascot h1').html('Woolly Bear Caterpillars');

  $('img').on('mouseover', function(e){
     e.preventDefault()
    $(this).attr('src', 'http://thefeaturedcreature.thefeaturedcreat.netdna-cdn.com/wp-content/uploads/2013/02/a101103c.jpg')
  })
 
//RELEASE 3: Event Listener
  // Add the code for the event listener here 

  $( "img" ).hover(
    function(e){
       e.preventDefault()
      $(this).attr('src', 'http://thefeaturedcreature.thefeaturedcreat.netdna-cdn.com/wp-content/uploads/2013/02/a101103c.jpg')
    }, 
    function(e){
       e.preventDefault()
      $(this).attr('src', 'dbc_logo.jpg')
    }
  );

//RELEASE 4 : Experiment on your own
 $("img").click(
    function(){
      $(this).animate({height:"300px"})
    }
  )
 
})  // end of the document.ready function: do not remove or write DOM manipulation below this.
