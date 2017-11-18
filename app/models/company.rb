# == Schema Information
#
# Table name: companies
#
#  id         :integer          not null, primary key
#  content    :text
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Company < ApplicationRecord
  validates :content,     :presence => true
end
