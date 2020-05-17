class Job
	attr_accessor :title , :company , :pay , :url , :desc , :index
	@@all = []
	def initialize(title,company,pay,url,desc,index)
		@title = title
		@company = company
		@pay = pay
		@url = url
		@desc = desc
		@index = index
		@@all << self
	end

	def self.all
		@@all
	end

	def self.get_info_from_index(input)
		self.all.each do |job|
			if job.index == input
				if job.title == ""
					puts "Job Title: ".blue + "No Information Provided".red
				else
					puts "Job Title: ".blue + "#{job.title}"
				end
				if job.company == ""
	      	puts "Job Offered By: ".blue + "No Information Provided".red
				else
					puts "Job Offered By: ".blue + "#{job.company}"
				end
				if job.pay == ""
	      	puts "Job Sallary: ".blue + "No Information Provided".red
				else
					puts "Job Sallary: ".blue + "#{job.pay}"
				end
				if job.desc == ""
	      	puts "Job Description: ".blue + "No Information Provided".red
				else
					puts "Job Description: ".blue + "#{job.desc}"
				end
			end
		end
		puts "Could not find that job please choose another (1-15)"
	end
end
