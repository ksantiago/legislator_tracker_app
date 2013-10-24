class Election < ActiveRecord::Base
  belongs_to :user
  belongs_to :senator
  belongs_to :state
end
