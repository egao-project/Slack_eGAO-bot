module.exports = (robot) ->

  robot.hear /don/i, (msg) ->
    msg.send "ドーン！"
