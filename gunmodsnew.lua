

    local weapons_stuff = {}


    for i, v in next, getgc(true) do
        if type(v) == "table" and rawget(v, "Damage") then
            table.insert(weapons_stuff, v)
        end
    end

    
    for i, v in next, weapons_stuff do
        if type(v) == "table" then
            -- Feuer-Modus einstellen
            if rawget(v, "FireMode") then
                rawset(v, "FireMode", fireMode)
                print("FireMode set to", fireMode)
            end

            
            if rawget(v, "ClipSize") then
                rawset(v, "ClipSize", clipSize)
                print("ClipSize set to", clipSize)
            end
            if rawget(v, "MaxAmmo") then
                rawset(v, "MaxAmmo", maxAmmo)
                print("MaxAmmo set to", maxAmmo)
            end
            if rawget(v, "Clips") then
                rawset(v, "Clips", clips)
                print("Clips set to", clips)
            end

            
            if rawget(v, "RateOfFire") then
                local rateOfFire = rawget(v, "RateOfFire")
                rawset(v, "RateOfFire", rateOfFire * fireRateMultiplier)
                print("RateOfFire reduced by", fireRateMultiplier, "to increase fire rate")
            end
        end
    end
