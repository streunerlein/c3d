
var c3d = c3d || {};

c3d.cssVendorPrefix = (function(undefined) {
	var prefixes = ["Moz", "ms", "O", "Webkit"];
	var testEl = document.createElement('div');

	for (var i = prefixes.length - 1; testEl.style[prefixes[i] + "Transform"] === undefined && i > -1; i--) {
		continue;
	}

	return (i < 0) ? "" : ["-", prefixes[i].toLowerCase(), "-"].join("");
})();

c3d.toFixed = function(x) {
	// converts x from scientific notation to "normal" notation
	// e.g. function(1.3543e6) -> "1354300"
	// returns a string
	// original from http://stackoverflow.com/a/1685917, added support for negative numbers

	var neg = false, e;
	if (x < 0) {
		x *= -1;
		neg = true;
	}
	if (Math.abs(x) < 1.0) {
		e = parseInt(x.toString().split('e-')[1], 10);
		if (e) {
			x *= Math.pow(10,e-1);
			x = '0.' + (new Array(e)).join('0') + x.toString().substring(2);
		}
	} else {
		e = parseInt(x.toString().split('+')[1], 10);
		if (e > 20) {
			e -= 20;
			x /= Math.pow(10,e);
			x += (new Array(e+1)).join('0');
		}
	}
	if (neg) x = "-" + x;
	return x;
};