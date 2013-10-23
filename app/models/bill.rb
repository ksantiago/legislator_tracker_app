class Bill < ActiveRecord::Base
  attr_accessible :name, :senator_id

  has_many :politics
  has_many :senators, :through => :politics
end
