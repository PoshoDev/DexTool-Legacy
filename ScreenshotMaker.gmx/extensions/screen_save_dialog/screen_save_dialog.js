function b64toBlob(b64Data, contentType, sliceSize) {
	// from http://stackoverflow.com/a/16245768/5578773
	contentType = contentType || '';
	sliceSize = sliceSize || 512;

	var byteCharacters = atob(b64Data);
	var byteArrays = [];

	for (var offset = 0; offset < byteCharacters.length; offset += sliceSize) {
		var slice = byteCharacters.slice(offset, offset + sliceSize);

		var byteNumbers = new Array(slice.length);
		for (var i = 0; i < slice.length; i++) {
			byteNumbers[i] = slice.charCodeAt(i);
		}

		var byteArray = new Uint8Array(byteNumbers);

		byteArrays.push(byteArray);
	}

	var blob = new Blob(byteArrays, {type: contentType});
	return blob;
}

///
function screen_save_dialog_js(fname, id) {
	var canvas = document.getElementById(id);
	var data = canvas.toDataURL();
	var link = document.createElement("a");
	try {
		var pos = data.indexOf(";base64,");
		var blob = b64toBlob(data.substring(pos + 8), data.substring(5, pos));
		if (navigator.msSaveBlob) {
			navigator.msSaveBlob(blob, fname);
			return;
		}
		link.href = URL.createObjectURL(blob);
	} catch (_) {
		link.href = data;
	}
	//
	link.download = fname;
	link.setAttribute("download", fname);
	var ctr = canvas.parentElement;
	ctr.appendChild(link);
	link.click();
	ctr.removeChild(link);
}