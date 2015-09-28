module.exports = (robot) ->

  robot.hear /ｗｗｗ/i, (msg) ->
    msg.send "ウケるｗｗ"

  robot.hear /ｗｗｗｗ/i, (msg) ->
    msg.send "超ウケるんですけどｗｗｗｗ"

  robot.hear /wwww/i, (msg) ->
    msg.send "草不可避ｗｗまじウケルんですけどｗｗｗ"
