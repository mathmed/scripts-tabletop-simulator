function onload()
    MarketPositions = {{51.93, 1.49, 7.94}, {51.89, 1.49, 3.56}, {51.91, 1.49, -0.87}, {51.93, 1.49, -5.34}, {46.60, 1.49, 7.98}, {46.56, 1.49, 3.62}, {46.61, 1.49, -0.88}, {46.67, 1.49, -5.33}}
    deckItems = getObjectFromGUID("d93507")
    deckBuild = getObjectFromGUID("376dd0")
    monstersLevel1 = getObjectFromGUID("274ddd")
    monstersLevel2 = getObjectFromGUID("3d7380")
    bosses = getObjectFromGUID("aa5e1b")
    initialInterface()
end

turn = "0"

function nothing() end

function startTurn()
    self.createButton({
        click_function = 'nothing', label = (turn .. " TURN"),
        function_owner = self,
        position = { 0, 0.18, -0.7}, rotation = {0, 0, 0},
        width = 1500, height = 400, font_size = 90
      })
      self.createButton({
        click_function = 'newMonster', label = "GO TO NEW MONSTERS PHASE",
        function_owner = self,
        position = { 0, 0.18, 0.3}, rotation = {0, 0, 0},
        width = 1500, height = 300, font_size = 80
      })
end

function newMonster()

    self.clearButtons()
    CheckMonsterFill()

    self.createButton({
        click_function = 'playCards', label = "GO TO PLAY CARDS PHASE",
        function_owner = self,
        position = { 0, 0.18, 0.3}, rotation = {0, 0, 0},
        width = 1500, height = 300, font_size = 80
      })
end

function playCards()
    broadcastToAll("Phase of playing and revealing the cards!")
    self.clearButtons()
    self.createButton({
        click_function = 'monstersAttack', label = "GO TO MONSTERS ATTACK PHASE",
        function_owner = self,
        position = { 0, 0.18, 0.3}, rotation = {0, 0, 0},
        width = 1500, height = 300, font_size = 80
      })
end

function monstersAttack()
    broadcastToAll("Monster attack phase, roll the dice!")
    self.clearButtons()
    self.createButton({
        click_function = 'store', label = "GO TO STORE PHASE",
        function_owner = self,
        position = { 0, 0.18, 0.3}, rotation = {0, 0, 0},
        width = 1500, height = 300, font_size = 80
      })
end

function store()
    broadcastToAll("Store phase, start with the first player!")
    self.clearButtons()
    self.createButton({
        click_function = 'endTurn', label = "END TURN",
        function_owner = self,
        position = { 0, 0.18, 0.3}, rotation = {0, 0, 0},
        width = 1500, height = 300, font_size = 80
      })
end

function endTurn()
    local turnMarkerPositions = {
        {-2.52, 1.66, -31.76},
        {-2.52, 1.66, -30.50 },
        {-2.52, 1.66, -29.20},
        {-2.52, 1.66, -27.94},
        {-2.52, 1.66, -26.63},
        {-2.52, 1.66, -25.22},
        {-2.52, 1.66, -23.81},
        {-2.52, 1.66, -22.48},
        {-2.52, 1.66, -21.02},
        {-2.52, 1.66, -19.64},
        {-2.52, 1.66, -18.14},
        {-2.52, 1.66, -16.64},
        {-2.52, 1.66, -15.31}
    }

    turn = tonumber(turn) + 1
    local marker = getObjectFromGUID("4d5bb5")

    if(tonumber(turn) < 15) then
        marker.setPositionSmooth(turnMarkerPositions[tonumber(turn-1)])
    end

    self.clearButtons()
    broadcastToAll(turn .. " TURN")
    startTurn()
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

    local params = {}

    deckItems.shuffle()
    deckBuild.shuffle()
    monstersLevel1.shuffle()
    monstersLevel2.shuffle()
    bosses.shuffle()
    
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
    turn = "1"
    startTurn()
end

function CheckMonsterFill(k, deck)
    MonstersGUID = {"70bb33", "790c9c", "0f4594"}
    MonsterPositions = {{-10.55, 1.49, 3.22}, {-1.81, 1.49, 3.15}, {6.05, 1.46, 3.25}}
    MonsterPlace = {}
    local emptySpaces
    local newMonsterSpace

    for i=1, 3, 1 do MonsterPlace[i] = getObjectFromGUID(MonstersGUID[i]) end

    local monsterDeckUse

    if(tonumber(turn) < 9 ) then 
        monsterDeckUse = monstersLevel1 
    elseif(tonumber(turn) < 14 ) then 
        monsterDeckUse = monstersLevel2 
    elseif(tonumber(turn) == 14) then
        monsterDeckUse = bosses 
        for j=1, 3, 1 do
            local p = 0
            PlaceCard = {}
            PlaceCard = MonsterPlace[j].getObjects()
            for l=1, #PlaceCard, 1 do
                if PlaceCard[l].name == 'Card' then
                    PlaceCard[l].destruct()
                end
            end
        end
    end

    emptySpaces = 0
    
    for k=1, 3, 1 do
        local p = 0
        PlaceCard = {}
        PlaceCard = MonsterPlace[k].getObjects()
        for i=1, #PlaceCard, 1 do
            if PlaceCard[i].name == 'Card' then
                p = 1
            end
        end
        if p == 0 then
            emptySpaces = emptySpaces + 1
            newMonsterSpace = k
        end
    end

    if(monsterDeckUse != nil) then
        if(emptySpaces == 2 or emptySpaces == 3 or tonumber(turn) == 14) then
            for k, v in pairs(monsterDeckUse.getObjects()) do
                params = {}
                params.rotation = {0,180,0}
                params.position = MonsterPositions[newMonsterSpace]
                params.guid = v.guid
                monsterDeckUse.takeObject(params)
                broadcastToAll("A new monster has appeared!")
                break
            end
        elseif(emptySpaces == 1) then
            math.randomseed(os.time()) -- random initialize
            math.random(); math.random(); math.random(); -- warming up
            local dice = math.random(1, 12)
            if(dice > 6) then
                for k, v in pairs(monsterDeckUse.getObjects()) do
                    params = {}
                    params.rotation = {0,180,0}
                    params.position = MonsterPositions[newMonsterSpace]
                    params.guid = v.guid
                    monsterDeckUse.takeObject(params)
                    broadcastToAll("A new monster has appeared! Dice result: " .. dice)
                    break
                end
            end
        end
    end
end

