module.exports = (robot) ->

  robot.hear /IN!/i, (msg) ->
    msg.send "いらしゃいませ！ 本日も頑張っていきまっしょい!!"

  robot.hear /OUT!/i, (msg) ->
    msg.send "お疲れ様でした！ 次回も頑張っていきまっしょい!!"
