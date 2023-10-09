module Planetarium

using Genie
include("Db.jl")
include("Users.jl")
include("Encryption.jl")
include("SpaceObjects.jl")
include("PlanetarySystem.jl")

const up = Genie.up
export up
function main()
  Genie.genie(; context = @__MODULE__)
end

end
