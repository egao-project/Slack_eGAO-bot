module.exports = (robot) ->

  robot.hear /IN!/i, (msg) ->
    msg.send msg.random [
    	"いらっしゃいませ！ 本日も頑張っていきまっしょい!!",
    	"おいでませ　本日もおきばりやす"
    	"Wellcome to HELL!"
    ]

  robot.hear /OUT!/i, (msg) ->
    msg.send "お疲れ様でした！ 次回も頑張っていきまっしょい!!"
