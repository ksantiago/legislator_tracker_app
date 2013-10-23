class SenatorsController < ApplicationController

  def index
    @senators = Senator.all
  end

  def new
    @senator = Senator.new
  end

  def create
    senator = params[:senator]
    name = senator[:name]
    Senator.create(name: name)

    redirect_to('/senators')
  end

  def show
    id = params[:id]
    @senator = Senator.find(id)
    @senator.save
  end

  def edit
    id = params[:id]
    @senator = Senator.find(id)
  end

  def update
    id = params[:id]
    senator = params[:senator]
    name = senator[:name]

    edited_senator = Senator.update(id, name: name)
    redirect_to("/senators/#{id}")
  end

  def destroy
    id = params[:id]
    @senator = Senator.find(id)
    @senator.destroy
    redirect_to('/senators')
  end

end
