# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

product_list = [
    ['UE43NU7122KXXH', 1263850, 'BLK','2018-10-03', 'SAMSUNG', 112987,'tv','https://picscdn.redblue.de/doi/pixelboxx-mss-77651280/fee_786_587_png/SAMSUNG-UE43NU7122KXXH-4K-UHD-Smart-LED-telev%C3%ADzi%C3%B3'],
    ['UE49NU7102KXXH', 1263575, 'BLK','2018-01-04', 'SAMSUNG', 124999,'tv','https://picscdn.redblue.de/doi/pixelboxx-mss-77651280/fee_786_587_png/SAMSUNG-UE40NU7122KXXH-4K-UHD-Smart-LED-telev%C3%ADzi%C3%B3'],
    ['43UK6300MLB', 1261722, 'BLK', '2018-10-03', 'LG', 110987, 'tv','https://picscdn.redblue.de/doi/pixelboxx-mss-77480483/fee_786_587_png/LG-43UK6300MLB-4K-UHD-Smart-LED-telev%C3%ADzi%C3%B3'],
    ['Mate 20 Lite', 1268945, 'BLK','2018-10-03', 'HUAWEI', 84251, 'phone','https://picscdn.redblue.de/doi/pixelboxx-mss-78310778/fee_786_587_png/HUAWEI-Mate-20-Lite-Dual-SIM-fekete-k%C3%A1rtyaf%C3%BCggetlen-okostelefon'],
    ['Galaxy S10+', 1284188, 'BLK','2018-11-05', 'SAMSUNG', 344990,'phone','https://picscdn.redblue.de/doi/pixelboxx-mss-80519897/fee_786_587_png/SAMSUNG-Galaxy-S10--1TB-DualSIM-Fekete-k%C3%A1rtyaf%C3%BCggetlen-okostelefon--%28SM-G975%29'],
    ['iPhone 6S 32GB', 1213791, 'BLK,SILVER', '2018-10-03', 'APPLE', 109999, 'phone','https://picscdn.redblue.de/doi/pixelboxx-mss-71653362/fee_786_587_png/APPLE-iPhone-6S-32GB-asztrosz%C3%BCrke-k%C3%A1rtyaf%C3%BCggetlen-okostelefon-%28mn0w2gh-a%29'],
    ['MacBook Air 13 (2017)', 1236801, 'BLK','2018-11-05', 'APPLE', 309989, 'notebook','https://picscdn.redblue.de/doi/pixelboxx-mss-75574271/fee_786_587_png/APPLE-MacBook-Air-13%22-%282017%29-Core-i5-1-8G-8GB-128GB-SSD-%28mqd32mg-a%29'],
    ['Pavilion x360 2in1 4TW27EA', 1270125, 'BLK,SILVER', '2018-10-03', 'HP', 249989, 'notebook','https://picscdn.redblue.de/doi/pixelboxx-mss-76043215/fee_786_587_png/HP-Pavilion-x360-14-cd0003nh-ez%C3%BCst-2in1-eszk%C3%B6z-4TW27EA-%2814%22-FullHD-touch-Core-i5-8GB-256GB-Windows-10%29'],
    ['Yoga 530 2in1 81EK00PQHV', 1278318, 'BLK,TITAN','2018-10-03', 'LENOVO', 184011, 'notebook','https://picscdn.redblue.de/doi/pixelboxx-mss-78450228/fee_786_587_png/LENOVO-Yoga-530-2in1-eszk%C3%B6z-81EK00PQHV-%2814-1%22-FHD-Touch-Core-i3-4GB-256-GD-SSD-Windows-10%29']
]



product_list.each do |name,number,color,rdate,manuf,price,type,url|
  Product.create(productName: name, productNumber: number, productColor:color,releaseDate:rdate,manufacturer:manuf,price:price, productType: type,  imgURL: url)
end