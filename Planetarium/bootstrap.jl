(pwd() != @__DIR__) && cd(@__DIR__) # allow starting app from bin/ dir

using Planetarium
const UserApp = Planetarium
Planetarium.main()
