class Senator < ActiveRecord::Base
  attr_accessible :name, :state_id

  belongs_to :state
  has_many :bills, :through => :politics
end
