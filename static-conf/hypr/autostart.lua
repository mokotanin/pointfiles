-- See https://wiki.hypr.land/Configuring/Basics/Autostart/

-- Autostart necessary processes (like notifications daemons, status bars, etc.)

hl.on("hyprland.start", function ()
    hl.exec_cmd("hyprpaper")
    hl.exec_cmd("swayosd-server -s ~/.config/swayosd/style.css")
    hl.exec_cmd("/usr/lib/polkit-gnome/polkit-gnome-authentication-agent-1")
    hl.exec_cmd("sudo systemctl enable --now NetworkManager")
    hl.exec_cmd("sudo systemctl enable --now bluetooth")
    hl.exec_cmd("waybar")
    hl.exec_cmd("hypridle")
    --hl.exec_cmd("code", { workspace = "1 silent" })
    --hl.exec_cmd("chromium --force-device-scale-factor=0.8", { workspace = "2 silent"})
    --hl.exec_cmd("kitty", { workspace = "3 silent" })
end)
