Feature: code-breaker submits guess

  The code-breaker submits a guess of four numbers.The game marks the guess with + and - signs.
  For each number in the guess that matches the number and position of a number in the secret code, the mark includes one +.
  For each number in the guess that matches the number that not position of a number in the secret code, a - is added to the mark.

Scenario Outline: submit guess
   Given the secret code is "<code>"
   When I guess "<guess>"
   Then the mark should be "<mark>"

Scenarios: mo matches
   |code|guess|mark|
   |1234|5679 |    |


Scenarios: 1 number correct
   |code|guess|mark|
   |1234|1555 |+   |
   |1234|2555 |-   |

Scenarios: 2 numbers correct
   |code|guess|mark|
   |1234|5254 |++   |
   |1234|5154 |+-   |

Scenarios: 3 numbers correct
  | code | guess | mark |
  | 1234 | 5234 | +++ |
  | 1234 | 5134 | ++- |
  | 1234 | 5124 | +-- |
  | 1234 | 5123 | --- |
Scenarios: all numbers correct
  | code | guess | mark |
  | 1234 | 1234 | ++++ |
  | 1234 | 1243 | ++-- |
  | 1234 | 1423 | +--- |
  | 1234 | 4321 | ---- |
  | 1234 | 2543 | ---- |

