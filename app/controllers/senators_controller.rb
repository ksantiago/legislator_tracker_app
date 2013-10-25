class SenatorsController < ApplicationController

  def index
    @senators = Senator.all
    # fixed //store api keys in environmental variables. also, learn what that means.

    url = "http://congress.api.sunlightfoundation.com"
    method="/legislators?per_page=all"

    @results = HTTParty.get(url+method+"&apikey=#{ENV['sunlight_key']}")["results"]

  end

  def new
    @senator = Senator.new
  end

  def create
    # fixed // optimize: change this to Senator.create(params[:sentator])
    senator = params[:senator]
    Senator.create(senator)

    redirect_to('/senators')
  end

  def show
    @id = params[:id]
    url = "http://congress.api.sunlightfoundation.com"
    method="/legislators?per_page=all"
    @results = HTTParty.get(url+method+"&apikey=#{ENV['sunlight_key']}")["results"].select { |result| result['bioguide_id'] == "#{@id}" }

    committee="/committees?member_ids=#{@id}"
    @committees = HTTParty.get(url+committee+"&apikey=#{ENV['sunlight_key']}")["results"]

    words_url = "http://capitolwords.org/api/1"
    words = "/phrases.json?entity_type=legislator&entity_value=#{@id}"
    @phrases = HTTParty.get(words_url+words+"&apikey=#{ENV['sunlight_key']}")

  end

  def edit
    id = params[:id]
    @senator = Senator.find(id)
  end

  def update
    id = params[:id]
    senator = Senator.find(id)
    name = senator[:name]

    senator.update_attributes(params[:senator])
    redirect_to(senator)
  end

  def destroy
    id = params[:id]
    senator = Senator.find(id)
    senator.destroy
    redirect_to('/senators')
  end

end
