-- See https://wiki.hypr.land/Configuring/Basics/Window-Rules/
-- and https://wiki.hypr.land/Configuring/Basics/Workspace-Rules/

-- Example window rules that are useful

local suppressMaximizeRule = hl.window_rule({
    -- Ignore maximize requests from all apps. You'll probably like this.
    name  = "suppress-maximize-events",
    match = { class = ".*" },

    suppress_event = "maximize",
})
-- suppressMaximizeRule:set_enabled(false)

hl.workspace_rule({ workspace = "1", persistent = true})
hl.workspace_rule({ workspace = "2", persistent = true})
hl.workspace_rule({ workspace = "3", persistent = true})


hl.window_rule({
    -- Fix some dragging issues with XWayland
    name  = "fix-xwayland-drags",
    match = {
        class      = "^$",
        title      = "^$",
        xwayland   = true,
        float      = true,
        fullscreen = false,
        pin        = false,
    },

    no_focus = true,
})

-- Layer rules also return a handle.
-- local overlayLayerRule = hl.layer_rule({
--     name  = "no-anim-overlay",
--     match = { namespace = "^my-overlay$" },
--     no_anim = true,
-- })
-- overlayLayerRule:set_enabled(false)

-- Hyprland-run windowrule
hl.window_rule({
    name  = "move-hyprland-run",
    match = { class = "hyprland-run" },

    move  = "20 monitor_h-120",
    float = true,
})

--hl.window_rule({
--    name = "kitty_float_workspace1",
--    match = { class = "kitty", workspace = "1" },
--    float = true,
--})

hl.window_rule({
    name = "kitty_transparency",
    match = { class = "kitty" },
    opacity = "1"
})

--hl.window_rule({
--    name = "kitty_floating",
--    match = { class = "floating-term" },
--    float = true,
--    center = true,
--    size = "800 500",
--    opacity = "0.98 0.96"
--})

-- ### LINKTUI TOP RIGHT WINDOW RULE ###
hl.window_rule({
    name  = "linktui-top-right",
    match = { title = "^(linktui)$" },
    float = true,
    size  = "750 650",
    move  = { "monitor_w - window_w - 10", 50 },
})
