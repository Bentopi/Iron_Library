jkbio = "Joanne \"Jo\" Rowling, OBE, FRSL (/ˈroʊlɪŋ/; born 31 July 1965), pen names J. K. Rowling and Robert Galbraith, is a British novelist, screenwriter and film producer best known as the author of the Harry Potter fantasy series. The books have gained worldwide attention, won multiple awards, and sold more than 400 million copies.[1] They have become the best-selling book series in history[2] and been the basis for a series of films which is the second highest-grossing film series in history.[3] Rowling had overall approval on the scripts[4] and maintained creative control by serving as a producer on the final instalment.[5]
Born in Yate, Gloucestershire, England, Rowling was working as a researcher and bilingual secretary for Amnesty International when she conceived the idea for the Harry Potter series while on a delayed train from Manchester to London in 1990.[6] The seven-year period that followed saw the death of her mother, birth of her first child, divorce from her first husband and relative poverty until she finished the first novel in the series, Harry Potter and the Philosopher's Stone, in 1997. There were six sequels, the last, Harry Potter and the Deathly Hallows, in 2007. Since then, Rowling has written four books for adult readers, The Casual Vacancy (2012) and—under the pseudonym Robert Galbraith—the crime fiction novels The Cuckoo's Calling (2013), The Silkworm (2014) and Career of Evil (2015).[7]
Rowling has lived a \"rags to riches\" life story, in which she progressed from living on state benefits to multi-millionaire status within five years. She is the United Kingdom's best-selling living author, with sales in excess of £238m.[8] The 2008 Sunday Times Rich List estimated Rowling's fortune at £560 million, ranking her as the twelfth richest woman in the United Kingdom.[9] Forbes ranked Rowling as the 48th most powerful celebrity of 2007,[10] and Time magazine named her as a runner-up for its 2007 Person of the Year, noting the social, moral, and political inspiration she has given her fans.[11] In October 2010, Rowling was named the \"Most Influential Woman in Britain\" by leading magazine editors.[12] She has supported charities including Comic Relief, One Parent Families, Multiple Sclerosis Society of Great Britain and Lumos (formerly the Children's High Level Group)."

sebio = "Antoine Marie Jean-Baptiste Roger, comte de Saint-Exupéry[3][Note 1] (French: [ɑ̃twan də sɛ̃tɛɡzypeʁi]; 29 June 1900 – 31 July 1944) was a French writer, poet, aristocrat, journalist, and pioneering aviator. He became a laureate of several of France's highest literary awards and also won the U.S. National Book Award.[5] He is best remembered for his novella The Little Prince (Le Petit Prince) and for his lyrical aviation writings, including Wind, Sand and Stars and Night Flight.
Saint-Exupéry was a successful commercial pilot before World War II, working airmail routes in Europe, Africa and South America. At the outbreak of war, he joined the French Air Force (Armée de l'Air), flying reconnaissance missions until France's armistice with Germany in 1940. After being demobilised from the French Air Force, he travelled to the United States to persuade its government to enter the war against Nazi Germany. Following a 27-month hiatus in North America, during which he wrote three of his most important works, he joined the Free French Air Force in North Africa, although he was far past the maximum age for such pilots and in declining health. He disappeared over the Mediterranean on a reconnaissance mission in July 1944, and is believed to have died at that time.
Prior to the war, Saint-Exupéry had achieved fame in France as an aviator. His literary works – among them The Little Prince, translated into over 250 languages and dialects – posthumously boosted his stature to national hero status in France.[6][7] He earned further widespread recognition with international translations of his other works. His 1939 philosophical memoir Terre des hommes—Man and His World became the name of an international humanitarian group, and was also used to create the central theme of the most successful world's fair of the 20th century, Expo 67 in Montreal, Canada.[8]"

gabbio = "Gabriel José de la Concordia García Márquez (/ɡɑːrˈsiːə ˈmɑːrkɛs/;[1] American Spanish: [ɡaˈβɾjel ɣarˈsi.a ˈmarkes] ( listen);[2] 6 March 1927 – 17 April 2014) was a Colombian novelist, short-story writer, screenwriter and journalist, known affectionately as Gabo or Gabito throughout Latin America. Considered one of the most significant authors of the 20th century and one of the best in the Spanish language, he was awarded the 1972 Neustadt International Prize for Literature and the 1982 Nobel Prize in Literature.[3] He pursued a self-directed education that resulted in his leaving law school for a career in journalism. From early on, he showed no inhibitions in his criticism of Colombian and foreign politics. In 1958, he married Mercedes Barcha; they had two sons, Rodrigo and Gonzalo.[4]
García Márquez started as a journalist, and wrote many acclaimed non-fiction works and short stories, but is best known for his novels, such as One Hundred Years of Solitude (1967), The Autumn of the Patriarch (1975), and Love in the Time of Cholera (1985). His works have achieved significant critical acclaim and widespread commercial success, most notably for popularizing a literary style labeled as magic realism, which uses magical elements and events in otherwise ordinary and realistic situations. Some of his works are set in a fictional village called Macondo (the town mainly inspired by his birthplace Aracataca), and most of them explore the theme of solitude.
On his death in April 2014, Juan Manuel Santos, the President of Colombia, described him as \"the greatest Colombian who ever lived.\""

Author.create(first_name: "Joanne", last_name: "Rowling", bio: jkbio)
Author.create(first_name: "Antoine", last_name: "De Saint-Exupery", bio: sebio)
Author.create(first_name: "Gabriel", last_name: "Garcia Marquez", bio: gabbio)

Book.create(title:"Harry Potter and the Philosopher's Stone",
  photo_url:"https://upload.wikimedia.org/wikipedia/en/b/bf/Harry_Potter_and_the_Sorcerer%27s_Stone.jpg",
  price:49.99, author_id:1)

Book.create(title:"Harry Potter and the Chamber of Secrets",
  photo_url:"https://upload.wikimedia.org/wikipedia/en/a/a7/Harry_Potter_and_the_Chamber_of_Secrets_%28US_cover%29.jpg",
  price:49.99, author_id:1)

Book.create(title:"Harry Potter and the Prisoner of Azkaban",
  photo_url:"https://upload.wikimedia.org/wikipedia/en/b/b4/Harry_Potter_and_the_Prisoner_of_Azkaban_%28US_cover%29.jpg",
  price:49.99, author_id:1)

Book.create(title:"Harry Potter and the Goblet of Fire",
  photo_url:"https://upload.wikimedia.org/wikipedia/en/6/62/Harry_Potter_and_the_Goblet_of_Fire_%28US_cover%29.jpg",
  price:49.99, author_id:1)

Book.create(title:"Harry Potter and the Order of the Phoenix",
  photo_url:"https://stustation.files.wordpress.com/2011/01/hp5pic.jpg",
  price:49.99, author_id:1)

Book.create(title:"Harry Potter and the Half-Blood Prince",
  photo_url:"https://images-na.ssl-images-amazon.com/images/I/51NbOxBO%2BBL.jpg",
  price:49.99, author_id:1)

Book.create(title:"Harry Potter and the Deathly Hallows",
  photo_url:"https://upload.wikimedia.org/wikipedia/en/0/02/Harry_Potter_and_the_Deathly_Hallows_%28US_cover%29.jpg",
  price:49.99, author_id:1)

Book.create(title:"The Little Prince",
  photo_url:"http://d.gr-assets.com/books/1367545443l/157993.jpg",
  price:29.99, author_id:2)

Book.create(title:"Vol De Nuit",
  photo_url:"http://www.renaud-bray.com/ImagesEditeurs/PG/1223/1223310-gf.jpg",
  price:59.99, author_id:2)














# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
