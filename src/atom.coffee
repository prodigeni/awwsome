app = require('app')
BrowserWindow = require('browser-window')

config = require('./package.json') # Get Name, etc from package.json

win = null

app.on 'ready', ->
	win = new BrowserWindow({width: config.win.width, height: config.win.height})
	win.loadUrl("file://"+__dirname+"/../ui/index.html");

	win.on 'closed', ->
		win = null

app.on 'window-all-closed', ->
	app.quit()