local player = game.Players.LocalPlayer
local backpack = player:WaitForChild("Backpack")

-- Create the tool
local tool = Instance.new("Tool")
tool.Name = "Explode"
tool.RequiresHandle = false  -- No handle needed

-- Function to play animation, sound, and make the player walk
tool.Activated:Connect(function()
    -- Load Animator if not already loaded
    if not getgenv()["Animator"] then
        loadstring(game:HttpGet("https://raw.githubusercontent.com/xhayper/Animator/main/Source/Main.lua"))()
    end

    local character = player.Character
    if not character then return end

    -- Play animation
    local Anim = Animator.new(character, 116769443825970)
    Anim:Play()

    -- Wait for animation to finish
    Anim.Stopped:Wait()
    print("Animation, sound, and walking finished!")
end)

-- Parent the tool to the player's backpack
tool.Parent = backpack
