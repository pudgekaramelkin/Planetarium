module DB
    using CSV
    using MySQL
    using JSON
    using DataFrames
    using JSONTables
    conn = MySQL.DBInterface.connect(MySQL.Connection, "localhost", "root", "", db = "Planetarium_prod")
    function executeQuery(query::String)
        cur = MySQL.DBInterface.execute(conn, query)
        return DataFrame(cur)
    end
end