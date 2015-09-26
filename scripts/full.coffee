module.exports = (robot) ->

  robot.hear /お腹いっぱい/i, (msg) ->
    msg.send "(　´)Д(｀)むしゃむしゃ"

  robot.hear /食べ過ぎた/i, (msg) ->
    msg.send "運動もしたほうがいいよ(*^^*)"
