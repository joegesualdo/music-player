# == Schema Information
#
# Table name: albums
#
#  id         :integer          not null, primary key
#  title      :string(255)
#  artist     :string(255)
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Album < ActiveRecord::Base
  attr_accessible :artist, :title

  has_many :tracks
end
