# == Schema Information
#
# Table name: artworks
#
#  id         :integer          not null, primary key
#  title      :text             not null
#  image_url  :text             not null
#  artist_id  :integer          not null
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Artwork < ActiveRecord::Base
  validates :title, :image_url, :artist_id, presence: true
  validates_uniqueness_of :title, scope: :artist_id

  belongs_to :artist,
    primary_key: :id,
    foreign_key: :artist_id,
    class_name: :User

  has_many :artwork_shares,
    primary_key: :id,
    foreign_key: :artwork_id,
    class_name: :ArtworkShare

  has_many :shared_viewers,
    through: :artwork_shares,
    source: :viewer

end
