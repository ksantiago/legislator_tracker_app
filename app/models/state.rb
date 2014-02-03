# == Schema Information
#
# Table name: states
#
#  id         :integer          not null, primary key
#  name       :string(255)
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class State < ActiveRecord::Base
  attr_accessible :name, :senator_id, :user_id

  has_many :senators
  belongs_to :user
end
