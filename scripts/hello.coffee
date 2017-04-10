# Description
#   Simple script
#

module.exports = (robot) ->

  robot.hear /hello/i, (msg) ->
    msg.send "World!"
