local player = game.Players.LocalPlayer
local backpack = player:WaitForChild("Backpack")

-- Create the tool
local tool = Instance.new("Tool")
tool.Name = "20 20 20 dorp kick"
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
    local Anim = Animator.new(character, 18723284950)
    Anim:Play()

    -- Play sound
    local sound = Instance.new("Sound")
    sound.SoundId = "rbxassetid://18511513629"
    sound.Volume = 2  -- Adjust volume if needed
    sound.Parent = character
    sound:Play()

    -- Set player's walkspeed to 30 and force them to walk
    player.Character.Humanoid.WalkSpeed = 100

    -- Wait for 15 seconds while player walks
    wait(6)

    -- Reset walkspeed to normal (default is 16)
    player.Character.Humanoid.WalkSpeed = 16

    -- Wait for animation to finish
    Anim.Stopped:Wait()
    print("Animation, sound, and walking finished!")
end)

-- Parent the tool to the player's backpack
tool.Parent = backpack
