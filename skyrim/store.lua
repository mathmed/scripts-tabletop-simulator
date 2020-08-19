function onload()
    MarketZone = getObjectFromGUID('dc204e')
    MarketPositions = {{51.93, 1.49, 7.94}, {51.89, 1.49, 3.56}, {51.91, 1.49, -0.87}, {51.93, 1.49, -5.34}, {46.60, 1.49, 7.98}, {46.56, 1.49, 3.62}, {46.61, 1.49, -0.88}, {46.67, 1.49, -5.33}}
    MarketGUID = {"fc8b4f", "a4a5b1", "689ea3", "a0d6dc", "42896c", "2dac39", "ae8104", "c2ebab"}
    Place = {}
    for i=1, 8, 1 do Place[i] = getObjectFromGUID(MarketGUID[i]) end
end

function onObjectLeaveScriptingZone(zone, obj)
    if zone == MarketZone and (obj.tag == 'Card' or obj.tag == 'Deck') then
        local deck = "376dd0"
        if(obj.getName() == "Item") then 
            deck = "d93507" 
        end
        SearchEmptyPlaces(deck)
    end
end

function SearchEmptyPlaces(deck)
    for k=1, 8, 1 do
        CheckFill(k, deck)
    end
end

function CheckFill(k, deck)
    local p = 0
    PlaceCard = {}
    PlaceCard = Place[k].getObjects()
    for i=1, #PlaceCard, 1 do
        if PlaceCard[i].name == 'Card' then
            p = 1
        end
        if PlaceCard[i].tag == 'Deck' then
            p = 1
        end
    end
    if p == 0 then
        SearchMainDeck(k, deck)
    end
end

function SearchMainDeck(k, deck)
    objDeck = {}
    objDeck = getObjectFromGUID(deck).getObjects()
    for i=1, #objDeck, 1 do
        DeckDealer(i, k, deck)
        break
    end
end

function DeckDealer(i, position, deck)
    local params = {}
    for k, v in pairs(objDeck) do
        params.rotation = {0,270,0}
        params.position = MarketPositions[position]
        guid = v.guid
        getObjectFromGUID(deck).takeObject(params)
        break
      end
end
