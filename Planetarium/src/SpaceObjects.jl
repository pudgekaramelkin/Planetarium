module PlanetModule
    using Planetarium
    using Planetarium.DB

    struct Planet
        name::String = ""
        distanceFromTheStar::Float64 = ""
    end
end