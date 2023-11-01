module SpaceObjects
    using Planetarium
    using Planetarium.DB
    greekNames::Vector{String} = ["First-Rate","Beguile","Sacralgia","SneakyCamel","nitch","Intonation","The Surgeon","Rogue",
    "Jokey","Mystery","Plumulate","Everyday pursuits","animeactual","amazing looser","Joyful","Vital","Scandalitis","hippie glider",
    "Ixemetek","Sororal","drunkbetch","Noah wanderer","farmhousegranola","Poundal","SmilingSilly","Markematu","Absolute","Zamageni",
    "Greenda","twinkle charmer","Adeliza","Gigglebox","Scansorial","Hoary","Cathedralwa","Outstanding","Wardmote","Michinke","Titrimetry",
    "Strike","Flash","Embryoniform","KamueSavor","retro emperor","Sonic","SylvanGirl","Noodle","LaughterLife","Coniaker","Amuse",
    "Halottux","Smarten","junemoment","Public butter","BobbylentPardie","Chuckler","Winsome","Tosidium","Epenthesis","Junglizotnt"]
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
    Base.@kwdef mutable struct User
        id::Union{Integer,String} == "NULL"
        name::String
        ownerId::Integer
        distance_from_owner::Float64
        radius::Float64
        orbit_coordinates::Vector{Float32}
        composition::Vector{Pair}
        temperature::Float32
        class::Int
    end
    function generateRandomSpaceName()

    end
    # function generateRandomSpaceObject()
    #     name = ""
    #     if rand() > 0.7
    #         @label mark
    #         name = greekNames[rand(1:end)] 
    #         name += (rand() * 50000) |> round |> Int |> string
    #         if name |> objectNameExists
    #             @goto mark
    #         end
    #     else
        
    #     end
    #     return SpaceObject(
    #         nothing,

    #     )
    # end
    
    function objectNameExists(name::String)::Bool
        return DB.executeQuery("SELECT * FROM SpaceObjects WHERE name = $(name)") |> length > 0 
    end
end