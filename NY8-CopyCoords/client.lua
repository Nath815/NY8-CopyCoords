local lib = exports.ox_lib

RegisterCommand("copycoords", function()
    local ped = PlayerPedId()
    local coords = GetEntityCoords(ped)
    local heading = GetEntityHeading(ped)
    local vectorStr = string.format("vector4(%.2f, %.2f, %.2f, %.2f)", coords.x, coords.y, coords.z, heading)

    -- 📋 Copier dans le presse-papier
    lib:setClipboard(vectorStr)

    -- 💬 Notification
    TriggerEvent('chat:addMessage', {
        color = { 0, 255, 100 },
        args = { "✅ Coordonnées copiées :", vectorStr }
    })
    print("^2[Coords]^0 " .. vectorStr)
end)
