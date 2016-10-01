# Description
#   Web Scraper, Don't shoot the messenger!
#

request = require 'request'
cheerio = require 'cheerio'

module.exports = (robot) ->

  robot.hear /scrape (.*)/i, (msg) ->
    url = msg.match[1]
    request "#{url}", (error, response, body)->
      throw error if error
      $ = cheerio.load(body)
      links = $('a').toArray()
      things = []
      for x, link of links
        things.push $(link)
      msg.send "#{things}"