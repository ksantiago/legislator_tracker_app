# == Schema Information
#
# Table name: bills
#
#  id         :integer          not null, primary key
#  name       :string(255)
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Bill < ActiveRecord::Base
  attr_accessible :name, :senator_id

  has_many :politics
  has_many :senators, :through => :politics
end
