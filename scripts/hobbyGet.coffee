
module.exports = (robot) ->

  robot.hear /(.*)さんの趣味は何？/i, (msg) ->

    user = msg.match[1].split("@")[1]

    Sequelize = require 'sequelize'
    sequelize = new Sequelize 'mysql://bc102bac352f71:14ea5a66@us-cdbr-iron-east-02.cleardb.net/heroku_884b40b85614dd1'
    sequelize.query("SELECT hobby FROM t_hobby WHERE user=\'#{user}\'", {type:sequelize.QueryTypes.SELECT}).then (rows) ->
#    sequelize.query("SELECT * FROM t_hobby", {type:sequelize.QueryTypes.SELECT}).then (rows) ->
      hobby = rows[0].hobby
    msg.send """
    @#{user} さんの趣味は、#{hobby}だよ！
    """
