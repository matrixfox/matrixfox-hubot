# Description:
#   Example scripts for you to examine and try out.
#

module.exports = (robot) ->
  robot.respond /Hello/i, (msg) ->
    msg.send "World"
