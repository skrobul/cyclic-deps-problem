
events             = require('events')
eventEmitter       = new events.EventEmitter()
app = require("../../server")

console.log(app.get('something'))

module.exports = ->
    return "I am some function"
