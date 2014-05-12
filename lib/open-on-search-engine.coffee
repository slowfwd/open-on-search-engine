DuckDuckGoQuery = require('./duckDuckGoQuery');
GithubQuery = require('./githubQuery');
GoogleQuery = require('./googleQuery');
StackOverflowQuery = require('./stackOverflowQuery');
YahooQuery = require('./yahooQuery');

module.exports =
  activate: ->
    atom.workspaceView.command "open-on-search-engine:search-duck-duck-go",
      => @searchDuckDuckGo()
    atom.workspaceView.command "open-on-search-engine:search-github",
      => @searchGithub()
    atom.workspaceView.command "open-on-search-engine:search-google",
      => @searchGoogle()
    atom.workspaceView.command "open-on-search-engine:search-stack-overflow",
     => @searchStackOverflow()
    atom.workspaceView.command "open-on-search-engine:search-yahoo",
      => @searchYahoo()

  getSelectedText: ->
    # This assumes the active pane item is an editor
    editor = atom.workspace.activePaneItem
    selection = editor.getSelection()
    text = selection.getText()

  searchDuckDuckGo: ->
    duckDuckGoQuery = new DuckDuckGoQuery @getSelectedText()
    duckDuckGoQuery.execute()

  searchGithub: ->
    githubQuery = new GithubQuery @getSelectedText()
    githubQuery.execute()

  searchGoogle: ->
    googleQuery = new GoogleQuery @getSelectedText()
    googleQuery.execute()

  searchStackOverflow: ->
    stackOverflowQuery = new StackOverflowQuery @getSelectedText()
    stackOverflowQuery.execute()

  searchYahoo: ->
    yahooQuery = new YahooQuery @getSelectedText()
    yahooQuery.execute()
