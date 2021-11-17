require 'pg'

module Connect
    DB = PG.connect(dbname: 'phamdat', user: 'phamdat', port: 5433)
end