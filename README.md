# TP Notify

# Installation

1. When opening the zip file, open `tp_notify-main` directory folder and inside there will be another directory folder which is called as `tp_notify`, this directory folder is the one that should be exported to your resources (The folder which contains `fxmanifest.lua`).

2. Add `ensure tp_notify` before all the Titans Productions Resources (Scripts) and after TP Versions in the resources.cfg or server.cfg, depends where your scripts are located.

# Developers 

> Client Trigger

```lua

-- @param title
-- @param message
-- @param icon (icon name directly from img/types)
-- @param notificationType ("success", "error", "info")
-- @param duration
TriggerEvent("tp_notify:sendNotification", "Mailbox Notification", "This is a notification", "mail", "info", 15)
```

> Server Trigger

```lua

-- @param title
-- @param message
-- @param icon (icon name directly from img/types)
-- @param notificationType ("success", "error", "info")
-- @param duration
TriggerClientEvent("tp_notify:sendNotification", source, "Mailbox Notification", "This is a notification", "mail", "info", 15)
```

<img width="716" height="304" alt="εικόνα" src="https://github.com/user-attachments/assets/a5e4cdae-2c06-4568-abdb-466aabb3c4d7" />
