class Good
  puts "Please type the book price"
  price=gets.to_i
  def initialize(name,price,count)
    @name=name
    @count=count
    @price=price
  end
  
end