#If you run cucumber now, you’ll see the same error because Cucumber
#isn’t loading game.rb yet. The conventional approach to this is to have
#a file in the lib directory named for the top level module of the app. In
#our case, that’s codebreaker.rb.
require 'codebreaker/game'

