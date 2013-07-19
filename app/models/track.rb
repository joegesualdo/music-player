# == Schema Information
#
# Table name: tracks
#
#  id         :integer          not null, primary key
#  title      :string(255)
#  url        :string(255)
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  album_id   :integer
#

class Track < ActiveRecord::Base
  attr_accessible :title, :url

  belongs_to  :album
end
