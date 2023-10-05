using Planetarium
using Planetarium.Users
route("/") do
  Users.getUser(1)
end

route("/test") do 
# Encryption.encrypt("sex",234)
end

