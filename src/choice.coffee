# Description
#   A hubot script that choice one
#
# Configuration:
#   LIST_OF_ENV_VARS_TO_SET
#
# Commands:
#   hubot hello - <what the respond trigger does>
#   orly - <what the hear trigger does>
#
# Notes:
#   <optional notes required for the script>
#
# Author:
#    <ima@example.com>

module.exports = (robot) ->
  robot.hear /(.+)から選んで/, (msg) ->
    items = msg.match[1].split(/[　.、\s]+/)
    item = msg.random items
    msg.reply "#{item}で！"
