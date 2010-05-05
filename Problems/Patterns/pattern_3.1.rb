#Varying the algorithm with the template method
class Report
  def initialize
    @title ='Monthly Report'
    @text = ['Things are going','really , fine.']
  end
  def output_report
    puts('<html>')
    puts('<head>')
    puts("<title>#{@title}</title>")
    puts('</head>')
    puts('<body>')
    @text.each{|line|  puts("<p>#{line}</p>")}
    puts ('</body>')
    puts ('</html>')
  end
end