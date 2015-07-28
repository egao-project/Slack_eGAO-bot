module.exports = (robot) ->

  robot.hear /メンディーとは/i, (msg) ->
    msg.send "メンディー、それは大滝さんです！(*^^*)"
