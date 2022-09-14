describe Post do 
    let(:post6) { Post.last } 

    before do
        post6 = Post.create(title: "Bible verse", content: "Jesus wept", category: "Spiritual qoutes", posted_by: "Terry Wambui", likes: 8)
        user5 =User.create(username: "Yoweri Kaguta", country: "Uganda")
        Comment.create(content: "Nice lyrics", user_id: user5.id, post_id: post6.id)
    end
      
    it "Has post with title, content, category, posted by, likes" do 
      expect(post6).to have_attributes(title: "Bible verse", content: "Jesus wept", category: "Spiritual qoutes", posted_by: "Terry Wambui", likes: 8)
    end
    ## checks on comments method
    describe "#comments" do 
      it "return a comment with content nice lyrics" do 
        comment = Comment.find_by(content: "Nice lyrics")
        expect(post6.comments).to include(comment)
      end
    end

    # Check users method
    describe "#users" do 
      it "Has a user by Yoweri Kaguta" do 
        user = User.find_by(username: "Yoweri Kaguta")
        expect(post6.users).to include(user)
      end
    end

end