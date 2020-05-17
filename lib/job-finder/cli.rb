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
    puts "=     " + "Type Exit to Exit".red + "      ="
    puts "=============================="

    input = ""
    i = 0

    while input.downcase.strip != "exit"
      if i != 0
        puts "=============================="
        puts "=   " + "Type Another Number or".blue + "   ="
        puts "=             " + "Or" + "             ="
        puts "=     " + "Type Exit to Exit".red + "      ="
        puts "=============================="
      end
      input = gets.strip
      if input.downcase.strip == "exit"
        exit
      elsif input.to_i < 1 || input.to_i > Job.all.count
        puts "Job Not Found".red
      else
    	   Job.get_info_from_index(input)
      end
      i += 1
    end
  end
end
