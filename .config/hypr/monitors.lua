-- See https://wiki.hypr.land/Configuring/Basics/Monitors/
-- hl.monitor({
--     output   = "",
--     mode     = "preferred",
--     position = "auto",
--     scale    = 1,
-- })

hl.monitor({
    output   = "DP-1",
    mode     = "highrr",
    position = "0x0",
    scale    = 1,
})

hl.monitor({
    output   = "DP-2",
    mode     = "highrr",
    position = "2560x-560",
    scale    = 1,
    transform = 3,
})

