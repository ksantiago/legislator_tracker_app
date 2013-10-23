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
    name = state[:name]
    State.create(state)

    redirect_to('/states')
  end

  def show
    id = params[:id]
    @state = State.find(id)
    @state.save
  end

  def edit
    id = params[:id]
    @state = State.find(id)

  end

  def update
    id = params[:id]
    state = params[:state]
    name = state[:name]

    edited_state = State.update(id, state)
    redirect_to("/states/#{id}")
  end

  def destroy
    id = params[:id]
    @state = State.find(id)
    @state.destroy
    redirect_to('/states')
  end

end
