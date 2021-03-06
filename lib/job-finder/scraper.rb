#service file to grab all the needed information from indeed.com
class Scraper
  def self.get(city)
    randomCity = ["Chicago","Houston","Phoenix","Philadelphia","Dallas","Austin","Jacksonville","Columbus","Charlotte","Indianapolis","Seattle","Denver","Washington"]
    # Large list of citys to pull from
    if city.strip == ""
      city = randomCity.sample.strip
    end
    puts "Getting jobs for " + "#{city}".blue
  	url = "https://www.indeed.com/l-#{city.split.join}-jobs.html"
  	html = open(url)
  	doc = Nokogiri::HTML.parse(html)
  	listings = doc.css('div.jobsearch-SerpJobCard')
  	listings.each.with_index(1) do |listing, index|
  		title = listing.css('.title').text.strip
  		company = listing.css('.company').text.strip
  		pay = listing.css('.salaryText').text.strip
  		desc = listing.css('.summary').text.strip
      Job.new(title,company,pay,desc,index)
  		puts "Job #{index} is : ".blue + "#{title.strip}"
  	end
  	return
  end
end
