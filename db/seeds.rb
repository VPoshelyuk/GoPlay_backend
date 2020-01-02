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
        profile_pic_path: "https://ca.slack-edge.com/T02MD9XTF-UNBUFCFEH-d881e5172e1e-512",
        email: "slava@slava.me",
        phone_number: "19293098458",
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
        profile_pic_path: "https://ca.slack-edge.com/T02MD9XTF-UN7P9NS30-86a42d59c2d5-512",
        email: "jeff@jeff.me",
        phone_number: "13130938121",
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
        profile_pic_path: "https://ca.slack-edge.com/T02MD9XTF-UMJDQMZ9T-f902c19893fb-512",
        email: "jon@jon.me",
        phone_number: "13330138121",
        location: "New York, NY",
        birthday: "01/21/1995",
        gender: "Male",
        bio: "My name is Jonathan Tan and my favorite sports include, but not limited to Soccer and Ice Hockey",
        won_games: 0,
        tie_games: 0,
        lost_games: 0,
        admin: 0,
        password_digest: BCrypt::Password.create("123456")},
    {
        username: "MaryFarner",
        first_name: "Mary",
        last_name: "Farner",
        profile_pic_path: "https://ca.slack-edge.com/T02MD9XTF-UMZ5205R7-02bc68b81071-512",
        email: "marry@gmail.com",
        phone_number: "13937438121",
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
        profile_pic_path: "https://ca.slack-edge.com/T02MD9XTF-UN5GYACUQ-g5184c1a6992-512",
        email: "connor@connor.me",
        phone_number: "17143938121",
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

teams = Team.create([
        {
        name: "Team 3234",
        location: "New York, NY",
        number_of_members: 2,
        won_games: 2,
        tie_games: 5,
        lost_games: 1,
        logo_path: "https://fish1964.files.wordpress.com/2013/06/20130624_205040.jpg",
        description: "Siblings: None
        Family: You were raised by your mother and father.
        Lifestyle: Comfortable. Grew up in a large house
        Childhood: You had several friends, and your childhood was generally a happy one.",
        admin_id: 1,
        activity_id: 1},
        {
        name: "Team 111",
        location: "New York, NY",
        number_of_members: 1,
        won_games: 5,
        tie_games: 4,
        lost_games: 7,
        logo_path: "https://i.ytimg.com/vi/9ac_MWqEdF8/hqdefault.jpg",
        description: "Siblings: None
        Family: You were raised by your mother and father.
        Lifestyle: Comfortable. Grew up in a large house
        Childhood: You had several friends, and your childhood was generally a happy one.",
        admin_id: 1,
        activity_id: 3},
        {
        name: "Team 232",
        location: "New York, NY",
        number_of_members: 1,
        won_games: 2,
        tie_games: 9,
        lost_games: 10,
        logo_path: "https://pga-tour-res.cloudinary.com/image/upload/c_fill,dpr_3.0,f_auto,g_center,h_393,q_auto,w_713/v1/pgatour/editorial/2019/12/16/INTL-logo-847.jpg",
        description: "Siblings: None
        Family: You were raised by your mother and father.
        Lifestyle: Comfortable. Grew up in a large house
        Childhood: You had several friends, and your childhood was generally a happy one.",
        admin_id: 1,
        activity_id: 4},
        {
        name: "Team 65",
        location: "New York, NY",
        number_of_members: 1,
        won_games: 1,
        tie_games: 1,
        lost_games: 1,
        logo_path: "https://gamepedia.cursecdn.com/lolesports_gamepedia_en/thumb/4/45/Nova_Esports_%28Thai_Team%29logo_square.png/1200px-Nova_Esports_%28Thai_Team%29logo_square.png",
        description: "Siblings: None
        Family: You were raised by your mother and father.
        Lifestyle: Comfortable. Grew up in a large house
        Childhood: You had several friends, and your childhood was generally a happy one.",
        admin_id: 1,
        activity_id: 5},
        {
        name: "Team 52",
        location: "New York, NY",
        number_of_members: 1,
        won_games: 7,
        tie_games: 2,
        lost_games: 9,
        logo_path: "https://fish1964.files.wordpress.com/2013/06/20130624_205040.jpg",
        description: "Siblings: None
        Family: You were raised by your mother and father.
        Lifestyle: Comfortable. Grew up in a large house
        Childhood: You had several friends, and your childhood was generally a happy one.",
        admin_id: 2,
        activity_id: 3},
        {
        name: "Team 546",
        location: "New York, NY",
        number_of_members: 1,
        won_games: 0,
        tie_games: 2,
        lost_games: 0,
        logo_path: "https://fish1964.files.wordpress.com/2013/06/20130624_205040.jpg",
        description: "Siblings: None
        Family: You were raised by your mother and father.
        Lifestyle: Comfortable. Grew up in a large house
        Childhood: You had several friends, and your childhood was generally a happy one.",
        admin_id: 3,
        activity_id: 1},
        {
        name: "Team 754",
        location: "New York, NY",
        number_of_members: 1,
        won_games: 2,
        tie_games: 4,
        lost_games: 1,
        logo_path: "https://www.pngitem.com/pimgs/m/200-2002409_espn-fantasy-football-team-logo-boliviaenmovimiento-hd-png.png",
        description: "Siblings: None
        Family: You were raised by your mother and father.
        Lifestyle: Comfortable. Grew up in a large house
        Childhood: You had several friends, and your childhood was generally a happy one.",
        admin_id: 3,
        activity_id: 3},
        {
        name: "Team 123",
        location: "New York, NY",
        number_of_members: 2,
        won_games: 12,
        tie_games: 1,
        lost_games: 1,
        logo_path: "https://fish1964.files.wordpress.com/2013/06/20130624_205040.jpg",
        description: "Siblings: None
        Family: You were raised by your mother and father.
        Lifestyle: Comfortable. Grew up in a large house
        Childhood: You had several friends, and your childhood was generally a happy one.",
        admin_id: 4,
        activity_id: 4},
        {
        name: "Team 0010",
        location: "New York, NY",
        number_of_members: 1,
        won_games: 5,
        tie_games: 2,
        lost_games: 8,
        logo_path: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTJjc4IXG1ihpmqj4vwVPpNA147FM2OnWriCzABSII0x1qKn4wtcA&s",
        description: "Siblings: None
        Family: You were raised by your mother and father.
        Lifestyle: Comfortable. Grew up in a large house
        Childhood: You had several friends, and your childhood was generally a happy one.",
        admin_id: 5,
        activity_id: 6}
])

user_teams = UserTeam.create([
    { user_id: 1 , team_id: 1, signup_won_games: 0 ,signup_tie_games: 0 , signup_lost_games: 0 }, 
    { user_id: 1 , team_id: 2, signup_won_games: 0 ,signup_tie_games: 0 , signup_lost_games: 0  }, 
    { user_id: 1 , team_id: 3, signup_won_games: 0 ,signup_tie_games: 0 , signup_lost_games: 0  },
    { user_id: 1 , team_id: 4, signup_won_games: 0 ,signup_tie_games: 0 , signup_lost_games: 0  },
    { user_id: 2 , team_id: 5, signup_won_games: 0 ,signup_tie_games: 0 , signup_lost_games: 0  },
    { user_id: 3 , team_id: 6, signup_won_games: 0 ,signup_tie_games: 0 , signup_lost_games: 0  },
    { user_id: 3 , team_id: 7, signup_won_games: 0 ,signup_tie_games: 0 , signup_lost_games: 0  },
    { user_id: 4 , team_id: 8, signup_won_games: 0 ,signup_tie_games: 0 , signup_lost_games: 0  },
    { user_id: 5 , team_id: 9, signup_won_games: 0 ,signup_tie_games: 0 , signup_lost_games: 0  },
    { user_id: 5 , team_id: 8, signup_won_games: 0 ,signup_tie_games: 0 , signup_lost_games: 0  },
    { user_id: 5 , team_id: 1, signup_won_games: 0 ,signup_tie_games: 0 , signup_lost_games: 0  },
    { user_id: 5 , team_id: 2, signup_won_games: 0 ,signup_tie_games: 0 , signup_lost_games: 0  }
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
        admin_id: 1,
        activity_id: 1},
        {
        name: "Upper East Side Soccer Fans",
        location: "New York, NY",
        logo_path: "https://www.snopes.com/tachyon/2016/12/shutterstock_426279466.jpg?resize=865,452&quality=65",
        description: "Siblings: None
        Family: You were raised by your mother and father.
        Lifestyle: Comfortable. Grew up in a large house
        Childhood: You had several friends, and your childhood was generally a happy one.",
        admin_id: 1,
        activity_id: 1},
        {
        name: "Volleyball ♥️",
        location: "Miami, FL",
        logo_path: "https://coloradopreps.com/wp-content/uploads/2018/10/Volleyball-Logo-5.jpg",
        description: "Siblings: None
        Family: You were raised by your mother and father.
        Lifestyle: Comfortable. Grew up in a large house
        Childhood: You had several friends, and your childhood was generally a happy one.",
        admin_id: 5,
        activity_id: 4},
        {
        name: "Basketball 🏀",
        location: "New York, NY",
        logo_path: "https://x.pac-12.com/sites/default/files/styles/homepage_featured/public/BallThruHoop2016_01_1.JPG?itok=Yg439KTn",
        description: "Siblings: None
        Family: You were raised by your mother and father.
        Lifestyle: Comfortable. Grew up in a large house
        Childhood: You had several friends, and your childhood was generally a happy one.",
        admin_id: 2,
        activity_id: 3},
        {
        name: "Random group",
        location: "Los Angeles, CA",
        logo_path: "http://tenrandomfacts.com/wp-content/uploads/2016/06/Field-Hockey.jpg",
        description: "Siblings: None
        Family: You were raised by your mother and father.
        Lifestyle: Comfortable. Grew up in a large house
        Childhood: You had several friends, and your childhood was generally a happy one.",
        admin_id: 4,
        activity_id: 4},
        {
        name: "V123 HJdqldq",
        location: "Miami, FL",
        logo_path: "https://coloradopreps.com/wp-content/uploads/2018/10/Volleyball-Logo-5.jpg",
        description: "Siblings: None
        Family: You were raised by your mother and father.
        Lifestyle: Comfortable. Grew up in a large house
        Childhood: You had several friends, and your childhood was generally a happy one.",
        admin_id: 5,
        activity_id: 6},
        {
        name: "Basketball 🏀",
        location: "New York, NY",
        logo_path: "https://x.pac-12.com/sites/default/files/styles/homepage_featured/public/BallThruHoop2016_01_1.JPG?itok=Yg439KTn",
        description: "Siblings: None
        Family: You were raised by your mother and father.
        Lifestyle: Comfortable. Grew up in a large house
        Childhood: You had several friends, and your childhood was generally a happy one.",
        admin_id: 5,
        activity_id: 3},
        {
        name: "Test group",
        location: "Los Angeles, CA",
        logo_path: "http://tenrandomfacts.com/wp-content/uploads/2016/06/Field-Hockey.jpg",
        description: "Siblings: None
        Family: You were raised by your mother and father.
        Lifestyle: Comfortable. Grew up in a large house
        Childhood: You had several friends, and your childhood was generally a happy one.",
        admin_id: 4,
        activity_id: 2},
        {
        name: "Group #23",
        location: "Miami, FL",
        logo_path: "https://coloradopreps.com/wp-content/uploads/2018/10/Volleyball-Logo-5.jpg",
        description: "Siblings: None
        Family: You were raised by your mother and father.
        Lifestyle: Comfortable. Grew up in a large house
        Childhood: You had several friends, and your childhood was generally a happy one.",
        admin_id: 4,
        activity_id: 1},
        {
        name: "Group h42l",
        location: "New York, NY",
        logo_path: "https://x.pac-12.com/sites/default/files/styles/homepage_featured/public/BallThruHoop2016_01_1.JPG?itok=Yg439KTn",
        description: "Siblings: None
        Family: You were raised by your mother and father.
        Lifestyle: Comfortable. Grew up in a large house
        Childhood: You had several friends, and your childhood was generally a happy one.",
        admin_id: 3,
        activity_id: 3},
        {
        name: "Ypiouop",
        location: "Los Angeles, CA",
        logo_path: "http://tenrandomfacts.com/wp-content/uploads/2016/06/Field-Hockey.jpg",
        description: "Siblings: None
        Family: You were raised by your mother and father.
        Lifestyle: Comfortable. Grew up in a large house
        Childhood: You had several friends, and your childhood was generally a happy one.",
        admin_id: 5,
        activity_id: 4},
        {
        name: "Chrkls",
        location: "Miami, FL",
        logo_path: "https://coloradopreps.com/wp-content/uploads/2018/10/Volleyball-Logo-5.jpg",
        description: "Siblings: None
        Family: You were raised by your mother and father.
        Lifestyle: Comfortable. Grew up in a large house
        Childhood: You had several friends, and your childhood was generally a happy one.",
        admin_id: 1,
        activity_id: 4},
        {
        name: "More seed groups",
        location: "New York, NY",
        logo_path: "https://x.pac-12.com/sites/default/files/styles/homepage_featured/public/BallThruHoop2016_01_1.JPG?itok=Yg439KTn",
        description: "Siblings: None
        Family: You were raised by your mother and father.
        Lifestyle: Comfortable. Grew up in a large house
        Childhood: You had several friends, and your childhood was generally a happy one.",
        admin_id: 1,
        activity_id: 3},
        {
        name: "Random group #98312",
        location: "Los Angeles, CA",
        logo_path: "http://tenrandomfacts.com/wp-content/uploads/2016/06/Field-Hockey.jpg",
        description: "Siblings: None
        Family: You were raised by your mother and father.
        Lifestyle: Comfortable. Grew up in a large house
        Childhood: You had several friends, and your childhood was generally a happy one.",
        admin_id: 2,
        activity_id: 3}
])