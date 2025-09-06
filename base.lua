local plr = game.Players.LocalPlayer
local desc, con

local function setSkin(char)
    local hum = char:WaitForChild("Humanoid", 3)
    if desc then
        plr:ClearCharacterAppearance()
        hum:ApplyDescriptionClientServer(desc)
    end
end

pcall(function()
    local userId = game.Players:GetUserIdFromNameAsync("killashuni")
    desc = game.Players:GetHumanoidDescriptionFromUserId(userId)
    setSkin(plr.Character)
    con = plr.CharacterAdded:Connect(setSkin)
end)

