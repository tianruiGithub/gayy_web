# == Schema Information
#
# Table name: addresses
#
#  id         :integer          not null, primary key
#  content    :text
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Address < ApplicationRecord
  validates :content,     :presence => true
end
