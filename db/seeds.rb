# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

TrueShade.destroy_all
shades = TrueShade.create([
  {name: "medium"},
  {name: "light"},
  {name: "tan"},
  {name: "dark"}
  ])

Foundation.destroy_all
foundations = Foundation.create([
  {name: "MAC Studio Fix Fluid NC30", brand: "MAC", product: "Studio Fix Fluid", shade: "NC30", true_shade: shades[0]}, 
  {name: "Urban Decay Naked Skin 5.0", brand: "Urban Decay", product: "Naked Skin", shade: "5.0", true_shade: shades[0]},
  {name: "L'Oreal True Match W4", brand: "L'Oreal", product: "True Match", shade: "W4", true_shade: shades[0]},
  {name: "Revlon ColorStay 330 Natural Tan", brand: "Revlon", product: "ColorStay", shade: "330 Natural Tan", true_shade: shades[0]},
  {name: "Neutrogena Healthy Skin Natural Beige", brand: "Neutrogena", product: "Healthy Skin", shade: "Natural Beige", true_shade: shades[0]},
  {name: "Maybelline Dream Smooth Mousse 240 Natural Beige", brand: "Maybelline", product: "Dream Smooth Mousse", shade: "240 Natural Beige", true_shade: shades[0]},  
  {name: "Estee Lauder Double Wear 2W2 Rattan", brand: "Estee Lauder", product: "Double Wear", shade: "2W2 Rattan", true_shade: shades[0]},  
  {name: "Make Up For Ever HD 127", brand: "Make Up For Ever", product: "HD", shade: "127", true_shade: shades[0]},
  {name: "Marc Jacobs Beauty Genius Gel 34 Beige Medium", brand: "Marc Jacobs", product: "Beauty Genuis Gel", shade: "34 Beige Medium", true_shade: shades[0]},  
  {name: "Sephora Airbrush Medium", brand: "Sephora", product: "Airbrush", shade: "Medium", true_shade: shades[0]},
  {name: "Kat Von D Lock-It Tattoo Medium 53", brand: "Kat Von D", product: "Lock-It Tattoo", shade: "Medium 53", true_shade: shades[0]},
  {name: "Yves Saint Laurent Le Teint Touche Eclat Beige Dore 50", brand: "Yves Saint Laurent", product: "Le Teint Touche Eclat", shade: "Beige Dore 50", true_shade: shades[1]},
  {name: "Stila Stay All Day Honey 8", brand: "Stila", product: "Stay All Day", shade: "Honey 8", true_shade: shades[1]},
  # {name: Estee Lauder Double Wear 2W2 Rattan brand: "", product: "", shade: "", true_shade: shades[1]},
  {name: "MAC Studio Fix Fluid NC20", brand: "MAC", product: "Studio Fix Fluid", shade: "NC20", true_shade: shades[1]},
  {name: "Revlon ColorStay Natural Beige", brand: "Revlon", product: "ColorStay", shade: "Natural Beige", true_shade: shades[1]},
  {name: "Loreal Lumi Magique Light Infusing N3 Pure Linen", brand: "L'Oreal", product: "Lumi Magique Light Infusing", shade: "N3 Pure Linen", true_shade: shades[1]},
  {name: "Urban Decay Naked Skin 4.0", brand: "Urban Decay", product: "Naked Skin", shade: "4.0", true_shade: shades[1]},
  {name: "Bourjois Happy Light N53 Golden Beige", brand: "Bourjois", product: "Happy Light", shade: "N53 Golden Beige", true_shade: shades[1]},
  {name: "Bare Minerals Original Light", brand: "Bare Minerals", product: "Original", shade: "Light", true_shade: shades[1]},
  {name: "MAC Face & Body C3", brand: "MAC", product: "Face & Body", shade: "C3", true_shade: shades[1]},
  {name: "Chi Chi Fabulous & Flawless 4.0", brand: "Chi Chi", product: "Fabulous & Flawless", shade: "4.0", true_shade: shades[1]},
  {name: "NARS Sheer Glow Punjab", brand: "NARS", product: "Sheer Glow", shade: "Punjab", true_shade: shades[1]},
  {name: "Chanel Vitalumiere Aqua B30", brand: "Chanel", product: "Vitalumiere Aqua", shade: "B30", true_shade: shades[1]},
  {name: "Makeup Forever HD 140", brand: "Makeup Forever", product: "HD", shade: "140", true_shade: shades[1]},
  {name: "ELF Acne Fighting Sand", brand: "ELF", product: "Acne Fighting", shade: "Sand", true_shade: shades[1]},
# Neutrogena Healthy Skin Makeup Natural Beige [0][1]
  {name: "Benefit Hello Flawless Oxygen Wow Honey", brand: "Benefit", product: "Hellow Flawless Oxygen Wow", shade: "Honey", true_shade: shades[1]},
  {name: "Giorgio Armani Luminous Silk 13", brand: "Giorgio Armani", product: "Luminous Silk", shade: "13", true_shade: shades[3]},
  {name: "NARS Sheer Matte Benares", brand: "NARS", product: "Sheer Matte", shade: "Benares", true_shade: shades[3]},
  {name: "NARS Sheer Glow Benares", brand: "NARS", product: "Sheer GLow", shade: "Benares", true_shade: shades[3]},
  {name: "Make Up For Ever Mat Velvet Plus 75", brand: "Make Up For Ever", product: "Mat Velvet Plus", shade: "75", true_shade: shades[3]},
  {name: "MAC Matchmaster 8.0", brand: "MAC", product: "Matchmaster", shade: "8.0", true_shade: shades[3]}, 
  {name: "ELF Flawless Finish Cocoa", brand: "ELF", product: "Flawless Finish", shade: "Cocoa", true_shade: shades[3]},
  {name: "Revlon Photoready Cappuccino", brand: "Revlon", product: "Photoready", shade: "Cappuccino", true_shade: shades[3]},
  {name: "Tarte Amazonian Colored Clay Liquid Foundation Medium", brand: "Tarte", product: "Amazonian Colored Clay", shade: "Medium", true_shade: shades[2]},
  {name: "Revlon ColorStay Foundation Warm Golden", brand: "Revlon", product: "ColorStay", shade: "Warm Golden", true_shade: shades[2]},
  {name: "Bare Minerals bareSkin Bare Sand", brand: "Bare Minerals", product: "bareSkin", shade: "Bare Sand", true_shade: shades[2]},
  {name: "Tarte Amazonian Clay Tan", brand: "Tarte", product: "Amazonian Clay", shade: "Tan", true_shade: shades[2]},
  {name: "Covergirl Stay Fabulous 3-in-1 Soft Honey 855", brand: "Covergirl", product: "Stay Fabulous 3-in-1", shade: "Soft Honey 855", true_shade: shades[2]},
  {name: "Rimmel Stay Matte Pressed Powder Silky Beige", brand: "Rimmel", product: "Stay Matte Pressed Powder", shade: "Silky Beige", true_shade: shades[2]}
# Loreal True Match Foundation in W4 [0][1]
  ])

