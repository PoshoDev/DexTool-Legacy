function EnableContextMenu(){
    document.body.oncontextmenu=function(){
        return 1;
    };
}

function CustomLoader(ctx, width, height, total, current, image) {
	// change these to your liking:
	var backgroundColor = "#FFFFFF";
	var barBackgroundColor = "#FFFFFF";
	var barForegroundColor = "#242238";
	var barBorderColor = "#242238";
	var barWidth = Math.round(width * 0.6);
	var barHeight = 20;
	var barBorderWidth = 2;
	var barOffset = 10;
	// background:
	ctx.fillStyle = backgroundColor;
	ctx.fillRect(0, 0, width, height);
	// image:
	var totalHeight, barTop;
	if (image != null) {
		totalHeight = image.height + barOffset + barHeight;
		var image_y = (height - totalHeight) >> 1;
		ctx.drawImage(image, (width - image.width) >> 1, image_y);
		barTop = image_y + image.height + barOffset;
	} else barTop = (height - barHeight) >> 1;
	// bar border:
	var barLeft = (width - barWidth) >> 1;
	ctx.fillStyle = barBorderColor;
	ctx.fillRect(barLeft, barTop, barWidth, barHeight);
	//
	var barInnerLeft = barLeft + barBorderWidth;
	var barInnerTop = barTop + barBorderWidth;
	var barInnerWidth = barWidth - barBorderWidth * 2;
	var barInnerHeight = barHeight - barBorderWidth * 2;
	// bar background:
	ctx.fillStyle = barBackgroundColor;
	ctx.fillRect(barInnerLeft, barInnerTop, barInnerWidth, barInnerHeight);
	// bar foreground:
	var barLoadedWidth = Math.round(barInnerWidth * current / total);
	ctx.fillStyle = barForegroundColor;
	ctx.fillRect(barInnerLeft, barInnerTop, barLoadedWidth, barInnerHeight);
	console.log(current + "/" + total);
}

function OpenImage(){
	var canvasImage = document.getElementById("canvas").toDataURL("image/png");
	window.open(canvasImage);
}

function SaveImage(){
	var link = document.createElement("a");
	link.href = document.getElementById("canvas").toDataURL("image/png");
	link.download = "image.png";
	link.click();
}

function PrintWeb(url){
    var width = window.width * 0.9;
    var height = window.height * 0.9;
    var content = '<!DOCTYPE html>' + 
                  '<html>' +
                  '<head><title></title></head>' +
                  '<body onload="window.focus(); window.print(); window.close();">' + 
                  '<img src="' + url + '" style="width: 100%;" />' +
                  '</body>' +
                  '</html>';
    var options = "toolbar=no,location=no,directories=no,menubar=no,scrollbars=yes,width=" + width + ",height=" + height;
    var printWindow = window.open('', 'print', options);
    printWindow.document.open();
    printWindow.document.write(content);
    printWindow.document.close();
    printWindow.focus();
}

function GetImageURL(){
	var canvasImage = document.getElementById("canvas").toDataURL("image/png");
	return canvasImage;
}

function GetImageData(){
	var canvasImage = document.getElementById("canvas").toDataURL("image/png");
	var data = canvasImage.substring(canvasImage.indexOf('base64')+7)
	return data;
}

function InvokeDownload(url, filename){
	var link = document.createElement("a");
	link.href = url;
	if(filename == undefined){
		filename = "download";
	}
	link.download = filename;
	link.click();
}

function ChangeFullscreen() {
  if ((document.fullScreenElement && document.fullScreenElement !== null) ||    
   (!document.mozFullScreen && !document.webkitIsFullScreen)) {
    if (document.documentElement.requestFullScreen) {  
      document.documentElement.requestFullScreen();  
    } else if (document.documentElement.mozRequestFullScreen) {  
      document.documentElement.mozRequestFullScreen();  
    } else if (document.documentElement.webkitRequestFullScreen) {  
      document.documentElement.webkitRequestFullScreen(Element.ALLOW_KEYBOARD_INPUT);  
    }
  } else {  
    if (document.cancelFullScreen) {  
      document.cancelFullScreen();  
    } else if (document.mozCancelFullScreen) {  
      document.mozCancelFullScreen();  
    } else if (document.webkitCancelFullScreen) {  
      document.webkitCancelFullScreen();  
    }
  }  
}

function FullscreenStatus() {
	if ((document.fullScreenElement && document.fullScreenElement !== null) ||    
   (!document.mozFullScreen && !document.webkitIsFullScreen)) {
		return 0;
	 } else {
		return 1;
	 }
}