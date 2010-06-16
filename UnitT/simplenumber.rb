#Simple ruby unit test
class SimpleNumber
def initialize(num)
raise unless num.is_a?(Numeric)
@x=num
end
def add(y)
@x+y
end
def mutiply(y)
@x*y
end
end
