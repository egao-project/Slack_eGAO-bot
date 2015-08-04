module.exports = (robot) ->

  robot.hear /wwww/i, (msg) ->
    msg.send "超ウケルｗｗｗｗ"

  robot.hear /wwwww/i, (msg) ->
    msg.send "爆笑wwwww腹痛いｗｗｗｗｗ"

  robot.hear /ｗｗｗｗ/i, (msg) ->
    msg.send "草不可避ｗｗウケルんですけどｗｗｗｗ"

  robot.hear /ｗｗｗｗｗ/i, (msg) ->
    msg.send "爆笑wwwやばｗｗｗｗ"
