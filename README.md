## Requirements
- In order to run the tool you need ruby 2.0 or higher
- Run "bundle install"
- If you are a windows user you need to run " gem install win32console "
- To run the tool simply run the jobs file in ruby (Type "ruby ./bin/jobs" if you are in the ruby-cli-job-finder directory)
# Indeed Job Scraper

Simple tool to scrape and find jobs from indeed.com

## Getting Started

You will need a terminal to run this in
Your terminal will need to have ruby 2.0 or higher installed (ruby 2.6.1p33 was used to create it)

Then download or clone from github

### Prerequisites

Run bundle install.

```
bundle install
```
If on windows you need to run install win32console.
```
gem install win32console
```
Check ruby version, should be 2.0 or higher. If not install ruby.
```
ruby -v
```

### Running the program

Navigate to the directory you put the download

```
cd ruby-cli-job-finder
```

Then run the jobs file in the bin folder

```
ruby ./bin/jobs
```

## Built With

* [Nokogiri](https://nokogiri.org) - Scraper used
* [OpenURI](https://ruby-doc.org/stdlib-2.7.1/libdoc/open-uri/rdoc/OpenURI.html)
* [Colorize](https://github.com/fazibear/colorize) - Used to change text color

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/Bboddy/ruby-cli-job-finder. This project is intended to be avalible to everyone to do what they want

## Authors

* **Bryce Boddy** - [Me](https://github.com/Bboddy)

## License

This project is licensed under the MIT License - see the [LICENSE.md](LICENSE.md) file for details
