module.exports = (robot) ->

  robot.hear /IN!/i, (msg) ->
    greeting = msg.random [
      "Hi! いらっしゃいませ！ 本日も頑張っていきまっしょい!!",
      "Hi! おいでませ　本日もおきばりやす",
      "Hi! Welcome to HELL!",
      "Hi! べ、べつに @#{msg.message.user.name} に会いたかったわけじゃないんだから！"
    ]
    startTime = new Date/1000|0
#   msg.send #{startTime}
    Sequelize = require 'sequelize'
    sequelize = new Sequelize 'mysql://bc102bac352f71:14ea5a66@us-cdbr-iron-east-02.cleardb.net/heroku_884b40b85614dd1'
    sequelize.query("UPDATE t_tfga_timecount SET startTime=\'#{startTime}\' WHERE user=\'#{msg.message.user.name}\'").spread ->
      msg.send """
      Hi! @#{msg.message.user.name} の開始時刻を記録！
      #{greeting}
      """


  robot.hear /OUT!/i, (msg) ->
    elapsedTime = ""
    endTime = new Date/1000|0
#   msg.send "#{endTime}"

    Sequelize = require 'sequelize'
    sequelize = new Sequelize 'mysql://bc102bac352f71:14ea5a66@us-cdbr-iron-east-02.cleardb.net/heroku_884b40b85614dd1'
    sequelize.query("SELECT * FROM t_tfga_timecount WHERE user=\'#{msg.message.user.name}\'", {type:sequelize.QueryTypes.SELECT}).then (rows) ->
      startTime = rows[0].startTime
      Num01 = endTime - startTime
      Num02 = Num01 / 3600 * 10
      Num03 = Math.floor(Num02)
      elapsedTime = Num03 / 10  
      msg.send """
      @#{msg.message.user.name} は、#{elapsedTime}時間がんばったよ。お疲れ様！
      次回も頑張っていきまっしょい!!
      """



