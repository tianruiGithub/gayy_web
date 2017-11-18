# == Schema Information
#
# Table name: contacts
#
#  id         :integer          not null, primary key
#  content    :text
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Contact < ApplicationRecord
  validates :content,     :presence => true
end
