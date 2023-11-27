function createVehiclesForPlayer(player, command, model)
    local db = exports.db:getConnection()
    local x,y,z = getElementPosition(player)
    y = y + 5

    dbExec(db, 'INSERT INTO vehicles (model, x, y, z) VALUES (?, ?, ?, ?)', model, x, y, z)

    createVehicle(model, x, y, z)
end

addCommandHandler('createv', createVehiclesForPlayer, false, false)