-- Define some variables
local modkey = "Mod4" -- Mod key (Super key)

-- Key bindings
local global_keys = {
    -- Move focus
    awful.key({ modkey }, "h", function() awful.client.focus.bydirection("left") end,
              {description = "focus left", group = "client"}),
    awful.key({ modkey }, "j", function() awful.client.focus.bydirection("down") end,
              {description = "focus down", group = "client"}),
    awful.key({ modkey }, "k", function() awful.client.focus.bydirection("up") end,
              {description = "focus up", group = "client"}),
    awful.key({ modkey }, "l", function() awful.client.focus.bydirection("right") end,
              {description = "focus right", group = "client"}),

    -- Swap windows
    awful.key({ modkey, "Shift" }, "h", function() awful.client.swap.bydirection("left") end,
              {description = "swap with left", group = "client"}),
    awful.key({ modkey, "Shift" }, "j", function() awful.client.swap.bydirection("down") end,
              {description = "swap with down", group = "client"}),
    awful.key({ modkey, "Shift" }, "k", function() awful.client.swap.bydirection("up") end,
              {description = "swap with up", group = "client"}),
    awful.key({ modkey, "Shift" }, "l", function() awful.client.swap.bydirection("right") end,
              {description = "swap with right", group = "client"}),

    -- Resize windows
    awful.key({ modkey, "Control" }, "h", function() awful.client.incwfact(-0.05) end,
              {description = "decrease width", group = "client"}),
    awful.key({ modkey, "Control" }, "j", function() awful.client.incwfact(0.05) end,
              {description = "increase height", group = "client"}),
    awful.key({ modkey, "Control" }, "k", function() awful.client.incwfact(-0.05) end,
              {description = "decrease height", group = "client"}),
    awful.key({ modkey, "Control" }, "l", function() awful.client.incwfact(0.05) end,
              {description = "increase width", group = "client"}),

    -- Program launcher
    awful.key({ modkey }, "r", function() awful.spawn("rofi -show drun") end,
              {description = "run prompt", group = "launcher"}),

    -- Terminal
    awful.key({ modkey }, "Return", function() awful.spawn("kitty") end,
              {description = "open a terminal", group = "launcher"}),

    -- Reload Awesome
    awful.key({ modkey, "Shift" }, "c", awesome.restart,
              {description = "reload awesome", group = "awesome"}),

    -- Quit Awesome
    awful.key({ modkey, "Shift" }, "q", awesome.quit,
              {description = "quit awesome", group = "awesome"})
}

-- Merge global keys
awful.keyboard.append_global_keybindings(global_keys)

-- Startup commands
awful.spawn.with_shell("dex --autostart --environment i3")
awful.spawn.with_shell("xrandr --output HDMI-0 --mode 1920x1080 --rate 74.97")
awful.spawn.with_shell("xinput --set-prop 20 'libinput Accel Profile Enabled' 0, 1")
awful.spawn.with_shell("setxkbmap -layout gb, de")
awful.spawn.with_shell("picom")
awful.spawn.with_shell("steam")
awful.spawn.with_shell("discord")
awful.spawn.with_shell("openrgb")
