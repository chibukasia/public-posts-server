describe User do 
    let(:killer) {User.first} 

    before do 
        killer = User.create(username: "John Killer")
        post9 = Post.create(title: "Bible verse", content: "Jesus wept", category: "Spiritual qoutes", posted_by: "Terry Wambui", likes: 8)
        Comment.create(content: "Nice lyrics", user_id: killer.id, post_id: post9.id)
    end

    it "Has a user John Killer" do 
        expect(killer).to have_attributes(username: "John Killer")
    end 

    describe "#posts" do
        it "has the posts " do
            pos1 = Post.find_by(title: "Bible verse")
            expect(killer.posts).to include(pos1)   
        end
    end

    describe "#comments" do
        it "has the comments " do
            comm1 = Comment.find_by(content: "Nice lyrics")
            expect(killer.comments).to include(comm1)   
        end
    end
end