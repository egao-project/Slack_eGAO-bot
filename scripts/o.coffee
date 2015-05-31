module.exports = (robot) ->

  robot.hear /がんばるぞ/i, (msg) ->
    msg.send "おー！"

