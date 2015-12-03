# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

test_tile_category = TileCategory.create(title: "Floral")
test_tile_category2 = TileCategory.create(title: "Sea Life")
test_tile_category3 = TileCategory.create(title: "Birds")

test_tile = Tile.create(name: "Tulip",group: "tulip",style: "decorative",description: "Very pretty",size: "6x6",price: 25.25,tile_category_id: test_tile_category.id)

test_tile2 = Tile.create(name: "Daisy",group: "daisy",style: "accent",description: "white as a dove",size: "2x2",price: 15.15,tile_category_id: test_tile_category.id)

test_house_plaque = HousePlaque.new(name: "Fish House Plaque", size: "11x10")

test_finish = Finish.create(description: "clear coat",category: "HP",series_no: "001",finish:"PS",price: 26.87,finished_item_id: test_tile.id, finished_item_type: "Tile")

test_finish2 = Finish.create(description: "Monochrome",category: "HP",series_no: "001",finish:"MC",price: 126.87,finished_item_id: test_house_plaque.id, finished_item_type: "House Plaque")