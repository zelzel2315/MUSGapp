# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

shades = TrueShade.create([
  {name: "medium"},
  {name: "light"},
  {name: "tan"},
  {name: "dark"}
  ])

foundations = Foundation.create([
  {name: "MAC Studio Fix NC30", true_shade: shades[0]}, 
  {name: "Urban Decay Naked Skin 5.0", true_shade: shades[0]}
  # {brand: "Urban Decay", product: "Naked Skin", shade: "5.0", true_shade: shades[0]},
  {brand: "L'Oreal", product: "True Match", shade: "W4", true_shade: shades[0]},
  {brand: "Revlon", product: "ColorStay", shade: "330 Natural Tan", true_shade: shades[0]},
  {brand: "Neutrogena", product: "Healthy Skin", shade: "Natural Beige", true_shade: shades[0]},
  {brand: "Maybelline", product: "Dream Smooth Mousse", shade: "240 Natural Beige", true_shade: shades[0]},  
  {brand: "Estee Lauder", product: "Double Wear", shade: "2W2 Rattan", true_shade: shades[0]},  
  {brand: "Makeup Forever", product: "HD", shade: "127", true_shade: shades[0]},
  {brand: "Marc Jacobs", product: "Beauty Genuis Gel", shade: "34 Beige Medium", true_shade: shades[0]},  
  {brand: "Sephora", product: "Airbrush", shade: "Medium", true_shade: shades[0]},
  {brand: "Kat Von D", product: "Lock-It Tattoo", shade: "Medium 53", true_shade: shades[0]}
  ])

# , brand: "MAC", product: "Studio Fix", shade: "NC30"
# sally = User.first

# sally.true_shade_id = shades[0]

# ([
#   {brand: "MAC", product: "Studio Fix", shade: "NC30", true_shade: shades[0]}
#   ])
