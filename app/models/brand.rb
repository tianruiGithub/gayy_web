# == Schema Information
#
# Table name: brands
#
#  id         :integer          not null, primary key
#  content    :text
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Brand < ApplicationRecord
  validates :content,     :presence => true
end
