class ScrapesController < ApplicationController
  require "json"
  def index
    file = open("#{Rails.public_path}/scrape.json")
    file = file.read
    @scrapes = JSON.parse(file)
  end
end
