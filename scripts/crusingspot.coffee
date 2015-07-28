module.exports = (robot) ->

  robot.hear /あっー/i, (msg) ->
    msg.send "あ”っー！(*^^*)"

  robot.hear /あ”っー/i, (msg) ->
    msg.send "あ”っーーーー！！"

  robot.hear /あ"っー/i, (msg) ->
    msg.send "あ”っーーーー！！"

  robot.hear /あ"っーーーー/i, (msg) ->
    msg.send "あ”っーーーーーーーー！！あ”っーーーーー！！！"

  robot.hear /や　ら　な　い　か/i, (msg) ->
    msg.send "https://www.youtube.com/watch?v=6Sosfh60448"
