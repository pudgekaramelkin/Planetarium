module Users
    using Planetarium
    using Planetarium.DB
    #using Planetarium.
    using SearchLight
    using SearchLightMySQL
    Base.@kwdef mutable struct User
        id::Union{Integer,String} = "NULL"
        name::String
        email::String
        balance::Float64 = 0
        password::String
    end

    function getUser(id::Integer)::User
        userInfo = DB.executeQuery("SELECT * FROM Users WHERE id = $id")
        return User(
            userInfo[1,"id"],
            userInfo[1,"name"],
            userInfo[1,"email"],
            userInfo[1,"balance"],
            userInfo[1,"password"]
        )
    end
    
    function createUser(user::User)::nothing
        DB.executeQuery("INSERT INTO Users VALUES(NULL,'$(user.name)','$(user.email)',0,'$(user.password)')")
    end
    function deleteUser(id::Integer)::nothing
        DB.executeQuery("DELETE FROM Users WHERE id = $(id)")
    end
    function deleteUser(user::User)::nothing
        DB.executeQuery("DELETE FROM Users WHERE id = $(user.id)")
    end
    function changePassword(user::User, new_password::String)::nothing
        DB.executeQuery("UPDATE Users SET password = $(new_password) WHERE id = $(user.id)")
    end
    function changePassword(id::Integer, new_password::String)::nothing
        DB.executeQuery("UPDATE Users SET password = $(new_password) WHERE id = $(id)")
    end

    
end