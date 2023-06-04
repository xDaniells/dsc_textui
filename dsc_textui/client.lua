function sendNUIMessageText(msg)
    if msg then 
        msg = msg:gsub("~r~", "<span style='color:rgb(17, 134, 251);'>")
        msg = msg:gsub("~b~", "<span style='color:rgb(17, 134, 251);'>")
        msg = msg:gsub("~g~", "<span style='color:rgb(17, 134, 251);'>")
        msg = msg:gsub("~y~", "<span style='color:rgb(17, 134, 251);'>")
        msg = msg:gsub("~p~", "<span style='color:rgb(17, 134, 251);'>")
        msg = msg:gsub("~f~", "<span style='color:rgb(17, 134, 251);'>")
        msg = msg:gsub("~m~", "<span style='color:rgb(17, 134, 251);'>")
        msg = msg:gsub("~u~", "<span style='color:rgb(17, 134, 251);'>")
        msg = msg:gsub("~o~", "<span style='color:rgb(17, 134, 251);'>")
        msg = msg:gsub("~s~", "<span style='color:rgb(17, 134, 251);'>")
        msg = msg:gsub("~w~", "</span>")
        msg = msg:gsub("~b~", "<b>")
        msg = msg:gsub("~n~", "<br>")
        msg = msg:gsub("\n", "<br>")
        msg = msg:gsub("~input~", "<span class = 'INPUT_CONTEXT'>")
        msg = msg:gsub("~INPUT_CONTEXT~", "<span class = 'INPUT_CONTEXT'>E</span>")
        msg = msg:gsub("~INPUT_DETONATE~", "<span class = 'INPUT_CONTEXT'>G</span>")
        msg = msg:gsub("~INPUT_VEH_EXIT~", "<span class = 'INPUT_CONTEXT'>F</span>")
        msg = msg:gsub("~INPUT_RELOAD~", "<span class = 'INPUT_CONTEXT'>R</span>")
        msg = "<span style=color:currentColor>" .. msg .. "</span>"
    end

    SendNUIMessage({ 
        message = msg;
    })
end

exports("Help", sendNUIMessageText)
print("Text UI - Ready")
