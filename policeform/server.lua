RegisterServerEvent('log')
AddEventHandler('log', function(data)
    local connect = {
        {
            ["color"] = "255",
            ["title"] = "Ny Formular | " .. data.plate .. "-" .. data.lastname,
            ["description"] = "Fornavn: \n **" .. data.plate .. "** \n Efternavn: \n **" .. data.lastname .. "** \n Alder: \n **" .. data.age .. "** \n Hvorfor: \n **" .. data.why .. "** \n Køn: \n **" .. data.gender .. "**",
            ["footer"] = {
                ["text"] = "Ny Politiformular",
            },
        }
    }
    PerformHttpRequest(Config.webhook, function(err, text, headers) end, 'POST', json.encode({username = "Politi Ansøgninger",  avatar_url = "https://cdn.discordapp.com/attachments/1108737114545336441/1108740918212837437/PolitiLogo2.png",embeds = connect}), { ['Content-Type'] = 'application/json' })
end)

