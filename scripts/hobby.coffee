
module.exports = (robot) ->

  robot.hear /さんの趣味は(.*)/i, (msg) ->

    #hobbymsg = msg.match[0]
    msg.send msg.match[0]
###    user = hobbymsg.split("さんの")
    user = user[0].split("@")
    user = user[1]
    st = hobbymsg.indexOf("@")
    ed = hobbymsg.lastIndexOf("さんの")
    user = msg[st..ed]

    #@userさんの趣味はhobbyです。
    if hobbymsg.indexOf("です。") not -1
      hobby = hobbymsg.split("趣味は")
      hobby = hobby[1].split("です")

      Sequelize = require 'sequelize'
      sequelize = new Sequelize 'mysql://bc102bac352f71:14ea5a66@us-cdbr-iron-east-02.cleardb.net/heroku_884b40b85614dd1'
      sequelize.query("UPDATE t_hobby SET hobby=\'#{hobby[0]}\' WHERE user=\'#{user}\'").spread ->
        msg.send """
        っしゃー！ @#{msg.message.user.name} の趣味を覚えた！うおー！
        """
    #@userさんの趣味は？
    else if hobbymsg.indexOf("？") not -1
      Sequelize = require 'sequelize'
      sequelize = new Sequelize 'mysql://bc102bac352f71:14ea5a66@us-cdbr-iron-east-02.cleardb.net/heroku_884b40b85614dd1'
      sequelize.query("SELECT * FROM t_hobby WHERE user=\'#{user}\'", {type:sequelize.QueryTypes.SELECT}).then (rows) ->
        if rows.count is 0
          msg.send "だれですかそれ(*^^*)"
        hobby = rows[0].hobby
        msg.send """
        @#{msg.message.user.name} さんの趣味は、#{hobby}です！
        """
    else###
#      msg.send "いい趣味ですね(*^^*)"
#      msg.send hobbymsg
