module.exports = (robot) ->

  robot.hear /list manual/i, (msg) ->
    msg.send "Mac用メールアカウント設定方法.doc /n　https://app.box.com/s/e8z8gw01iyte4emn9i58mae39s4g0rc0 /n Slackの使い方.ppt /	n　https://app.box.com/s/tkuzhhl8g2mco4j4kssmovgkt3mmsxty /n boxマニュアル.docx /n　https://app.box.com/s/lnwn324qj5fauvv1mo177oc3xze1ginx /n boxアカウント追加.xlsx /n　https://app.box.com/s/cfmrjhgs5i1jtibcpsorbmveai9tlw3k /n 勤務表(社内向)について.ppt /n　https://app.box.com/s/spnm2zt9c1oqsxoqncdmf8nxtkkwtzgf /n メール設定方法.ppt /n　https://app.box.com/s/pgaih30l3qp7g2hewa8i82w1xsd5rx0n /n メーリングリスト登録削除手順書.pdf /n　https://app.box.com/s/cdnst9m0324f9pmpn5eoqfb8kj14w32w"
