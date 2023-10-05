using CSV
using DataFrames
using MySQL
module Db
    export con
    global con = MySQL.connect("localhost", "root", "", db = "Planetarium_prod");

    
end