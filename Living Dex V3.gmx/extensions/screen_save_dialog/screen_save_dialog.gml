#define screen_save_dialog
/// (filename):
var fname = argument0;
if (os_browser != browser_not_a_browser) {
	screen_save_dialog_js(fname, window_handle());
} else {
	var r = get_save_filename("PNG image|*.png", fname);
	if (r != "") screen_save(r);
}