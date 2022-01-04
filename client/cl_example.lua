local ATM1 = BoxZone:Create(vector3(147.34, -1036.36, 29.34), 1.0, 1.0, {
    name="ATM1",
    heading = 155.11,
    useZ = true,
    debugPoly = true -- Set a green box at the PolyZone
})
local ATM2 = CircleZone:Create(vector3(145.78, -1035.75, 29.34), 1.0, {
    name="ATM2",
    heading = 155.11,
    useZ = true,
    debugPoly = true -- Set a green box at the PolyZone
})

local atATM1 = false
local atATM2 = false
function checkATMStatus()
    while true do
        local plyPed = PlayerPedId()
        local coord = GetEntityCoords(plyPed)
        atATM1 = ATM1:isPointInside(coord)
        atATM2 = ATM2:isPointInside(coord)
        if atATM1 or atATM2 then
            return true
        else
            return false
        end
    end
end

exports("checkATM", checkATMStatus)

--[[

{
        id = "PenisMan",
        displayName = "Open ATM",
        icon = "#garage-main",
        functionName = "banking:open",
        enableMenu = function()
        fuck = exports["esx_ambulancejob"]:GetDeath()
        local testing = exports["PolyZone-Tutorial"]:checkATM()
            if testing and not fuck then
                return true
            end
        end,
    },

]]