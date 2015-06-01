# linestamp.coffee
#
# Description:
#   Search & post LINE stamps for Hubot.
#   https://gist.github.com/kakajika/08efafb64427cda8ce13
#
# Commands:
#   hubot stamp 
 
client = require 'cheerio-httpcli'
 
 
class StampSearcher
  urlBase = 'http://www.stampick.com/?s='
 
  constructor: ->
 
  search: (query, callback) ->
    url = "#{urlBase}#{query}"
    console.log url
    client.fetch url, (err, $, res) ->
      if err
        return console.log(err)
 
      stampUrls = Array()
      stampBoxes = $('.stampBox').each ->
        stampUrls.push $(@).find('img').attr('data-original')
 
      callback(stampUrls)
 
 
module.exports = (robot) ->
 
  robot.respond /stamp (.+)/i, (msg) ->
    query = msg.match[1]
 
    new StampSearcher().search query, (results) ->
      if results && results.length > 0
        index = Math.floor(Math.random() * results.length)
        url = results[index]
        msg.send "スタンプ「#{query}」No.#{index+1}\n#{url}"
      else
        msg.send "スタンプ「#{query}」 見つからないな…"