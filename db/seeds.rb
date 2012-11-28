# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

MonthlySales.create(:category => "Electronics", :total_cents => "154662", :total_currency => "USD", :units => 437, :date => Date.parse("January 2012")).save
MonthlySales.create(:category => "Electronics", :total_cents => "163463", :total_currency => "USD", :units => 204, :date => Date.parse("February 2012")).save
MonthlySales.create(:category => "Electronics", :total_cents => "133614", :total_currency => "USD", :units => 382, :date => Date.parse("March 2012")).save
MonthlySales.create(:category => "Electronics", :total_cents => "115235", :total_currency => "USD", :units => 318, :date => Date.parse("April 2012")).save
MonthlySales.create(:category => "Electronics", :total_cents => "190843", :total_currency => "USD", :units => 248, :date => Date.parse("May 2012")).save
MonthlySales.create(:category => "Electronics", :total_cents => "134458", :total_currency => "USD", :units => 177, :date => Date.parse("June 2012")).save
MonthlySales.create(:category => "Electronics", :total_cents => "128288", :total_currency => "USD", :units => 204, :date => Date.parse("July 2012")).save
MonthlySales.create(:category => "Electronics", :total_cents => "165055", :total_currency => "USD", :units => 93, :date => Date.parse("August 2012")) .save
MonthlySales.create(:category => "Electronics", :total_cents => "139301", :total_currency => "USD", :units => 490, :date => Date.parse("September 2012")).save
MonthlySales.create(:category => "Electronics", :total_cents => "123663", :total_currency => "USD", :units => 315, :date => Date.parse("October 2012")).save
MonthlySales.create(:category => "Electronics", :total_cents => "115676", :total_currency => "USD", :units => 493, :date => Date.parse("November 2012")).save
MonthlySales.create(:category => "Electronics", :total_cents => "133039", :total_currency => "USD", :units => 147, :date => Date.parse("December 2012")).save
MonthlySales.create(:category => "Furniture", :total_cents => "106274", :total_currency => "USD", :units => 324, :date => Date.parse("January 2012")).save
MonthlySales.create(:category => "Furniture", :total_cents => "145986", :total_currency => "USD", :units => 492, :date => Date.parse("February 2012")).save
MonthlySales.create(:category => "Furniture", :total_cents => "144717", :total_currency => "USD", :units => 420, :date => Date.parse("March 2012")).save
MonthlySales.create(:category => "Furniture", :total_cents => "151780", :total_currency => "USD", :units => 204, :date => Date.parse("April 2012")).save
MonthlySales.create(:category => "Furniture", :total_cents => "143192", :total_currency => "USD", :units => 406, :date => Date.parse("May 2012")).save
MonthlySales.create(:category => "Furniture", :total_cents => "117125", :total_currency => "USD", :units => 22, :date => Date.parse("June 2012")).save
MonthlySales.create(:category => "Furniture", :total_cents => "167624", :total_currency => "USD", :units => 485, :date => Date.parse("July 2012")).save
MonthlySales.create(:category => "Furniture", :total_cents => "125349", :total_currency => "USD", :units => 259, :date => Date.parse("August 2012")).save
MonthlySales.create(:category => "Furniture", :total_cents => "106554", :total_currency => "USD", :units => 133, :date => Date.parse("September 2012")).save
MonthlySales.create(:category => "Furniture", :total_cents => "185512", :total_currency => "USD", :units => 424, :date => Date.parse("October 2012")).save
MonthlySales.create(:category => "Furniture", :total_cents => "125292", :total_currency => "USD", :units => 23, :date => Date.parse("November 2012")).save
MonthlySales.create(:category => "Furniture", :total_cents => "190839", :total_currency => "USD", :units => 117, :date => Date.parse("December 2012")).save
MonthlySales.create(:category => "Media", :total_cents => "156036", :total_currency => "USD", :units => 25, :date => Date.parse("January 2012")).save
MonthlySales.create(:category => "Media", :total_cents => "139699", :total_currency => "USD", :units => 244, :date => Date.parse("January 2012")).save
MonthlySales.create(:category => "Media", :total_cents => "190369", :total_currency => "USD", :units => 74, :date => Date.parse("February 2012")).save
MonthlySales.create(:category => "Media", :total_cents => "146518", :total_currency => "USD", :units => 222, :date => Date.parse("March 2012")).save
MonthlySales.create(:category => "Media", :total_cents => "174748", :total_currency => "USD", :units => 319, :date => Date.parse("April 2012")).save
MonthlySales.create(:category => "Media", :total_cents => "122728", :total_currency => "USD", :units => 403, :date => Date.parse("May 2012")).save
MonthlySales.create(:category => "Media", :total_cents => "159770", :total_currency => "USD", :units => 457, :date => Date.parse("June 2012")).save
MonthlySales.create(:category => "Media", :total_cents => "138042", :total_currency => "USD", :units => 469, :date => Date.parse("July 2012")).save
MonthlySales.create(:category => "Media", :total_cents => "110289", :total_currency => "USD", :units => 216, :date => Date.parse("August 2012")).save
MonthlySales.create(:category => "Media", :total_cents => "162115", :total_currency => "USD", :units => 278, :date => Date.parse("September 2012")).save
MonthlySales.create(:category => "Media", :total_cents => "180980", :total_currency => "USD", :units => 217, :date => Date.parse("November 2012")).save
MonthlySales.create(:category => "Media", :total_cents => "195221", :total_currency => "USD", :units => 176, :date => Date.parse("December 2012")).save
MonthlySales.create(:category => "Misc", :total_cents => "195453", :total_currency => "USD", :units => 119, :date => Date.parse("January 2012")).save
MonthlySales.create(:category => "Misc", :total_cents => "101179", :total_currency => "USD", :units => 131, :date => Date.parse("February 2012")).save
MonthlySales.create(:category => "Misc", :total_cents => "130423", :total_currency => "USD", :units => 420, :date => Date.parse("March 2012")).save
MonthlySales.create(:category => "Misc", :total_cents => "100658", :total_currency => "USD", :units => 186, :date => Date.parse("April 2012")).save
MonthlySales.create(:category => "Misc", :total_cents => "141317", :total_currency => "USD", :units => 250, :date => Date.parse("May 2012")).save
MonthlySales.create(:category => "Misc", :total_cents => "151136", :total_currency => "USD", :units => 402, :date => Date.parse("June 2012")).save
MonthlySales.create(:category => "Misc", :total_cents => "161297", :total_currency => "USD", :units => 114, :date => Date.parse("July 2012")).save
MonthlySales.create(:category => "Misc", :total_cents => "171989", :total_currency => "USD", :units => 138, :date => Date.parse("August 2012")).save
MonthlySales.create(:category => "Misc", :total_cents => "108117", :total_currency => "USD", :units => 341, :date => Date.parse("September 2012")).save
MonthlySales.create(:category => "Misc", :total_cents => "123325", :total_currency => "USD", :units => 416, :date => Date.parse("October 2012")).save
MonthlySales.create(:category => "Misc", :total_cents => "147968", :total_currency => "USD", :units => 118, :date => Date.parse("November 2012")).save
MonthlySales.create(:category => "Misc", :total_cents => "122558", :total_currency => "USD", :units => 414, :date => Date.parse("December 2012")).save
