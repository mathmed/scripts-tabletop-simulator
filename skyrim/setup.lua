function onload()
    MarketPositions = {{51.93, 1.49, 7.94}, {51.89, 1.49, 3.56}, {51.91, 1.49, -0.87}, {51.93, 1.49, -5.34}, {46.60, 1.49, 7.98}, {46.56, 1.49, 3.62}, {46.61, 1.49, -0.88}, {46.67, 1.49, -5.33}}
    initialInterface()
end

function initialInterface()
    self.createButton({
      click_function = 'setup', label = 'START SETUP',
      function_owner = self,
      position = { 0, 0.18, -0.3}, rotation = {0, 0, 0},
      width = 1500, height = 400, font_size = 90
    })
end

function setup(button)

    button.clearButtons()
    getObjectFromGUID("b3be8b").destruct()

    local params = {}
    local deckItems = getObjectFromGUID("d93507")
    local deckBuild = getObjectFromGUID("376dd0")
    local monstersLevel1 = getObjectFromGUID("274ddd")
    local monstersLevel2 = getObjectFromGUID("3d7380")
    local bosses = getObjectFromGUID("aa5e1b")

    deckItems.shuffle()
    deckBuild.shuffle()
    monstersLevel1.shuffle()
    monstersLevel2.shuffle()
    bosses.shuffle()

    for k, v in pairs(monstersLevel1.getObjects()) do
        params.rotation = {0,180,0}
        params.position = {-10, 1.4884, 3.2166}
        monstersLevel1.takeObject(params)
        break
    end
    
    local deck
    for i=1, 8, 1 do 
        params.rotation = {0,270,0}
        params.position = MarketPositions[i]
        if(i <= 4) then deck = deckBuild
        else deck = deckItems end
        for k, v in pairs(deck.getObjects()) do
            guid = v.guid
            deck.takeObject(params)
            break
          end
    end
end