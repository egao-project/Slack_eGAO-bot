module.exports = (robot) ->

  robot.hear /木更津/i, (msg) ->
    num = Math.floor(Math.random() * 4) + 1
    res = ""

    switch num
      when 1
        res = "http://www.31op.com/kisarazu/"
      when 2
        res = "きゃっつあい(´・ω・｀)"
      when 3
        res = "きゃっつあい(´・ω・｀)"
      when 4
        res = "http://www.city.kisarazu.lg.jp/"
      when 5
        res = "http://loca.ash.jp/show/2002/d200201_cats.htm"
      else
        res = "きゃっつあい(´・ω・｀)"

    msg.send res
