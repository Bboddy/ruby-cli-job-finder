#interface for the program and user to interact
class Cli
  def run
  	puts "================================"
  	puts "==  " + "Welcome to My Job Finder".blue + "  =="
  	puts "==        " + "Enter a City".blue + "        =="
  	puts "==             " + "Or" + "             =="
  	puts "==   " + "Leave Blank for Random".red + "   =="
  	puts "================================"
  	@city = gets.strip
  	Scraper.get(@city)
    puts "=============================="
  	puts "=      " + "Enter the Number".blue + "      ="
  	puts "=         " + "of the Job".blue + "         ="
  	puts "=   " + "You Want Information on".blue + "  ="
  	puts "=    " + "Enter Nothing to Exit".red + "   ="
  	puts "=============================="
    input = gets.strip.to_i
  	Job.get_info_from_index(input)
  end
end
