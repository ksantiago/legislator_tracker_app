class StaticPagesController < ApplicationController

  def home
    if @user
      redirect_to "/states"
    end
  end

end
