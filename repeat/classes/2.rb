require 'selenium-webdriver'
require 'cgi'

module UrlGenerator
  def prepare_uri(str)
    full_term = CGI.escape str + " " + self.name.downcase
  end
end

class Animal
  # extend UrlGenerator
  attr_accessor :name

  def initialize(name)
    @name = name
  end

  class << self
    include UrlGenerator
    def find(term = '')
      driver = Selenium::WebDriver.for :firefox 
      full_term = CGI.escape term + " " + self.name.downcase
      driver.navigate.to "https://ddg.gg/?q=#{full_term}"
    end
  end

  # def self.find(term = '') # Animal.find
    #options = Selenium::WebDriver::Options.chrome
    # driver = Selenium::WebDriver.for :firefox #:chrome, options: options
    # full_term = CGI.escape term + " " + self.name.downcase
    # driver.navigate.to "https://ddg.gg/?q=#{full_term}"
  # end

  def hi
    puts "Hi, my name is #{name}!"
  end
end

class Cat < Animal
  class << self
    attr_accessor :avg_height
  end
end

# puts Animal.singleton_class.instance_methods.grep /fi/

# c = Cat.new "Mr. Buttons"
# c.hi

# Cat.find 'serious'

Cat.avg_height = 20
p Cat.avg_height

puts Cat.prepare_uri 'dsd'

p Cat.singleton_methods