# Description
#   Web Scraper, Don't shoot the messenger!
#

request = require 'request'
cheerio = require 'cheerio'

module.exports = (robot) ->

  robot.hear /scrape (.*)/i, (msg) ->

    # set some defaults
    req = request.defaults(
      jar: true
      rejectUnauthorized: false
      followAllRedirects: true)

    req.get {
      url: msg.match[1]
      headers: 'User-Agent': 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/41.0.2228.0 Safari/537.36'
    }, (err, resp, body) ->
      # load the html into cheerio
      $ = cheerio.load(body)
      links = $('a').toArray()
      things = []
      for x, link of links
        things.push $(link)
      msg.send "#{things}"