express = require('express')
config = require('./lib/config/config')
app = express()

server = app.listen config.port, ->
 logger.info "Express server listening on port #{config.port} in #{app.get("env")} mode"

# load procesor
fooBarStreamProcessor = require('./lib/modules/fooBarStreamProcessor')
fooBarUpstream = new fooBarStreamProcessor(config.fooBar_host, config.fooBar_port)

# Expose app
exports = module.exports = app