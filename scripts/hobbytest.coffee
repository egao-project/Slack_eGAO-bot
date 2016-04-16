module.exports = (robot) ->

  robot.hear /趣味は？？？/i, (msg) ->

    msg.send "読書"
