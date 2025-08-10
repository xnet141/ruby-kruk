require 'selenium-webdriver'
require 'cgi'

class Animal
  attr_accessor :name

  def initialize(name)
    @name = name
  end

  def self.find(term = '') # Animal.find
    #options = Selenium::WebDriver::Options.chrome
    driver = Selenium::WebDriver.for :firefox #:chrome, options: options
    full_term = CGI.escape term + " " + self.name.downcase
    driver.navigate.to "https://ddg.gg/?q=#{full_term}"
  end

  def hi
    puts "Hi, my name is #{name}!"
  end
end

class Cat < Animal
end

c = Cat.new "Mr. Buttons"
c.hi

Cat.find 'serious'