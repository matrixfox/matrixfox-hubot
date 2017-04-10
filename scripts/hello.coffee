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
  robot.hear /badger/i, (res) ->
    res.send "Badgers? BADGERS? WE DON'T NEED NO STINKIN BADGERS"

  robot.respond /open the pod bay doors/i, (res) ->
    res.reply "I'm afraid I can't let you do that."

  robot.hear /I like pie/i, (res) ->
    res.emote "makes a freshly baked pie"
