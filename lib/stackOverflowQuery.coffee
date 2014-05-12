Query = require('./query');

module.exports =

  class StackOverflowQuery extends Query
    constructor: ->
      super

      @url = 'https://www.stackoverflow.com/search?q='
