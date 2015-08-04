module.exports = (robot) ->

  robot.hear /wwww/i, (msg) ->
    msg.send "超ウケルｗｗｗｗ"

  robot.hear /ｗｗｗｗ/i, (msg) ->
    msg.send "草不可避ｗｗウケルんですけどｗｗｗｗ"
