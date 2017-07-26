# Description:
#   This script lets a bot roll dice for you.
#
module.exports = (robot) ->
  robot.hear /roll ([0-9]{1,3}d[0-9]{1,3})/i, (msg) ->
    dieType = msg.match[1].toLowerCase()
    dieNumbers = dieType.split('d')
    results = []
    for roll in [1..dieNumbers[0]]
      results.push(Math.floor(Math.random() * dieNumbers[1]) + 1)
    msg.send "I rolled #{dieNumbers[0]}d#{dieNumbers[1]} and the result was : #{results}"

  robot.hear /roll a d([0-9]{1,3})/i, (msg) ->
    dieNumbers = [1,msg.match[1]]
    results = []
    for roll in [1..dieNumbers[0]]
      results.push(Math.floor(Math.random() * dieNumbers[1]) + 1)
    msg.send "I rolled #{dieNumbers[0]}d#{dieNumbers[1]} and the result was : #{results}"