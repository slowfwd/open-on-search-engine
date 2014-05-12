Query = require('./query');

module.exports =

  class GoogleQuery extends Query
    constructor: ->
      super

      @url = 'https://www.google.com/search?q='
