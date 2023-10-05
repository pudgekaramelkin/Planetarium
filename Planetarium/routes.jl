using Genie.Router
using Planetarium

route("/") do
  serve_static_file("login.html")
end

route("/test") do 
  Db.executeQuery("SELECT * FROM Users")
end