module Planetarium

using Genie
include("Users.jl")
include("Encryption.jl")
include("Db.jl")
const up = Genie.up
export up
function main()
  Genie.genie(; context = @__MODULE__)
end

end
