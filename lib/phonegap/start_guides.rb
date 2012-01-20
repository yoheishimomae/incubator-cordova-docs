require 'rubygems'
require 'nokogiri'
require 'fileutils'

class StartGuides
  attr_accessor :header_title
  attr_accessor :filename
  
  def initialize
    @input_filename  = 'guides.md.html'
    @output_filename = 'guides.html'
    @header_title    = 'Getting Started'
  end
  
  def run(filename)
    return false unless File.basename(filename) == @input_filename
    
    doc = Nokogiri::HTML(File.read(filename))
    
    element = doc.css('#subheader > h1')[0]
    element.content = @header_title unless element.nil?
    
    File.open(filename, 'w') { |file| file.write doc.to_html }
    
    FileUtils.mv(filename, File.join(File.dirname(filename), @output_filename))
    
    return true
  end
end