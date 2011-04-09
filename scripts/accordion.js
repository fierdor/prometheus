function accordion(){
	$('#sidemenu ul').hide();
	$('#sidemenu ul:first').show();
	$('#sidemenu li a').live('click',function()
	{
	
	var temp=$(this).next('ul').toggle();
	
	});
	
}

function slideshow(){
	var slides=$('#counter').html();
	slidenum="#slide"+slides;
	$(slidenum).hide();
	if(slides==3)
	{slides=1;}
	else
	{slides=parseInt(slides)+parseInt(1);}
	slidenum="#slide"+slides;
	
	$(slidenum).fadeIn('700');
	$('#counter').html(slides);
	setTimeout("slideshow()",5000);
	
}

function aboutus(){
$('.profile').hover(function(){
$(this).css('background-color','#456')
},
function(){$(this).css('background-color','#fff')});
}


$(document).ready(function(){
	accordion();
	panel();
	aboutus();
	
	

});
