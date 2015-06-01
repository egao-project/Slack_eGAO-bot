module.exports = (robot) ->

  robot.hear /おやすみ/i, (msg) ->
    msg.send "おやすみなさい(´・ω・｀)"

  robot.hear /お休み/i, (msg) ->
    msg.send "おやすみなさい(*^^*)"
