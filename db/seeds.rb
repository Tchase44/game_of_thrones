# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

House.destroy_all
Character.destroy_all

stark = House.create(name:"Stark", words: "Winter is Coming", castle: "Winterfel", sigil_url:"https://s-media-cache-ak0.pinimg.com/originals/b9/8f/2f/b98f2f167fd05ae17b2c4aa7cad6f3ee.jpg")
baratheon = House.create(name:"Baratheon", words: "Ours is the Fury", castle: "Stormsend", sigil_url:"https://vignette4.wikia.nocookie.net/gameofthrones/images/0/00/House-Baratheon-Main-Shield.PNG/revision/latest/scale-to-width-down/350?cb=20170519002924")
lannister = House.create(name:"Lannister", words: "Hear me Roar", castle: "CasterlyRock", sigil_url:"https://vignette3.wikia.nocookie.net/gotrp/images/c/cb/250px-House_Lannister.png/revision/latest?cb=20140320190146")
tyrell = House.create(name:"Tyrell", words: "Growing Strong", castle: "High Garden", sigil_url:"https://vignette2.wikia.nocookie.net/gameofthrones/images/c/cf/House-Tyrell-Main-Shield.PNG/revision/latest?cb=20170108163035")
greyjoy = House.create(name:"Greyjoy", words: "We Do Not Sow", castle: "Pyke", sigil_url:"https://vignette3.wikia.nocookie.net/gameofthrones/images/8/86/House-Greyjoy-Main-Shield.PNG/revision/latest?cb=20170523015836")
targaryen = House.create(name:"Targaryen", words: "Fire and Blood", castle: "Dragon Stone", sigil_url:"https://vignette2.wikia.nocookie.net/gameofthrones/images/4/43/House-Targaryen-Main-Shield.PNG/revision/latest?cb=20170510235320")
mormont = House.create(name:"Mormont", words: "Here We Stand", castle: "Bear Island", sigil_url:"https://qph.ec.quoracdn.net/main-qimg-ac4d87ff4f676e0dcef70cb64ef9e62b")
the_watch = House.create(name:"The Night's Watch", words: "Sword in the Darkness", castle: "Castle Black", sigil_url:"https://vignette4.wikia.nocookie.net/gameofthrones/images/e/ed/Night%27s-Watch-Main-Shield.PNG/revision/latest?cb=20161231113156")

dany = targaryen.characters.create(title:"Queen of the Andals and the Rhoynar and the First men, Protector of the Realm, Khaleesi of the Great Grass Sea, Unburnt, Mother of Dragons, Breaker of Chains, Queen of Mereen",name:"Daenerys Targaryen",house: targaryen, img_url: "https://vignette3.wikia.nocookie.net/gameofthrones/images/8/88/Daenerys_Targaryen_S7_Promo_Image.PNG/revision/latest?cb=20170420191154")
j_snow = stark.characters.create(title:"Jon Snow of House Stark, King in the North, King Beyond the Wall, Lord of Winterfell, the White Wolf, the Undead",name:"Jon Snow",house: stark, img_url: "https://vignette3.wikia.nocookie.net/gameofthrones/images/0/05/GoT-Sn7_FirstLook_09.jpg/revision/latest?cb=20170420183850")
sam = the_watch.characters.create(title:"",name:"Samwell Tarly",house: the_watch, img_url: "https://vignette1.wikia.nocookie.net/gameofthrones/images/5/5c/SamwellTarly-Profile.jpg/revision/latest?cb=20161215025531")
sansa = stark.characters.create(title:"Lady of Winterfell",name:"Sansa Stark",house: stark, img_url: "https://vignette3.wikia.nocookie.net/gameofthrones/images/9/90/Darksansastark.jpg/revision/latest?cb=20170603165208")
cersi = lannister.characters.create(title:"Queen of the Andals and the First Men, Protector of the Seven Kingdoms",name:"Cersei Lannister",house: lannister, img_url: "https://vignette2.wikia.nocookie.net/gameofthrones/images/c/c7/Queen_Cersei_Main_The_winds_of_Winter.jpg/revision/latest?cb=20161215024728")
jamie = lannister.characters.create(title:"Ser Lord Commander of the Kingsguard",name:"Jamie Lannister",house: lannister, img_url: "https://vignette4.wikia.nocookie.net/gameofthrones/images/c/c5/Jaime_s6_Ep08_.jpg/revision/latest?cb=20161215030911")
robert = baratheon.characters.create(title:"(Former) King of the Andals and the Rhoynar and the First men, Protector of the Realm,",name:"Robert Baratheon",house: baratheon, img_url: "https://vignette3.wikia.nocookie.net/gameofthrones/images/d/d4/RobertBaratheon.jpg/revision/latest?cb=20141119000127")
jorah = mormont.characters.create(title:"Ser",name:"Jorah Mormont",house: mormont, img_url: "https://vignette1.wikia.nocookie.net/gameofthrones/images/c/c1/Ser_Jorah_s6_main_new.jpg/revision/latest?cb=20160702233345")
olenna = tyrell.characters.create(title:"The Queen of Thorns",name:"Olenna Tyrell",house: tyrell, img_url: "https://vignette1.wikia.nocookie.net/gameofthrones/images/b/bb/Olenna_season_6_a.jpg/revision/latest?cb=20160718204242")
theon = greyjoy.characters.create(title:"",name:"Theon Greyjoy",house: greyjoy, img_url: "https://vignette2.wikia.nocookie.net/gameofthrones/images/6/65/605_Theon_Promo_new.jpg/revision/latest?cb=20160708203536")
yara = greyjoy.characters.create(title:"Queen of the Iron Islands",name:"Yara Greyjoy",house: greyjoy, img_url: "https://vignette2.wikia.nocookie.net/gameofthrones/images/a/a8/Game_of_thrones_6x5_yara_promo.jpg/revision/latest?cb=20160808022737")
lyanna = mormont.characters.create(title:"Lord of Bear Island",name:"Lyanna Mormont",house:mormont,img_url:"https://vignette2.wikia.nocookie.net/gameofthrones/images/5/51/GoT-Sn7_FirstLook_02.jpg/revision/latest?cb=20170420183915")


