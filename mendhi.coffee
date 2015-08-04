module.exports = (robot) ->

  robot.hear /メンディーとは/i, (msg) ->
    msg.send "メンディー、それは大滝さんです！(*^^*)"

  robot.hear /マンデーとは/i, (msg) ->
    msg.send "ちょｗｗそれただの月曜日やしｗｗｗ"
