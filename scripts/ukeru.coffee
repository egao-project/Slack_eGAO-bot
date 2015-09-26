module.exports = (robot) ->

  robot.hear /www/i, (msg) ->
    msg.send "ウケるｗｗ"

  robot.hear /wwww/i, (msg) ->
    msg.send "超ウケるんですけどｗｗｗｗ"

  robot.hear /ｗｗｗｗ/i, (msg) ->
    msg.send "草不可避ｗｗまじウケルんですけどｗｗｗ"
