# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
Artist.delete_all
Painting.delete_all

# title, year, medium, style, image
Painting.create(:title=>'Mona Lisa',:year=>'c.1503-1519',:medium=>'Oil on Canvas',:style=>'Portrait', :image=>'monalisa.jpg')
Painting.create(:title=>'The Scream',:year=>'1893',:medium=>'Oil on Cardboard',:style=>'Impressionism', :image=>'thescream.jpg')
Painting.create(:title=>'Self-Portrait',:year=>'1500',:medium=>'Oil on Canvas',:style=>'Northern Renaissance', :image=>'durer_selfportrait.jpg')

#name, nationality, dob, pariod, image
Artist.create(:name=>'Leonardo Da Vinci', :nationality=>'Italy', :dob=>'1452-04-15', :period=>'High Renaissance',:image=>'leonardodavinci.jpg')
Artist.create(:name=>'Edward Munch', :nationality=>'Norway', :dob=>'12/12/1863', :period=>'Expressionism',:image=>'leonardodavinci.jpg')
Artist.create(:name=>'Albrecht Durer', :nationality=>'Holy Roman Empire', :dob=>'05/21/1471', :period=>'Northern Renaissance',:image=>'durer_selfportrait.jpg')
