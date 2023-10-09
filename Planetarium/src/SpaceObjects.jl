module SpaceObjects
    using Planetarium
    using Planetarium.DB
    @enum SpaceObjectClass begin
        planet = 1
        satellite = 2
        star = 3
        galaxy = 4
        asteroid = 5
        comet = 6
        black_hole = 7
        neutron_star = 8
        brown_dwarf = 9
        red_dwarf = 10
        white_dwarf = 11
        main_sequence_star = 12
        giant_star = 13
        supergiant_star = 14
        hypergiant_star = 15
        wolf_rayet_star = 16
    end
    struct SpaceObject
        id::Integer
        name::String
        ownerId::Integer
        distance_from_owner::Float64
        radius::Float64
        orbit_coordinates::Vector{Float32}
        composition::Vector{Pair}
        temperature::Float32
        class::SpaceObjectClass 
    end

    
end