-- script : https://dicekode.blogspot.com
-- telegram : @dicekode
-- youtube : https://www.youtube.com/channel/UC-BpueviNmn12aV_pBRY3gQ
--
-- Gambling is gambling no matter what you do or how good your strategy is.
-- The house always wins if you keep playing. 

div       = 1000
maxc      = 5
chance    = 70
bb        = 12 / div
po        = 99.9 / chance
count     = 0
profitc   = 0
nextbet   = bb
limit     = balance * 0.1
trail     = -limit
stopls    = -limit 
 
function dobet()
    profitc += currentprofit
    count +=1
    if profitc >= 0 then
        profitc *= 0.9 
        stopls = trail + profit 
    end
    nextbet  *= po
    if (count == maxc) then
        count   = 0
        nextbet = -profitc/(((1-po^maxc)/(1-po)) * (po-1)) 
        if (-profitc+nextbet) > (20/100)*(limit) then
            nextbet = (-profitc/3)/(((1-po^maxc)/(1-po)) * (po-1))
        end
    end
    if nextbet < bb then nextbet = bb end
    if balance - nextbet < stopls then stop() end
    print("stoploss: "..stopls)
end
