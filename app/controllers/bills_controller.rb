class BillsController < ApplicationController

  def index
    @bills = Bill.all
  end

  def new
    @bill = Bill.new
  end

  def create

    bill = params[:bill]
    name = bill[:name]
    Bill.create(bill)

    redirect_to('/bills')
  end

  def show
    id = params[:id]
    @bill = Bill.find(id)
  end

  def edit
    id = params[:id]
    @bill = Bill.find(id)
  end

  def update
    id = params[:id]
    bill = params[:bill]

    edited_bill = Bill.update(id, bill)
    redirect_to("/bills/#{id}")
  end

  def destroy
    id = params[:id]
    @bill = Bill.find(id)
    @bill.destroy
    redirect_to("/bills")
  end

end
