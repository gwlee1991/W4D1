# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
User.destroy_all
Artwork.destroy_all
ArtworkShare.destroy_all
nick = User.create!(username: 'Nick')
lee = User.create!(username: 'Lee')

lee_a_1 = Artwork.create!(title: 'A', image_url: 'test_value', artist_id: lee.id)
lee_a_2 = Artwork.create!(title: 'Jesus Crucified on A Tesserect', image_url: 'test_value', artist_id: lee.id)
nick_a_1 = Artwork.create!(title: 'Jesus Crucified on A Tesserect', image_url: 'test_value', artist_id: nick.id)

first_artshare = ArtworkShare.create!(artwork_id: lee_a_1.id, viewer_id: nick.id)
second_artshare = ArtworkShare.create!(artwork_id: nick_a_1.id, viewer_id: lee.id)
