class State < ActiveRecord::Base
  attr_accessible :name, :senator_id

  has_many :senators
end
