var Elm = require('./Main');
var app = Elm.Main.fullscreen();

app.ports.currentForcast.subscribe(function (forcast) {
	console.log('forcast', forcast);
});
