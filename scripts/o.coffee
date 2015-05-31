module.exports = (robot) ->

  robot.hear /がんばるぞ/i, (msg) ->
    msg.send "おー！"

  robot.hear /頑張るぞ/i, (msg) ->
    msg.send "おー！"
