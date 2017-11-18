# == Schema Information
#
# Table name: products
#
#  id         :integer          not null, primary key
#  title      :string
#  content    :text
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Product < ApplicationRecord
  validates :title,       :presence => true
  validates :img,         :presence => true
  validates :content,     :presence => true

  mount_uploader :img, ImageUploader
end
