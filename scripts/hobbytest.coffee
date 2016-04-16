
module.exports = (robot) ->

  robot.hear /さんの趣味は/i, (msg) ->

    user = msg.split("さんの");
    user = user[0].split("@");
    user = user[1];

    msg.send user
