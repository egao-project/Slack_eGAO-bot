module.exports = (robot) ->

  robot.hear /寝坊してしま/i, (msg) ->
    msg.send "寝坊ｗｗ"
