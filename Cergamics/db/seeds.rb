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

floral_names = ["Tulip", "Daisy", "Rose", "Lily", "Sunflower", "Morning Glory", "Orchid", "Marigold"]
sea_life_names = ["Starfish", "Goldfish", "Whales", "Seashells", "Marlin"]
bird_names = ["Seagull", "Robbin", "Bluejay", "Woodpecker", "Eagle", "Hawk"]

tile_style = ["accent", "decorative", "border"]

finish_description = ["clear coat", "monochrome", "polychrome"]
finish_category = ["FL", "SL", "BD", "HP", "HN"]
finish_series_no = ["001", "002", "003", "004", "005"]
finish_type = ["MC", "PC", "PS"]

floral_names.each do |name|
  tile_group = TileGroup.create(name: name, description: "...the tile_group description")
  test_tile_category.tile_groups << tile_group
  3.times do |index|
    tile = Tile.create(name: "#{name} #{index}", description: "...the tile description", style: tile_style[rand(3)], size: "6x6", price: 24.24)
    tile_group.tiles << tile
    3.times do |i|
      tile.finishes << Finish.create(description: finish_description[i], category: finish_category[0], series_no: finish_series_no[i], finish: finish_type[rand(3)], price: 23.88, finished_item_type: "Tile")
    end
  end
end

sea_life_names.each do |name|
  tile_group = TileGroup.create(name: name, description: "...the tile_group description")
  test_tile_category2.tile_groups << tile_group
  3.times do |index|
    tile = Tile.create(name: "#{name} #{index}", description: "...the tile description", style: tile_style[rand(3)], size: "6x6", price: 24.24)
    tile_group.tiles << tile
    3.times do |i|
      tile.finishes << Finish.create(description: finish_description[i], category: finish_category[1], series_no: finish_series_no[i], finish: finish_type[rand(3)], price: 33.88, finished_item_type: "Tile")
    end
  end
end

bird_names.each do |name|
  tile_group = TileGroup.create(name: name, description: "...the tile_group description")
  test_tile_category3.tile_groups << tile_group
  3.times do |index|
    tile = Tile.create(name: "#{name} #{index}", description: "...the tile description", style: tile_style[rand(3)], size: "6x6", price: 24.24)
    tile_group.tiles << tile
    3.times do |i|
      tile.finishes << Finish.create(description: finish_description[i], category: finish_category[2], series_no: finish_series_no[i], finish: finish_type[rand(3)], price: 13.88, finished_item_type: "Tile")
    end
  end
end


# test_house_plaque = HousePlaque.create(name: "Fish House Plaque", size: "11x10")
# test_house_plaque2 = HousePlaque.create(name: "Rose House Plaque", size: "12x10")

# test_finish4 = Finish.create(description: "Monochrome",category: "HC",series_no: "001",finish:"MC",price: 126.87,finished_item_id: test_house_plaque.id, finished_item_type: "HousePlaque")
# test_finish5 = Finish.create(description: "Polychrome",category: "HC",series_no: "002",finish:"MC",price: 126.87,finished_item_id: test_house_plaque.id, finished_item_type: "HousePlaque")
# test_finish6 = Finish.create(description: "Monochrome",category: "HC",series_no: "003",finish:"MC",price: 126.87,finished_item_id: test_house_plaque2.id, finished_item_type: "HousePlaque")

# test_house_number = HouseNumberTile.create(name: "Morning Glory", size: "2x10")
# test_house_number2 = HouseNumberTile.create(name: "Sea Shells", size: "2x10")

# test_finish7 = Finish.create(description: "Monochrome",category: "NP",series_no: "001",finish:"MC",price: 12.87,finished_item_id: test_house_number.id, finished_item_type: "HouseNumberTile")
# test_finish8 = Finish.create(description: "Polyspecial",category: "NP",series_no: "002",finish:"MC",price: 12.87,finished_item_id: test_house_number.id, finished_item_type: "HouseNumberTile")
# test_finish9 = Finish.create(description: "Monochrome",category: "NP",series_no: "003",finish:"MC",price: 12.87,finished_item_id: test_house_number2.id, finished_item_type: "HouseNumberTile")