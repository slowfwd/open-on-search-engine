Query = require('./query');

module.exports =

  class YahooQuery extends Query
    constructor: ->
      super

      @url = 'http://search.yahoo.com/search?p='
