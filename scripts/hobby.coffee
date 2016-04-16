
module.exports = (robot) ->

  robot.hear /さんの趣味は/i, (msg) ->

    if msg.indexOf("です。")
      hobby = msg.split("趣味は");
      hobby = hobby[1].split("です");

      Sequelize = require 'sequelize'
      sequelize = new Sequelize 'mysql://bc102bac352f71:14ea5a66@us-cdbr-iron-east-02.cleardb.net/heroku_884b40b85614dd1'
      sequelize.query("UPDATE t_hobby SET hobby=\'#{hobby}\' WHERE user=\'#{msg.message.user.name}\'").spread ->
        msg.send """
        っしゃー！ @#{msg.message.user.name} の趣味を覚えた！うおー！
        """
    else
      Sequelize = require 'sequelize'
      sequelize = new Sequelize 'mysql://bc102bac352f71:14ea5a66@us-cdbr-iron-east-02.cleardb.net/heroku_884b40b85614dd1'
      sequelize.query("SELECT * FROM t_hobby WHERE user=\'#{msg.message.user.name}\'", {type:sequelize.QueryTypes.SELECT}).then (rows) ->
        hobby = rows[0].hobby
        msg.send """
        @#{msg.message.user.name} さんの趣味は、#{hobby}です！
        """
