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
    tile = Tile.create(name: "#{name} #{index}", description: "...the tile description", style: tile_style[rand(3)], size: "6x6")
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
    tile = Tile.create(name: "#{name} #{index}", description: "...the tile description", style: tile_style[rand(3)], size: "6x6")
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
    tile = Tile.create(name: "#{name} #{index}", description: "...the tile description", style: tile_style[rand(3)], size: "6x6")
    tile_group.tiles << tile
    3.times do |i|
      tile.finishes << Finish.create(description: finish_description[i], category: finish_category[2], series_no: finish_series_no[i], finish: finish_type[rand(3)], price: 13.88, finished_item_type: "Tile")
    end
  end
end

house_plaque_names = ["Fish House Plaque", "Rose House Plaque", "Starfish House Plaque", "Tulip House Plaque", "Whale House Plaque"]

house_plaque_names.each do |name|
  plaque = HousePlaque.create(name: name, size: "12x12")
  3.times do |i|
    plaque.finishes << Finish.create(description: finish_description[i], category: finish_category[3], series_no: finish_series_no[i], finish: finish_type[rand(3)], price: 133.22, finished_item_type: "HousePlaque")
  end
end

house_number_names = ["Morning Glory", "Seashells", "Rose", "Fish", "Whales"]

house_number_names.each do |name|
  number = HouseNumberTile.create(name: name, size: "8x2")
  3.times do |i|
    number.finishes << Finish.create(description: finish_description[i], category: finish_category[4], series_no: finish_series_no[i], finish: finish_type[rand(3)], price: 33.22, finished_item_type: "HousePlaque")
  end
end

baby_keepsake_names = ["BabyBoy", "BabyGirl", "Twin Boys", "Twin Girls"]

baby_keepsake_names.each do |name|
  keepsake = BabyKeepsake.create(name: name, description: "description", finish: "MonoChrom", size: '6x6', price: 76.77)
end

sale_item_names = ["SaleItem1", "SaleItem2", "SaleItem3", "SaleItem4"]

sale_item_names.each do |name|
  sale_item = SaleItem.create(name: name, description: "description", size: '6x6', original_price: 50.00, sale_price: 35.55)
end

AdminUser.create!(email: 'admin@example.com', password: 'password', password_confirmation: 'password')