# == Schema Information
#
# Table name: carsousels
#
#  id         :integer          not null, primary key
#  no         :integer
#  file       :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Carsousel < ApplicationRecord
  validates :no,       :presence => true
  validates :file,     :presence => true
  
  mount_uploader :file, ImageUploader
end
