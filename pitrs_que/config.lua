Config = {}

local Prefix = "[Pitrs Custom Queue] "

Config.maxServerSlots = 32

Config.DiscordServerID = "" -- Discord ServerID
Config.DiscordBotToken = "" -- Discord Bot Token

Config.Roles = {
    Owner = {
        roleID = "1382772369365401600",
        points = 10,
        name = "Owner"
    },
    Donator = {
        roleID = "123123123123",
        points = 15,
        name = "Donator"
    },
}

Config.Colors = {
    "accent",
    "good",
    "warning",
    "attention",
}

Config.Messages = {
    Verifying = Prefix .. "Please wait, verifying your data.",
    NoDiscord = Prefix .. "Please make sure your Discord is open.",
    NoSteam = Prefix .. "Please make sure your Steam is open.",
    Blacklisted = Prefix .. "You are blacklisted from the server.",
    Welcome = Prefix .. "Welcome to the server!",
    Error = Prefix .. "An error occurred, please try again later.",
    HandshakingWith = Prefix .. "Handshaking with Pitrs Custom Queue.",
}
