class Ticket
  def price=(amount)
    if(amount * 100).to_i == amount * 100
    @price=amount
    else
    puts "The price seems to be malformed"
    end
  end
  def price
    @price
  end
end

#Setter methods don’t return what you might think. When you use the
#syntactic sugar that lets you make calls to = methods look like assign-
#ments, Ruby takes the assignment semantics seriously. Assignments (like
#x = 1) evaluate to whatever’s on their right-hand side. Methods usually
#        return the value of the last expression evaluated during execution. But =
#method calls behave like assignments: the value of the expression
#        ticket.price = 63.00 is 63.00, even if the ticket= method returns the
#        string “Ha ha!” The idea is to keep the semantics consistent. Under the
#        hood, it’s a method call; but it looks like an assignment and behaves like
#        an assignment with respect to its value as an expression
