# == Schema Information
#
# Table name: songs
#
#  id         :integer          not null, primary key
#  name       :string(255)
#  filename   :string(255)
#  image      :string(255)
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Song < ActiveRecord::Base
  attr_accessible :name, :filename, :image
  belongs_to :album
  belongs_to :artist
  has_and_belongs_to_many :genres
end
