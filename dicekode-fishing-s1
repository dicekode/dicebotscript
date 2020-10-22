-- script : https://dicekode.blogspot.com
-- telegram : @dicekode
-- youtube : https://www.youtube.com/channel/UC-BpueviNmn12aV_pBRY3gQ
--
-- Gambling is gambling no matter what you do or how good your strategy is.
-- The house always wins if you keep playing. 


base      = 0.01
target    = balance * 1.5
maxlose   = 15 
losecount = 0
a         = 0
stopwin   = false
chance    = 33 
nextbet   = base

function dobet()
    if balance > target then stop() end 

    if (a == 16) then 
        resetseed() 
        a       = 0 
        bethigh = !bethigh  
    end 

    if win then 
        if stopwin then stop() end
        a+=1 
        nextbet   = base 
        chance    = 33 
        losecount = 0  
    else
        losecount+=1   
        nextbet = previousbet * 1.56 
    end 

    if (losecount > 5) then 
        nextbet = previousbet * 1.56 
        chance  = 10  
    end 
    if (losecount > 8) then
        nextbet = previousbet * 1.56 
        chance  = 33
    end
    if (losecount > 10) then
        nextbet = previousbet * 1.56 
        chance  = 15
    end
    if (losecount >13) then
        nextbet = previousbet * 1.88 
        chance  = 41.25
    end
    if (losecount > 14) then
        nextbet = previousbet * 1.8 
        chance  = 20
    end
    if (losecount > 17) then
        nextbet = previousbet * 2.075 
        chance  = 48
    end
    if (losecount > 18) then
        nextbet = previousbet * 2
    end
    if (losecount > 19) then
        nextbet = previousbet * 1.95
    end
    
    print ("\n\ntarget "..target)
    if losecount > maxlose then stopwin = true end
end
