# Description:
#   hello world
#
# Dependencies:
#   None
#
# Configuration:
#   None
#
# Commands:
#   hubot hello
#
# Author:
#   dlinsin

module.exports = (robot) ->
  robot.hear /hello/i, (msg) ->
    msg.send "World!"
