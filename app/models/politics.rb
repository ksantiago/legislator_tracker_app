class Politics < ActiveRecord::Base

  belongs_to :senator
  belongs_to :bill
end
