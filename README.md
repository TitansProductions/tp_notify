# tp_notify


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
