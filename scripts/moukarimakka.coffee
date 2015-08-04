module.exports = (robot) ->

  robot.hear /もうかりまっか/i, (msg) ->
    num = Math.floor(Math.random() * 10) + 1
    res = ""

    switch num
      when 1
        res = "ぼちぼちでんな"
      when 2
        res = "めちゃ儲かってます"
      when 3
        res = "あきまへんな"
      when 4
        res = "よろしゅうおます"
      when 5
        res = "あかんわ"
      when 6
        res = "やばたん"
      when 7
        res = "堪忍しとくんなはれ"
      when 8
        res = "(´・ω・`)"
      when 9
        res = "(*^^*)"
      when 10
        res = "笑いとまりまへんがな"
      else
        res = "ぼちぼちでんがな"

    msg.send res
