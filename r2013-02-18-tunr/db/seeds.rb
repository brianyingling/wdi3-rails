# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
Genre.delete_all
Song.delete_all
Album.delete_all
User.delete_all
Mixtape.delete_all
Artist.delete_all

g1 = Genre.create(:name=>'Classical')
g2 = Genre.create(:name=>'Rock')
g3 = Genre.create(:name=>'Top 40')

s1 = Song.create(:name=>'Thriller', :price=>0.99)
s2 = Song.create(:name=>'Billie Jean',:price=>0.99)
s3 = Song.create(:name=>'Smells Like Teen Spirit',:price=>0.99)

a1 = Album.create(:name=>'Thriller')
a2 = Album.create(:name=>'Nevermind')
a3 = Album.create(:name=>'The White Album')

r1 = Artist.create(:name=>'Michael Jackson')
r2 = Artist.create(:name=>'Nirvana')
r3 = Artist.create(:name=>'Beatles')

# u1 = User.create(:name=>'Rob',:image=>'rob.jpg',:password=>'bob',:password_confirmation=>'bob',:is_admin=>true)
# u2 = User.create(:name=>'Sammy',:image=>'sam.jpg',:password=>'sam',:password_confirmation=>'sam')
# u3 = User.create(:name=>'Jilly',:image=>'jill.jpg',:password=>'jill',:password_confirmation=>'jill')

u1 = User.create(:name=>'BigBird',:image=>'http://i1238.photobucket.com/albums/ff482/99mainstreet/BigBird2.jpg',:password=>'bigbird',:password_confirmation=>'bigbird',:is_admin=>true,:balance=>10.00)
u2 = User.create(:name=>'HoneyBooBoo',:image=>'http://static5.businessinsider.com/image/506b4e076bb3f7752900001a-400-/honey-boo-boo.png',:password=>'honeybooboo',:password_confirmation=>'honeybooboo',:balance=>1050.80)
u3 = User.create(:name=>'Jilly',:image=>'jill.jpg',:password=>'jill',:password_confirmation=>'jill',:balance=>'10_000.00')
u4 = User.create(:name=>'admin',:image=>'',:password=>'admin',:password_confirmation=>'admin',:balance=>'10_000.00')


m1 = Mixtape.create(:name=>'Easy Listening')
m2 = Mixtape.create(:name=>'Workout Music')
m3 = Mixtape.create(:name=>'Old School')

# Array of song objects
r1.songs << s1 << s2
r2.songs = [s3]
a1.songs = [s1, s2]
a2.songs << s3
g3.songs [s1, s2, s3]

u1.mixtapes = [m1, m2]
u3.mixtapes = [m3]
m3.songs = [s1, s2, s3]

u1.albums = [a1, a2]



