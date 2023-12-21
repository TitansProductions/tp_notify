

local HasNotificationActive = false

-----------------------------------------------------------
--[[ Events ]]--
-----------------------------------------------------------

RegisterNetEvent("tp_notify:sendNotification")
AddEventHandler("tp_notify:sendNotification", function(title, message, actionType, notifyType, duration)

    HasNotificationActive = not HasNotificationActive

    SetNUIState(HasNotificationActive, title, message, actionType, notifyType)

    Wait(1000 * duration)

	SendNUIMessage({action = 'close'})
end)

-----------------------------------------------------------
--[[ Notifications ]]--
-----------------------------------------------------------

OpenNUI = function ()
    SetNUIState(true)
end

SetNUIState = function(state, title, message, actionType, notifyType)

    HasNotificationActive = state

    if Config.NotifyTypes[notifyType] then
        notifyType = Config.NotifyTypes[notifyType]
    end

	SendNUIMessage({
		type = "enable_ui",
		enable = state,
        title = title,
        message = message,
        actionType = actionType,
        color = notifyType,
	})

end

CloseNUIProperly = function ()
    
    if HasNotificationActive then
        SetNUIState(false)
    end
end

-----------------------------------------------------------
--[[ NUI Callbacks ]]--
-----------------------------------------------------------

RegisterNUICallback('close', function()
    Wait(1000)
	SetNUIState(false)
end)



RegisterCommand("tp_notify", function(source, args)
    TriggerEvent("tp_notify:sendNotification", "Mailbox Notification", "You just received a parcel! Please come to the station to receive the parcel and pay the required amount", "mail", "info", 15)
end)