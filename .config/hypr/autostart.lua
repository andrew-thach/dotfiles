hl.on("hyprland.start", function () 
  hl.exec_cmd("hyprpaper")
  hl.exec_cmd("hyprsunset")
  hl.exec_cmd("dunst")
  -- hl.exec_cmd("hypridle")
  -- TODO: hyprpokti or kde?
  hl.exec_cmd("waybar")
  hl.exec_cmd("nm-applet")
end)
