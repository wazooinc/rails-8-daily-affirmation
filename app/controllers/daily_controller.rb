class DailyController < ApplicationController
  def index
    affirmations = Affirmation.all

    @affirmation = affirmations.sample

    url = "#{@affirmation.url}?translation=#{@affirmation.translation}"
    
    #debugger
    
    response = HTTParty.get(url)

    body = JSON.parse(response.body)
    @verses = body["verses"]


  end
end