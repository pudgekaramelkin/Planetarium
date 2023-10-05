module Users
    using Planetarium
    using Planetarium.DB

    struct User
        id::Integer = -1
        name::String
        email::String
        balance::Float64
        password::String
    end
    function getUser(id::Integer)
        userInfo = DB.executeQuery("SELECT * FROM Users WHERE id = $id")
        return User(
            userInfo[1,"id"],
            userInfo[1,"name"],
            userInfo[1,"email"],
            userInfo[1,"balance"],
            userInfo[1,"password"]
        )
    end
    function getUser(name::String)
        userInfo = DB.executeQuery("SELECT * FROM Users WHERE name = '$name'")
        return User(
            userInfo[1,"id"],
            userInfo[1,"name"],
            userInfo[1,"email"],
            userInfo[1,"balance"],
            userInfo[1,"password"]
        )
    end

    function createUser(user::User)
        DB.executeQuery("INSERT INTO Users VALUES(NULL,'"*user.name *"','"*user.email *"',0,'"*user.password *"')")
    end
end