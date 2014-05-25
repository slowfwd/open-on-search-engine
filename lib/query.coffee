module.exports =

  class Query
    constructor: (@text) ->
      if @text
        @text = @sanitize @text

    execute: ->
      if not @text
        # remove the path and query
        parse = require('url').parse
        parsedUrl = parse(@url)
        @url = parsedUrl.protocol + '//' + parsedUrl.host
      else
        @url = @url + @text
      shell = require('shell')
      shell.openExternal(@url)

    sanitize: ->
      # get rid of multiple spaces
      @text = @text.replace /\s+/g, ' '
      # replace spaces with pluses
      @text = @text.replace /\s/g, '+'
