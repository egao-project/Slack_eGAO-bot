module.exports = (robot) ->

  robot.hear /win/i, (msg) ->
    msg.send "Windowsだめ、絶対(´・ω・`)"
