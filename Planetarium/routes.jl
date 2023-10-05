using Genie.Router
using Planetarium
route("/") do
  serve_static_file("login.html")
end