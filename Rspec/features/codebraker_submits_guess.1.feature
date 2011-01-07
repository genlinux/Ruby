Feature: code-breaker submits guess

  The code-breaker submits a guess of four numbers.The game marks the guess with + and - signs.
  For each number in the guess that matches the number and position of a number in the secret code, the mark includes one +.
  For each number in the guess that matches the number that not position of a number in the secret code, a - is added to the mark.


Scenario: all exact matches
  Given the secret code is "1234"
  When I guess "1234"
  Then the mark should be "++++"

Scenario: 2 exact matches and 2 number matches
  Given the secret code is "2056"
  When I guess "2034"
  Then the mark should be "++--"

Scenario: 1 exact matches and 3 number numbers
  Given the secret code is "1234"
  When I guess "1423"
  Then the mark should be "+---"

Scenario: all number matches
  Given the secret code is "1234"
  When I guess "4321"
  Then the mark should be "----"

