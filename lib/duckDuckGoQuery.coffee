Query = require('./query');

module.exports =

  class DuckDuckGoQuery extends Query
    constructor: ->
      super

      @url = 'https://duckduckgo.com/?q='
