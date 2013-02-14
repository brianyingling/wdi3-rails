# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
Book.delete_all
Author.delete_all

Book.create(:title=>'The Shining',
            :isbn=>'978-0307743657',
            :subtitle=>'A Novel',
            :publisher=>'Anchor',
            :pubdate=>'2012-06-26',
            :coverimage=>'http://ecx.images-amazon.com/images/I/51PBbb73NML._BO2,204,203,200_PIsitb-sticker-arrow-click,TopRight,35,-76_AA300_SH20_OU01_.jpg',
            :format=>'Paperback')

Book.create(:title=>'The Gunslinger',
            :isbn=>'978-0452284692',
            :subtitle=>'The Dark Tower I',
            :publisher=>'Plume',
            :pubdate=>'2003-06-24',
            :coverimage=>'http://ecx.images-amazon.com/images/I/51PBbb73NML._BO2,204,203,200_PIsitb-sticker-arrow-click,TopRight,35,-76_AA300_SH20_OU01_.jpg',
            :format=>'Paperback')

Book.create(:title=>'The Kite Runner',
            :isbn=>'978-1594480003',
            :subtitle=>'A Novel',
            :publisher=>'Riverhead',
            :pubdate=>'2004-04-27',
            :coverimage=>'http://ecx.images-amazon.com/images/I/51PBbb73NML._BO2,204,203,200_PIsitb-sticker-arrow-click,TopRight,35,-76_AA300_SH20_OU01_.jpg',
            :format=>'Paperback')

Book.create(:title=>'Team of Rivals',
            :isbn=>'978-0307743657',
            :subtitle=>'The Political Genius of Abraham Lincoln',
            :publisher=>'Simon & Schuster',
            :pubdate=>'2006-09-26',
            :coverimage=>'http://ecx.images-amazon.com/images/I/51PBbb73NML._BO2,204,203,200_PIsitb-sticker-arrow-click,TopRight,35,-76_AA300_SH20_OU01_.jpg',
            :format=>'Paperback')

Book.create(:title=>'Legacy of Ashes',
            :isbn=>'978-0307389008',
            :subtitle=>'The History of the CIA',
            :publisher=>'Anchor',
            :pubdate=>'2008-05-20',
            :coverimage=>'http://ecx.images-amazon.com/images/I/51qrPWpbewL._BO2,204,203,200_PIsitb-sticker-arrow-click,TopRight,35,-76_AA300_SH20_OU01_.jpg',
            :format=>'Paperback')

Author.create(:firstname=>'Stephen',
              :lastname=>'King',
              :image=>'http://g-ecx.images-amazon.com/images/G/01/ciu/85/53/ed11810ae7a0b310f71ee110.L._V192636056_.jpg',
              :genre=>'Fiction,Horror')


