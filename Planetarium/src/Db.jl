using CSV
using MySQL
using JSON
using DataFrames
using JSONTables
module Db
    function executeQuery(query::String)
        conn = DBInterface.connect(MySQL.Connection, "localhost", "root", "", db = "Users")
        cur = DBInterface.execute(conn, query)
        df = DataFrame(cur)
        stringified_json = arraytable(df)
        return stringified_json
    end
end