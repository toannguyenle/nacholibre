class HomeController < ApplicationController
  def index
    require 'nokogiri'
    require 'open-uri'
    # Get a Nokogiri::HTML::Document for the page we’re interested in...
    doc = Nokogiri::HTML(open('http://catalog.lapl.org/carlweb/jsp/DoSearch?databaseID=965&initialsearch=true&count=10&finish=search_page.jsp&mode=manual&terms=ruby+on+rails&Search=Search&index=w'))

    doc.css('.titleListTitle').each do |link|
      puts '#####LINK CONTENT##########'
      puts link.content
    end
    puts '####DOC##########################'
    puts doc
    render html: doc
  end
end



