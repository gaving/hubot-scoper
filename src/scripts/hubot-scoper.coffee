# Description:
#   Rise of the Phoenix
#
# Dependencies:
#   None
#
# Configuration:
#   None
#
# Commands:
#   None
#
# Notes:
#   Copyright (c) 2014 Mike Quinn
#   Licensed under the MIT license.
#
# Author:
#   halkeye

'use strict'
moment = require 'moment'
c = require 'irc-colors'

module.exports = (robot) ->
    robot.hear (new RegExp("^h(i|[ei]ya?|ello)\\s+(there\\s+?)?(scoper|hubot|#{robot.name})", 'i')), (res) ->
        res.send "hey there #{res.message.user.name}"
    robot.hear /^(\.l|l|lunch)$/i, (res) ->
        res.send moment('12:00', 'HH:mm').fromNow()
    robot.hear /^(\.rh|rh|hometime|realhometime)$/i, (res) ->
        res.send moment('15:30', 'HH:mm').fromNow()
    robot.hear /(long morning)/i, (res) ->
        res.send "never mind, lunch " + moment('12:00', 'HH:mm').fromNow()
    robot.hear /^(\.coffee|\.tea)/i, (res) ->
        res.send c.rainbow(res.message.text.substr(1))
    robot.hear /(\.pack|\.dave)/i, (res) ->
        res.send c.rainbow('Pack it up pack it in let me begin\nI came to win Battle me thats a sin')
    robot.hear /(diplomatic incident)/i, (res) ->
        res.send c.rainbow('Diplomatic Immunity<snort> BLAM "It\'s just been revoked"')
