# Description:
#   Example scripts for you to examine and try out.
#

request = require('request')

module.exports = (robot) ->
  robot.respond /bitcoin price/i, (msg) ->
    request 'https://coinbase.com/api/v1/prices/spot_rate', (error, response, body) ->
      if !error and response.statusCode == 200
        info = JSON.parse(body)
        msg.send info.amount + ' ' + info.currency