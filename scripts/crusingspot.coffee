module.exports = (robot) ->

  robot.hear /あっー/i, (msg) ->
    msg.send "あ”っー！(*^^*)"

  robot.hear /あ”っー/i, (msg) ->
    msg.send "あ”っーーーー！！"
