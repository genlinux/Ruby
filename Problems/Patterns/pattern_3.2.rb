#New requirment : formatting object needs to produce plain text
class Report
  def initialize
    @title ='Monthly Report'
    @text = ['Things are going','really , fine.']
  end
  def output_report(format)
    if format.eql?(:plain)
      puts("**** #{@title} ****")
    elsif format.eql?(:html)
      puts('<html>')
      puts('<head>')
      puts("<title>#{@title}</title>")
      puts('</head>')
      puts('<body>')
    else
      raise "Unknown format : #{format}"
    end
    @text.each do |line|
      if format==:plain
        puts(line)
      else
        puts("<p>#{line}</p>")
      end
    end
    if format.eql?(:html) 
      puts ('</body>')
      puts ('</html>')
    end
  end
end