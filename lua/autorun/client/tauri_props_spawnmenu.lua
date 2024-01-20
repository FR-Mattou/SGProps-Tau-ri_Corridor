local smallprops = {
    "models/sg-props/daedalus/small/I-1.mdl",
    "models/sg-props/daedalus/small/I-2.mdl",
    "models/sg-props/daedalus/small/I-3.mdl",
    "models/sg-props/daedalus/small/V-1.mdl",
    "models/sg-props/daedalus/small/T-1.mdl",
    "models/sg-props/daedalus/small/X-1.mdl",
    "models/sg-props/daedalus/small/C-1.mdl",
    "models/sg-props/daedalus/small/C-45.mdl",
}

local mediumprops = {
    "models/sg-props/daedalus/medium/MI-1.mdl",
    "models/sg-props/daedalus/medium/MI-2.mdl",
    "models/sg-props/daedalus/medium/MI-3.mdl",
    "models/sg-props/daedalus/medium/MX-1.mdl",
    "models/sg-props/daedalus/medium/MX-2.mdl",
    "models/sg-props/daedalus/medium/MT-1.mdl",
    "models/sg-props/daedalus/medium/MT-2.mdl",
    "models/sg-props/daedalus/medium/MT-3.mdl",
    "models/sg-props/daedalus/medium/MC-1.mdl",
    "models/sg-props/daedalus/medium/MC-2.mdl",
    "models/sg-props/daedalus/medium/MC-3.mdl",
    "models/sg-props/daedalus/medium/MV-1.mdl",
}

local props = {
    "models/sg-props/daedalus/other/beam1.mdl",
    "models/sg-props/daedalus/other/beam2.mdl",
    "models/sg-props/daedalus/other/half-beam1.mdl",
    "models/sg-props/daedalus/other/half-beam2-1.mdl",
    "models/sg-props/daedalus/other/half-beam2-2.mdl",

    "models/sg-props/daedalus/bridge/B-1.mdl",
}

hook.Add( "PopulatePropMenu", "[Mattou]Tau'ri Props", function()
    local contents = {}
    contents = spawnmenu.GetPropTable()
    
--//Small
    table.insert( contents, {
        type = "header",
        text = "[Tau'ri]Small"
    })
    
    for i = 1,#smallprops do
        table.insert( contents, {
            type = "model",
            model = smallprops[i]
        })
    end

--//Medium
    table.insert( contents, {
        type = "header",
        text = "[Tau'ri]Medium"
    })
    
    for i = 1,#mediumprops do
        table.insert( contents, {
            type = "model",
            model = mediumprops[i]
        })
    end

--//Props
    table.insert( contents, {
        type = "header",
        text = "[Tau'ri]Other"
    })

    for i = 1,#props do
        table.insert( contents, {
            type = "model",
            model = props[i]
        })
    end

    spawnmenu.AddPropCategory( "sg_props", "SG - Props", contents, "" )
end)