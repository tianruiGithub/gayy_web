# == Schema Information
#
# Table name: tours
#
#  id         :integer          not null, primary key
#  content    :text
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Tour < ApplicationRecord
  validates :content,     :presence => true
end
