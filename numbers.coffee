# Description: 
#   These scripts allow a bot to generate random numbers 
#   Note that the GUID function generates v4 UUIDs, that are randomly generated, but not "globally unique" due to Javascript
#

module.exports = (robot) ->
  robot.hear /(?:gimme|give me|give)?\s?a?\s?(?:random)?\s?number\s?(?:under|below|between|from)?\s?([0-9]*)\s?(?:and|to)?\s?([0-9]*)/i, (msg) ->
    defaultLimit = 9999
    limit1 = parseInt(msg.match[1])
    limit2 = parseInt(msg.match[2])
    
    if (isNaN(limit1) and isNaN(limit2)) 
        msg.send (Math.floor(Math.random() * defaultLimit) + 1)
    else if (!isNaN(limit1) and isNaN(limit2))
        msg.send (Math.floor(Math.random() * limit1) + 1)
    else if (isNaN(limit1) and !isNaN(limit2))
        msg.send (Math.floor(Math.random() * limit2) + 1)    
    else
        msg.send (Math.floor(Math.random() * (limit2-limit1)) + limit1)

  robot.hear /(?:gimme|give me|give)?\s?a?\s?(?:random)?\s?(guid|uuid)/i, (msg) ->
    s1 = (((1+Math.random())*0x10000)|0).toString(16).substring(1)
    s2 = (((1+Math.random())*0x10000)|0).toString(16).substring(1)
    s3 = (((1+Math.random())*0x10000)|0).toString(16).substring(1)
    s4 = '4'+(((1+Math.random())*0x10000)|0).toString(16).substring(1).substr(0,3)
    s5 = (((1+Math.random())*0x10000)|0).toString(16).substring(1)
    s6 = (((1+Math.random())*0x10000)|0).toString(16).substring(1)
    s7 = (((1+Math.random())*0x10000)|0).toString(16).substring(1)
    s8 = (((1+Math.random())*0x10000)|0).toString(16).substring(1)

    msg.send s1+s2+'-'+s3+'-'+s4+'-'+s5+'-'+s6+s7+s8