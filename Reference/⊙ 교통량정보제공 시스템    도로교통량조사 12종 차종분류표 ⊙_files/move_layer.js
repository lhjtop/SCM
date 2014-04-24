self.onError = null;
var phone_startY = 100;
var phone_indicatorY = phone_startY;
var top_startY = 100;
var top_indicatorY = top_startY;
NS = (document.layers) ? 1 : 0;
IE = (document.all) ? 1: 0;

function move_phone()
{
	var topPointY = 0;
	var percent = 0;

	if (!document.all.left_phone)
		return;

  	if (IE)
  		topPointY = document.body.scrollTop;

  	if (NS)
  		topPointY = self.pageYOffset; 
 	
  	if (topPointY <= phone_startY)
  		topPointY = phone_startY;
  	
  	if (topPointY != phone_indicatorY)
	{
		percent = 0.2 * (topPointY - phone_indicatorY);

		if (percent > 0)
			percent = Math.ceil(percent);
		else
			percent = Math.floor(percent);
  		
		if (IE)
			document.all.left_phone.style.pixelTop += percent;
  		
		if (NS)
			document.left_phone.top += percent;
  				
		phone_indicatorY += percent;
	}
}

function move_top()
{
	var topPointY = 0;
	var percent = 0;

	if (!document.all.left_top)
		return;

  	if (IE)
  		topPointY = document.body.scrollTop;

  	if (NS)
  		topPointY = self.pageYOffset; 
 	
  	if (topPointY <= top_startY)
  		topPointY = top_startY;
  	
  	if (topPointY != top_indicatorY)
	{
		percent = 0.2 * (topPointY - top_indicatorY);
  	
		if (percent > 0)
			percent = Math.ceil(percent);
		else
			percent = Math.floor(percent);
  		
		if (IE)
			document.all.left_top.style.pixelTop += percent;
  		
		if (NS)
			document.left_top.top += percent;
  				
		top_indicatorY += percent;
	}
}
  
if (IE||NS)
{
	action = window.setInterval("move_top()", 1);
}