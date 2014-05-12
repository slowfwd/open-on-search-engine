Query = require('./query');

module.exports =

  class GithubQuery extends Query
    constructor: ->
      super

      @url = 'https://www.github.com/search?q='
