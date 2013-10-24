class StatesController < ApplicationController

  def index
    @states = State.all
  end

  def new
    @state = State.new
  end

  def create
    state = params[:state] #=> {:state_name => "new jersey"}
    # state1 = State.create(:state_name => "new jersey")
    State.create(state)

    redirect_to('/states')
  end

  def show
    id = params[:id]
    @state = State.find(id)
    name = @state.name

    url = "http://congress.api.sunlightfoundation.com"
    method="/legislators?per_page=all"
    @results = HTTParty.get(url+method+"&apikey=#{ENV['sunlight_key']}")["results"].select { |result| result['state_name'] == "#{@state.name}"}

  end

  def edit
    id = params[:id]
    @state = State.find(id)

  end

  def update
    #/states/:id
    id = params[:id]
    state = State.find(id)
    # params = { :name => "new jersey" }
    state.update_attributes(params[:state])
    redirect_to(state)
  end

  def destroy
    id = params[:id]
    state = State.find(id)
    state.destroy
    redirect_to('/states')
  end

end
