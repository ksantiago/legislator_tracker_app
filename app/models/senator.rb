# == Schema Information
#
# Table name: senators
#
#  id         :integer          not null, primary key
#  name       :string(255)
#  state_id   :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Senator < ActiveRecord::Base
  attr_accessible :name, :state_id

  belongs_to :state
  # fixed // fixme: has_many needs underscore
  has_many :politics
  has_many :bills, :through => :politics
end
