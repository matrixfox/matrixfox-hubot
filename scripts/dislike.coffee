# Description:
#   Grumpy cat dislike this >:[
#
# Dependencies:
#   None
#
# Configuration:
#   None
#
# Commands:
#
# Author:
#   nesQuick

module.exports = (robot) ->
  robot.hear /dislike/i, (msg) ->
    msg.send "https://i.giphy.com/gSotjAQJmPTJm.gif"
