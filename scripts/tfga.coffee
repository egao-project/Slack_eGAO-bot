module.exports = (robot) ->

  robot.hear /IN!/i, (msg) ->
    msg.send "いらしゃいませ！ 本日も頑張っていきまっしょい!!"

