# == Schema Information
#
# Table name: clients
#
#  id         :integer          not null, primary key
#  title      :string
#  content    :text
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Client < ApplicationRecord
  validates :content,     :presence => true
end
