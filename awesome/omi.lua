------------------------
--   omi's widgets    --
--   omi [at]         --
------------------------

require("vicious")
require("wicked")

-- { Spacers
spacer = widget({ type = "textbox" })
spacer.text = " "
tab = widget({ type = "textbox" })
tab.text = "    "
myline = widget({ type = "textbox" })
myline.text = " | "
-- }

-- { PROCESSOR
-- cpu0 info
cpuinfo = widget({ type = "textbox" })
vicious.register(cpuinfo, vicious.widgets.cpuinf, "${cpu0 ghz}GHz")

-- icon
cpuicon = widget({ type = "imagebox" })
cpuicon.image = image("/home/omi/.config/awesome/icons/cpu.png")

-- cpu0 graph
cpugraph = awful.widget.graph()
cpugraph:set_width(40)
cpugraph:set_height(12)
cpugraph:set_background_color(beautiful.bg_widget)
cpugraph:set_border_color(beautiful.bg_widget)
cpugraph:set_gradient_colors({ beautiful.fg_widget, beautiful.bg_widget })
cpugraph:set_gradient_angle(180)
vicious.register(cpugraph, vicious.widgets.cpu, "$1")
-- }

-- { MEMORY
-- used
memused = widget({ type = "textbox" })
vicious.register(memused, wicked.widgets.mem, "$2MB", 5)

-- icon
memicon = widget({ type = "imagebox" })
memicon.image = image("/home/omi/.config/awesome/icons/mem.png")

-- bar
membar = awful.widget.progressbar()
membar:set_width(40)
membar:set_height(12)
membar:set_border_color(beautiful.bg_widget)
membar:set_background_color(beautiful.bg_widget)
membar:set_gradient_colors({ beautiful.fg_widget, beautiful.bg_widget })
vicious.register(membar, vicious.widgets.mem, "$1", 5)

-- %
mempct = widget({ type = "textbox" })
vicious.register(mempct, wicked.widgets.mem, "$1%", 5)
-- }


-- { ROOT FILESYSTEM
-- used
myrootfsusedwidget = widget({ type = "textbox" })
wicked.register(myrootfsusedwidget, wicked.widgets.fs, "<span color='#d6d6d6'>root</span>${/ used}", 90)

-- bar
rootfsbar = awful.widget.progressbar()
rootfsbar:set_width(40)
rootfsbar:set_height(12)
rootfsbar:set_border_color(beautiful.bg_widget)
rootfsbar:set_background_color(beautiful.bg_widget)
rootfsbar:set_gradient_colors({ beautiful.fg_widget, beautiful.bg_widget })
vicious.register(rootfsbar, vicious.widgets.fs, "${/ used_p}", 90)

-- %
rootfspct = widget({ type = "textbox" })
vicious.register(rootfspct, vicious.widgets.fs, "${/ used_p}%", 90)
-- }

-- { HOME FILESYSTEM
-- used
myhomefsusedwidget = widget({ type = "textbox" })
wicked.register(myhomefsusedwidget, wicked.widgets.fs, "<span color='#d6d6d6'>home</span>${/home used}", 90)

-- bar
homefsbar = awful.widget.progressbar()
homefsbar:set_width(40)
homefsbar:set_height(12)
homefsbar:set_border_color(beautiful.bg_widget)
homefsbar:set_background_color(beautiful.bg_widget)
homefsbar:set_gradient_colors({ beautiful.fg_widget, beautiful.bg_widget })
vicious.register(homefsbar, vicious.widgets.fs, "${/home used_p}", 90)

-- %
homefspct = widget({ type = "textbox" })
vicious.register(homefspct, vicious.widgets.fs, "${/home used_p}%", 90)
-- }



-- {  USR FILESYSTEM
-- used
myusrfsusedwidget = widget({ type = "textbox" })
wicked.register(myusrfsusedwidget, wicked.widgets.fs, "<span color='#d6d6d6'>usr</span>${/usr used}", 90)

-- bar
usrfsbar = awful.widget.progressbar()
usrfsbar:set_width(40)
usrfsbar:set_height(12)
usrfsbar:set_border_color(beautiful.bg_widget)
usrfsbar:set_background_color(beautiful.bg_widget)
usrfsbar:set_gradient_colors({ beautiful.fg_widget, beautiful.bg_widget })
vicious.register(usrfsbar, vicious.widgets.fs, "${/usr used_p}", 90)

-- %
usrfspct = widget({ type = "textbox" })
vicious.register(usrfspct, vicious.widgets.fs, "${/usr used_p}%", 90)
-- }


-- { NETWORK
-- tx (upload)
txwidget = widget({ type = "textbox" })
vicious.register(txwidget, vicious.widgets.net, "${bond0 tx_mb}MB", 15)

-- icon
upicon = widget({ type = "imagebox" })
upicon.image = image("/home/omi/.config/awesome/icons/up.png")

-- up graph
upgraph = awful.widget.graph()
upgraph:set_width(40)
upgraph:set_height(12)
upgraph:set_background_color(beautiful.bg_widget)
upgraph:set_border_color(beautiful.bg_widget)
upgraph:set_gradient_colors({ beautiful.fg_widget, beautiful.bg_widget })
upgraph:set_gradient_angle(180)
vicious.register(upgraph, vicious.widgets.net, "${bond0 up_kb}")

-- up speed
upwidget = widget({ type = "textbox" })
wicked.register(upwidget, wicked.widgets.net, "${bond0 up_kb}k/s", 2)

-- rx (download)
rxwidget = widget({ type = "textbox" })
vicious.register(rxwidget, vicious.widgets.net, "${bond0 rx_mb}MB", 15)

-- icon
downicon = widget({ type = "imagebox" })
downicon.image = image("/home/omi/.config/awesome/icons/down.png")

-- down graph
downgraph = awful.widget.graph()
downgraph:set_width(40)
downgraph:set_height(12)
downgraph:set_background_color(beautiful.bg_widget)
downgraph:set_border_color(beautiful.bg_widget)
downgraph:set_gradient_colors({ beautiful.fg_widget, beautiful.bg_widget })
downgraph:set_gradient_angle(180)
vicious.register(downgraph, vicious.widgets.net, "${bond0 down_kb}")

-- down speed
downwidget = widget({ type = "textbox" })
wicked.register(downwidget, wicked.widgets.net, "${bond0 down_kb}k/s", 2)
-- }
