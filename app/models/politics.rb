# == Schema Information
#
# Table name: politics
#
#  id         :integer          not null, primary key
#  senator_id :integer
#  bill_id    :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Politics < ActiveRecord::Base

  belongs_to :senator
  belongs_to :bill
end
