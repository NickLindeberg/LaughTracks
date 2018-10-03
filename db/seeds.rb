require_relative '../app/models/comedian'
require_relative '../app/models/special'

rob = Comedian.create(name: "Rob Dyrdek", age: 44, city: "Kettering")
Special.create(name: "Rob and Big", run_time: 60, image_url: "https://media.tenor.com/images/b405b9350c6e5a5058df75ae5f2bf3fd/tenor.gif", comedian_id: rob.id)
Special.create(name: "Fantasy Factory", run_time: 40, image_url: "https://pmchollywoodlife.files.wordpress.com/2014/03/fantasy-factor-new-season-promo-ftr.jpg?w=600", comedian_id: rob.id)

nikki = Comedian.create(name: "Nikki Glaser", age: 34, city: "Cincinnati")
Special.create(name: "I Am Comic", run_time: 70, image_url: "https://upload.wikimedia.org/wikipedia/commons/thumb/b/b1/Nikki_Glaser.jpg/220px-Nikki_Glaser.jpg", comedian_id: nikki.id)
Special.create(name: "Red Eye", run_time: 30, image_url: "https://biographyfact.com/wp-content/uploads/2018/05/Nikki-Glaser-300x370.jpeg", comedian_id: nikki.id)

iliza = Comedian.create(name: "Iliza Shlesinger", age: 35, city: "New York City")
Special.create(name: "Confirmed Kills", run_time: 80, image_url: "https://m.media-amazon.com/images/M/MV5BZGEyYjkwMWItM2EyZS00N2Q1LWIzZmQtZDg5Y2ZmMzdlNTgyXkEyXkFqcGdeQXVyNjgzNzA2NjU@._V1_UX182_CR0,0,182,268_AL_.jpg" , comedian_id: iliza.id)
Special.create(name: "Elder Millennial", run_time: 20, image_url: "https://res.cloudinary.com/atlanta/image/upload/v1531847741/EventEntry/co115otanlqinvd6rolg.png", comedian_id: iliza.id)

eddie = Comedian.create(name: "Eddie Murphy", age: 57, city: "Brooklyn")
Special.create(name: "Delirious", run_time: 90, image_url: "https://images-na.ssl-images-amazon.com/images/I/51FYMEJN14L.jpg" , comedian_id: eddie.id)
Special.create(name: "Raw", run_time: 100, image_url: "https://m.media-amazon.com/images/M/MV5BOWEwYTk4YTgtZGVjNi00MmI0LTkwOTItOWUxYzBlN2YwZWFkXkEyXkFqcGdeQXVyNzc5MjA3OA@@._V1_UY1200_CR85,0,630,1200_AL_.jpg" , comedian_id: eddie.id)

chris = Comedian.create(name: "Chris Rock", age: 53, city: "Andrews")
Special.create(name: "Bring The Pain", run_time: 120, image_url: "https://m.media-amazon.com/images/M/MV5BNDk3MjExNzg5M15BMl5BanBnXkFtZTYwMzA0MDc5._V1_.jpg", comedian_id: chris.id)
Special.create(name: "Never Scared", run_time: 75, image_url: "https://images-na.ssl-images-amazon.com/images/I/61OElXVcnEL.jpg", comedian_id: chris.id)

dave = Comedian.create(name: "Dave Chappelle", age: 45, city: "DC")
Special.create(name: "For What Its Worth", run_time: 130, image_url: "https://i.ytimg.com/vi/Fc8WN3q4VKs/hqdefault.jpg" , comedian_id: dave.id)
Special.create(name: "The Bird Revelation", run_time: 35, image_url: "https://occ-0-299-300.1.nflxso.net/art/e07b8/7a7ee151ff81be8b9749b759f241b4041eae07b8.jpg", comedian_id: dave.id)

rogen = Comedian.create(name: "Seth Rogen", age: 36, city: "Vancouver")
Special.create(name: "Seth Does Stand Up", run_time: 165, image_url: "https://i.ytimg.com/vi/O-aZogWeiyU/maxresdefault.jpg", comedian_id: rogen.id)
Special.create(name: "Hilarity for Charity", run_time: 116, image_url: "https://m.media-amazon.com/images/M/MV5BODFlNTFiYWQtNmQ1My00ZTk3LTlhNzQtMWFkNTgxZThkMzQ4XkEyXkFqcGdeQXVyNjc5NTc1MTg@._V1_UY268_CR4,0,182,268_AL_.jpg", comedian_id: rogen.id)

seth = Comedian.create(name: "Seth McFarlane", age: 44, city: "Kent")
Special.create(name: "Life Of Larry", run_time: 203, image_url: "https://upload.wikimedia.org/wikipedia/en/thumb/1/1d/Larry_%26_Steve_titlecard.png/220px-Larry_%26_Steve_titlecard.png", comedian_id: seth.id)
Special.create(name: "Golden Globes", run_time: 122, image_url: "http://cdn01.cdn.justjared.com/wp-content/uploads/2013/01/clarke-globes/seth-macfarlane-emilia-clarke-hbo-golden-globes-party-01.jpg", comedian_id: seth.id)

danny = Comedian.create(name: "Danny DeVito", age: 73, city: "Neptune")
Special.create(name: "Taxi", run_time: 123, image_url: "https://c8.alamy.com/comp/FHNKPE/danny-devito-taxi-1978-FHNKPE.jpg", comedian_id: danny.id)
Special.create(name: "Always Sunny", run_time: 234, image_url: "https://nypdecider.files.wordpress.com/2017/06/frank-reynolds.jpg?quality=90&strip=all&w=646&h=431&crop=1", comedian_id: danny.id)

dana = Comedian.create(name: "Dana Carvey", age: 63, city: "Missoula")
Special.create(name: "Squatting Monkeys Tell No Lies", run_time: 98, image_url: "https://m.media-amazon.com/images/M/MV5BOGQ4MTI1N2MtNjZmNi00ZTk4LWIzMzUtNGNlZmIxOWM0NzI3XkEyXkFqcGdeQXVyMTk2ODU0OTM@._V1_.jpg", comedian_id: dana.id)
Special.create(name: "Straight White Male", run_time: 67, image_url: "https://m.media-amazon.com/images/M/MV5BZWJlMzAxMGItNzRlMS00MTIzLTljMzItMDI5ZjIxYzU5ZTIyXkEyXkFqcGdeQXVyNjYzMDA4MTI@._V1_UY268_CR4,0,182,268_AL_.jpg", comedian_id: dana.id)

mike = Comedian.create(name: "Mike Myers", age: 55, city: "Scarborough")
Special.create(name: "Austin Powers", run_time: 55, image_url: "https://www.simplemost.com/wp-content/uploads/2018/06/maxresdefault-1-750x500.jpg", comedian_id: mike.id)
Special.create(name: "Shrek", run_time: 66, image_url: "https://is1-ssl.mzstatic.com/image/thumb/Video118/v4/88/3b/de/883bdec3-4072-841d-e2d0-6609fdc19544/mzm.jqiredrw.lsr/268x0w.jpg", comedian_id: mike.id)

kate = Comedian.create(name: "Kate Micucci", age: 38, city: "Jersey City")
Special.create(name: "Trying To Be Special", run_time: 567, image_url: "https://m.media-amazon.com/images/M/MV5BNGQ4MTY3YTAtZTM1ZC00NTNkLTkxOWEtMjEyOWUxNzI1NjE3XkEyXkFqcGdeQXVyNTEzNDk3NDc@._V1_.jpg", comedian_id: kate.id)
Special.create(name: "Garfunkel and Oates", run_time: 321, image_url: "https://images-na.ssl-images-amazon.com/images/I/91LKPCetr6L._SY445_.jpg", comedian_id: kate.id)
