using Genie.Router
using Planetarium
route("/") do
  serve_static_file("welcome.html")
end