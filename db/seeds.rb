puts "ð± Seeding users..."
# create users sample data
jose = User.create(username: "Jose Carmago", country: "Venezuela")
hemman = User.create(username: "Mwashi Hemman", country: "Kenya")
rao = User.create(username: "Raila Amollo Odinga", country: "Kenya")
museveni = User.create(username: "Yoweri Kaguta", country: "Uganda") 

puts "ð± Seeding posts..."
# create posts sample data
post1 = Post.create(title: "Dark At Mid-day", content: "The gooese was roatsed and brought to the governors palace. But the palace was deserted. Noon was nolonger an hour to live but an hour to dies", category: "Poems", posted_by: "Juan Alina", likes: 5)
post2 = Post.create(title: "Masculine quote", content: "Never beat a fellow man while he is down", category: "Qoutes", posted_by: "Rahman Said Abdul", likes: 4)
post3 = Post.create(title: "Raila's Joke", content: "Risasi imebakia ngapi?...Na itapiga naini?...Raila", category: "Jokes", posted_by: "Siraj Saqil", likes: 7)
post4 = Post.create(title: "Bible verse", content: "Jesus wept and turned bread into wine", category: "Spiritual qoutes", posted_by: "Terry Wambui", likes: 8) 
post5 = Post.create(title: "Bela ciao by Hopsin", content: "If I don't make it \n to see tomorrow \n bela ciao bela cia0 cia0 \n If I don't make \n to see tomorrow \n please put some respect on my name", category: "Lyrics", posted_by: "Moses Waroma", likes: 3)

puts "ð± Seeding comments..."
# create sample comments
comm1 = Comment.create(content: "Nice lyrics", user_id: jose.id, post_id: post5.id)
comm2 = Comment.create(content: "What a jokeððððððð", user_id: rao.id, post_id: post3.id)
comm3 = Comment.create(content: "Don't joke with babaðð", user_id: museveni.id, post_id: post3.id)
comm4 = Comment.create(content: "I liked your poem man", user_id: hemman.id, post_id: post1.id)
comm5 = Comment.create(content: "We're sad and you're making jokes at baba??ðð", user_id: hemman.id, post_id: post3.id)
comm6 = Comment.create(content: "Amen, evn though wrong quote", user_id: hemman.id, post_id: post4.id)
comm7 = Comment.create(content: "Am a certified pagan but I can see an misquote in the verse", user_id: jose.id, post_id: post4.id)
comm8 = Comment.create(content: "True. Bro code 00263", user_id: jose.id, post_id: post2.id)
comm9 = Comment.create(content: "We hacked your democracy", user_id: jose.id, post_id: post3.id) 
comm10 = Comment.create(content: "Always being a man", user_id: rao.id, post_id: post2.id)

puts "â Done seeding!"
