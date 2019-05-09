# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Product.destroy_all
User.destroy_all

User.create(username: "test", password: "1234")

Product.create(name: "boomerang", category: "souvenir", price: 599, amount: 20, img: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ1Bgt7kCcUaTgf7m7MITTHjmKJ5_GeeePMWRHd5Nyb5TkXxm3DdA")
Product.create(name: "meat pie", category: "food", price: 300, amount: 25, img: "https://upload.wikimedia.org/wikipedia/commons/thumb/2/2e/Steak_and_onion_pie.jpg/1200px-Steak_and_onion_pie.jpg")
Product.create(name: "pavlova", category: "food", price: 1250, amount: 13, img: "https://img.taste.com.au/gjU4uguy/taste/2010/01/pavlova-118984-2.jpg")
Product.create(name: "fairy bread", category: "food", price: 125, amount: 60, img: "https://o.aolcdn.com/images/dims3/GLOB/legacy_thumbnail/1200x630/format/jpg/quality/85/http%3A%2F%2Fo.aolcdn.com%2Fhss%2Fstorage%2Fmidas%2F42768aa1a62f3aabdb4707dc1042eeb7%2F204481896%2F596004680.jpg")
Product.create(name: "australian flag", category: "souvenir", price: 99, amount: 100, img: "https://www.careyou.com.au/assets/full/2076.jpg")
Product.create(name: "surfboard", category: "souvenir", price: 19999, amount: 10, img: "https://ak7.picdn.net/shutterstock/videos/9987947/thumb/1.jpg")
Product.create(name: "vegemite", category: "food", price: 425, amount: 99, img: "https://pixel.nymag.com/imgs/daily/grub/2015/08/10/10-vegemite.w600.h315.2x.jpg")
Product.create(name: "weetbix", category: "food", price: 625, amount: 20, img: "https://www.simplyoz.com/i/300x300/4/2384.jpg")
Product.create(name: "uggs", category: "clothes", price: 9999, amount: 25, img: "https://i.ebayimg.com/images/g/AtgAAOSwAuZX7CgH/s-l640.jpg")
Product.create(name: "footy", category: "souvenir", price: 2500, amount: 20, img: "https://images.perthnow.com.au/publication/B88693257Z/1513472107118_G5E1CJRR2.2-2.jpg?imwidth=668&impolicy=pn_v1")
Product.create(name: "lamingtons", category: "food", price: 250, amount: 15, img: "https://www.essentials.co.za/wp-content/uploads/2017/06/nutella-lamingtons-august-2016.jpg")
