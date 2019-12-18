# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
users = User.create([
    {
        username: "slavaP",
        first_name: "Slava",
        last_name: "Pashaliuk",
        profile_pic: "https://ca.slack-edge.com/T02MD9XTF-UNBUFCFEH-d881e5172e1e-512",
        email: "slava@slava.me",
        phone_number: "9293098458",
        location: "New York, NY",
        birthday: "01/01/1998",
        gender: "Male",
        bio: "Yo, my name is Slava and I am a creator of this beautiful website, as well as the one and only admin, if you have any questions you can reach out ti me through the e-mail: v.pashaliuk@gmail.com",
        won_games: 0,
        tie_games: 0,
        lost_games: 0,
        admin: 1,
        password_digest: BCrypt::Password.create("123456")},
    {
        username: "JJ",
        first_name: "Jeff",
        last_name: "Jiang",
        profile_pic: "https://ca.slack-edge.com/T02MD9XTF-UN7P9NS30-86a42d59c2d5-512",
        email: "jeff@jeff.me",
        phone_number: "3130938121",
        location: "New York, NY",
        birthday: "01/21/1997",
        gender: "Male",
        bio: "Yo, whazapp stupid?",
        won_games: 0,
        tie_games: 0,
        lost_games: 0,
        admin: 0,
        password_digest: BCrypt::Password.create("123456")},
    {
        username: "jonTan",
        first_name: "Jonathan",
        last_name: "Tan",
        profile_pic: "https://ca.slack-edge.com/T02MD9XTF-UMJDQMZ9T-f902c19893fb-512",
        email: "jon@jon.me",
        phone_number: "3330138121",
        location: "New York, NY",
        birthday: "01/21/1995",
        gender: "Male",
        bio: "My name is Jonathan Tan and my favorite sports include, but not limited by Soccer and Ice Hockey",
        won_games: 0,
        tie_games: 0,
        lost_games: 0,
        admin: 0,
        password_digest: BCrypt::Password.create("123456")},
    {
        username: "MaryFarner",
        first_name: "Mary",
        last_name: "Farner",
        profile_pic: "https://ca.slack-edge.com/T02MD9XTF-UMZ5205R7-02bc68b81071-512",
        email: "marry@gmail.com",
        phone_number: "3937438121",
        location: "New York, NY",
        birthday: "01/21/1995",
        gender: "Female",
        bio: "Obie is the best!!!",
        won_games: 0,
        tie_games: 0,
        lost_games: 0,
        admin: 0,
        password_digest: BCrypt::Password.create("123456")},
    {
        username: "cMeth",
        first_name: "Connor",
        last_name: "Meth",
        profile_pic: "https://ca.slack-edge.com/T02MD9XTF-UN5GYACUQ-g5184c1a6992-512",
        email: "connor@connor.me",
        phone_number: "7143938121",
        location: "New York, NY",
        birthday: "05/13/1995",
        gender: "Male",
        bio: "Siblings: None
        Family: You were raised by your mother and father.
        Lifestyle: Comfortable. Grew up in a large house
        Childhood: You had several friends, and your childhood was generally a happy one.",
        won_games: 0,
        tie_games: 0,
        lost_games: 0,
        admin: 0,
        password_digest: BCrypt::Password.create("123456")}
])

activities = Activity.create([
    { name: 'Soccer', logo_path: "https://image.flaticon.com/icons/png/128/33/33736.png", number_of_members: 4, number_of_teams: 0 }, 
    { name: 'Football', logo_path: "https://image.flaticon.com/icons/png/128/74/74071.png" , number_of_members: 1, number_of_teams: 0 },
    { name: 'Basketball', logo_path: "https://image.flaticon.com/icons/png/128/55/55243.png" , number_of_members: 4, number_of_teams: 0 },
    { name: 'Volleyball', logo_path: "https://image.flaticon.com/icons/png/128/70/70946.png" , number_of_members: 3, number_of_teams: 0 },
    { name: 'Baseball', logo_path: "https://image.flaticon.com/icons/png/128/590/590378.png" , number_of_members: 1, number_of_teams: 0 },
    { name: 'Ice Hockey', logo_path: "https://image.flaticon.com/icons/png/128/175/175416.png" , number_of_members: 1, number_of_teams: 0 }
])

user_activities = UserActivity.create([
    { user_id: 1 , activity_id: 1 }, 
    { user_id: 1 , activity_id: 3 }, 
    { user_id: 1 , activity_id: 4 },
    { user_id: 1 , activity_id: 5 },
    { user_id: 2 , activity_id: 3 },
    { user_id: 3 , activity_id: 1 },
    { user_id: 3 , activity_id: 3 },
    { user_id: 4 , activity_id: 1 },
    { user_id: 4 , activity_id: 2 },
    { user_id: 4 , activity_id: 4 },
    { user_id: 5 , activity_id: 1 },
    { user_id: 5 , activity_id: 3 },
    { user_id: 5 , activity_id: 4 },
    { user_id: 5 , activity_id: 6 }
])

groups = Group.create([
        {
        name: "Brooklyn Soccer Club",
        location: "New York, NY",
        logo_path: "https://fish1964.files.wordpress.com/2013/06/20130624_205040.jpg",
        description: "Siblings: None
        Family: You were raised by your mother and father.
        Lifestyle: Comfortable. Grew up in a large house
        Childhood: You had several friends, and your childhood was generally a happy one.",
        activity_id: 1},
        {
        name: "Upper East Side Soccer Fans",
        location: "New York, NY",
        logo_path: "https://www.snopes.com/tachyon/2016/12/shutterstock_426279466.jpg?resize=865,452&quality=65",
        description: "Siblings: None
        Family: You were raised by your mother and father.
        Lifestyle: Comfortable. Grew up in a large house
        Childhood: You had several friends, and your childhood was generally a happy one.",
        activity_id: 1},
        {
        name: "Voleyball ♥️",
        location: "Miami, FL",
        logo_path: "https://coloradopreps.com/wp-content/uploads/2018/10/Volleyball-Logo-5.jpg",
        description: "Siblings: None
        Family: You were raised by your mother and father.
        Lifestyle: Comfortable. Grew up in a large house
        Childhood: You had several friends, and your childhood was generally a happy one.",
        activity_id: 2},
        {
        name: "Basketball 🏀",
        location: "New York, NY",
        logo_path: "https://x.pac-12.com/sites/default/files/styles/homepage_featured/public/BallThruHoop2016_01_1.JPG?itok=Yg439KTn",
        description: "Siblings: None
        Family: You were raised by your mother and father.
        Lifestyle: Comfortable. Grew up in a large house
        Childhood: You had several friends, and your childhood was generally a happy one.",
        activity_id: 3},
        {
        name: "Random group",
        location: "Los Angeles, CA",
        logo_path: "http://tenrandomfacts.com/wp-content/uploads/2016/06/Field-Hockey.jpg",
        description: "Siblings: None
        Family: You were raised by your mother and father.
        Lifestyle: Comfortable. Grew up in a large house
        Childhood: You had several friends, and your childhood was generally a happy one.",
        activity_id: 5}
])