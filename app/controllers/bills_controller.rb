class BillsController < ApplicationController

  def index
    @bills = Bill.all
  end

  def new
    @bill = Bill.new
  end

  def create
    bill = params[:bill]
    Bill.create(bill)

    redirect_to('/bills')
  end

  def show
    url = "http://congress.api.sunlightfoundation.com"
    method="/bills?history.active=true&order=last_action_at"
    @results = HTTParty.get(url+method+"&apikey=#{ENV['sunlight_key']}")["results"]
  end

  def edit
    id = params[:id]
    @bill = Bill.find(id)
  end

  def update
    # fixed // fixme: use proper update_attributes
    id = params[:id]
    bill = Bill.find(id)

    bill.update_attributes(params[:bill])
    redirect_to(bill)
  end

  def destroy
    id = params[:id]
    bill = Bill.find(id)
    bill.destroy
    redirect_to("/bills")
  end

end
