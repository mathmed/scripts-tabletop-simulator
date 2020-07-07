  function onload()
    criar_botoes()
    Turns.enable = true
    self.use_hands = true
  end

  function criar_botoes()
    self.createButton({
      click_function = 'setup_original', label = 'ORIGINAL',
      function_owner = self,
      position = { 0, 0.18, -1}, rotation = {0, 0, 0},
      width = 1300, height = 300, font_size = 70
    })
    self.createButton({
      click_function = 'setup_exp', label = 'EXPANSÃO NÃO OFICIAL',
      function_owner = self,
      position = { 0, 0.18, 0}, rotation = {0, 0, 0},
      width = 1300, height = 300, font_size = 70
    })
  end
  
  -- Objeto auxiliar para posições dos tiles

  width = 4.85
  height = 4.2
  
  tilePosition = {
    [1] = {
      [1] = { - 14.5, 0.96, 15.50},
      [2] = { - 14.5 + (width * 1), 0.96, 15.50},
      [3] = { - 14.5 + (width * 2), 0.96, 15.50},
      [4] = { - 14.5 + (width * 3), 0.96, 15.50},
      [5] = { - 14.5 + (width * 4), 0.96, 15.50},
      [6] = { - 14.5 + (width * 5), 0.96, 15.50},
      [7] = { - 14.5 + (width * 6), 0.96, 15.50},
    },
    [2] = {
      [1] = { - 16.85, 0.96, 15.50 - (height * 1)},
      [2] = { - 16.85 + (width * 1), 0.96, 15.50 - (height * 1)},
      [3] = { - 16.85 + (width * 2), 0.96, 15.50 - (height * 1)},
      [4] = { - 16.85 + (width * 3), 0.96, 15.50 - (height * 1)},
      [5] = { - 16.85 + (width * 4), 0.96, 15.50 - (height * 1)},
      [6] = { - 16.85 + (width * 5), 0.96, 15.50 - (height * 1)},
      [7] = { - 16.85 + (width * 6), 0.96, 15.50 - (height * 1)},
      [8] = { - 16.85 + (width * 7), 0.96, 15.50 - (height * 1)},
    },
    [3] = {
      [1] = { - 14.5, 0.96, 15.50 - (height * 2)},
      [2] = { - 14.5 + (width * 1), 0.96, 15.50 - (height * 2)},
      [3] = { - 14.5 + (width * 2), 0.96, 15.50 - (height * 2)},
      [4] = { - 14.5 + (width * 3), 0.96, 15.50 - (height * 2)},
      [5] = { - 14.5 + (width * 4), 0.96, 15.50 - (height * 2)},
      [6] = { - 14.5 + (width * 5), 0.96, 15.50 - (height * 2)},
      [7] = { - 14.5 + (width * 6), 0.96, 15.50 - (height * 2)},
    },
    [4] = {
      [1] = { - 16.85, 0.96, 15.50 - (height * 3)},
      [2] = { - 16.85 + (width * 1), 0.96, 15.50 - (height * 3)},
      [3] = { - 16.85 + (width * 2), 0.96, 15.50 - (height * 3)},
      [4] = { - 16.85 + (width * 3), 0.96, 15.50 - (height * 3)},
      [5] = { - 16.85 + (width * 4), 0.96, 15.50 - (height * 3)},
      [6] = { - 16.85 + (width * 5), 0.96, 15.50 - (height * 3)},
      [7] = { - 16.85 + (width * 6), 0.96, 15.50 - (height * 3)},
      [8] = { - 16.85 + (width * 7), 0.96, 15.50 - (height * 3)},
    },
    [5] = {
      [1] = { - 14.5, 0.96, 15.50 - (height * 4)},
      [2] = { - 14.5 + (width * 1), 0.96, 15.50 - (height * 4)},
      [3] = { - 14.5 + (width * 2), 0.96, 15.50 - (height * 4)},
      [4] = { - 14.5 + (width * 3), 0.96, 15.50 - (height * 4)},
      [5] = { - 14.5 + (width * 4), 0.96, 15.50 - (height * 4)},
      [6] = { - 14.5 + (width * 5), 0.96, 15.50 - (height * 4)},
      [7] = { - 14.5 + (width * 6), 0.96, 15.50 - (height * 4)},
    },
    [6] = {
      [1] = { - 16.85, 0.96, 15.50 - (height * 5)},
      [2] = { - 16.85 + (width * 1), 0.96, 15.50 - (height * 5)},
      [3] = { - 16.85 + (width * 2), 0.96, 15.50 - (height * 5)},
      [4] = { - 16.85 + (width * 3), 0.96, 15.50 - (height * 5)},
      [5] = { - 16.85 + (width * 4), 0.96, 15.50 - (height * 5)},
      [6] = { - 16.85 + (width * 5), 0.96, 15.50 - (height * 5)},
      [7] = { - 16.85 + (width * 6), 0.96, 15.50 - (height * 5)},
      [8] = { - 16.85 + (width * 7), 0.96, 15.50 - (height * 5)},
    },
    [7] = {
      [1] = { - 14.5, 0.96, 15.50 - (height * 6)},
      [2] = { - 14.5 + (width * 1), 0.96, 15.50 - (height * 6)},
      [3] = { - 14.5 + (width * 2), 0.96, 15.50 - (height * 6)},
      [4] = { - 14.5 + (width * 3), 0.96, 15.50 - (height * 6)},
      [5] = { - 14.5 + (width * 4), 0.96, 15.50 - (height * 6)},
      [6] = { - 14.5 + (width * 5), 0.96, 15.50 - (height * 6)},
      [7] = { - 14.5 + (width * 6), 0.96, 15.50 - (height * 6)},
    }
  }

  function setup_original(setup)
    
    setup.clearButtons()

    -- Removendo arquivos de expansão
    getObjectFromGUID("7aa20b").destruct()
    getObjectFromGUID("a915c0").destruct()
    getObjectFromGUID("358397").destruct()
    getObjectFromGUID("853aed").destruct()
    getObjectFromGUID("923b73").destruct()
    getObjectFromGUID("94f903").destruct()

    criar_cenarios(self)

  end

  function setup_exp(setup)

    setup.clearButtons()

    -- Ajustando para expansão
    getObjectFromGUID("5e0a2a").destruct()
    getObjectFromGUID("a915c0").setPositionSmooth({ -42.57, 1.01, -5.84})
    getObjectFromGUID("358397").setPositionSmooth({ -42.57, 1.01, -10.84})
    getObjectFromGUID("853aed").setPositionSmooth({ 13.52, 1.69, 27.21})
    getObjectFromGUID("923b73").setPosition({ -42.57, 1.01, 5})

    criar_cenarios(self)

  end

  function criar_cenarios()
    self.createButton({
      click_function = 'pitt', label = 'O Pitt',
      function_owner = self,
      position = { - 1, 0.18, - 0.5}, rotation = {0, 0, 0},
      width = 800, height = 300, font_size = 70
    })
  
    self.createButton({
      click_function = 'farHarbour', label = 'Far Harbour',
      function_owner = self,
      position = { 1, 0.18, - 0.5}, rotation = {0, 0, 0},
      width = 800, height = 300, font_size = 70
    })
  
    self.createButton({
      click_function = 'ermos', label = 'Ermos da Capital',
      function_owner = self,
      position = { - 1, 0.18, 0.5}, rotation = {0, 0, 0},
      width = 800, height = 300, font_size = 70
    })
  
    self.createButton({
      click_function = 'comunidade', label = 'A Comunidade',
      function_owner = self,
      position = { 1, 0.18, 0.5}, rotation = {0, 0, 0},
      width = 800, height = 300, font_size = 70
    })
  end

  function farHarbour(setup)

    local arrange = {
      [1] = {'null', 'null', 'null', 'null', 'null', 'null', 'null'},
      [2] = {'null', 'other', 'green', 'green', 'null', 'null', 'null'},
      [3] = {'null', 'green', 'green', 'green', 'other', 'null', 'null'},
      [4] = {'null', 'null', 'null', 'green', 'green', 'green', 'null'},
      [5] = {'null', 'other', 'red', 'other', 'red', 'null', 'null'},
      [6] = {'null', 'red', 'red', 'red', 'red', 'null', 'null'},
      [7] = {'null', 'null', 'null', 'null', 'null', 'null', 'null'}
    }
    local mainTile = {'crossroads', 'haven', 'nucleus', 'acadia'}
    local mainVal = {2, 1, 2, 2}
    arrangeTiles(arrange, mainTile, mainVal);

    getObjectFromGUID('90eb82').setPositionSmooth({ 18.53, 0.75, - 0.21})
    getObjectFromGUID('d7a4b6').setPositionSmooth({ 16.17, 0.94, 3.44})
    getObjectFromGUID('f5d313').setPositionSmooth({ 16.17, 0.94, 3.44})

    -- Tokens auxiliares no mapa
    local obj = getObjectFromGUID("b319a2")
    local bag = obj.getObjects()
    for k, v in pairs(bag) do
      if(v.guid == "b53bac") then
        obj.takeObject({guid = v.guid, position = {3.50, 0.95, 7.45}})
      end
      if(v.guid == "c3e3b9") then
        obj.takeObject({guid = v.guid, position = {-9.41, 1.05, -0.82}})
      end
      if(v.guid == "16a494") then
        obj.takeObject({guid = v.guid, position = {-0.34, 1.06, -1.99}})
      end
    end

    -- Cartas de missão inicial
    findCard(29, {-4.61, 0.75, 21.05})
    findCard(30, {-0.61, 0.75, 21.05})
    findCard(31, {3.61, 0.75, 21.05})

    getObjectFromGUID("8b837d").destruct()
    getObjectFromGUID("107e5d").destruct()
    getObjectFromGUID("e0a410").destruct()
    getObjectFromGUID("677118").destruct()
    getObjectFromGUID("679035").destruct()
    getObjectFromGUID("3d7ecd").destruct()

    shuffle_all()
    find_interface(setup)


  end

  function pitt(setup)

    local arrange = {
      [1] = {'null', 'null', 'null', 'null', 'null', 'null', 'null'},
      [2] = {'null', 'null', 'null', 'other', 'null', 'null', 'null'},
      [3] = {'null', 'null', 'other', 'other', 'null', 'null', 'null'},
      [4] = {'null', 'null', 'red', 'red', 'red', 'null', 'null'},
      [5] = {'null', 'green', 'red', 'red', 'red', 'null', 'null'},
      [6] = {'null', 'green', 'green', 'green', 'green', 'null', 'null'},
      [7] = {'null', 'green', 'green', 'green', 'other', 'null', 'null'}
    }
    local mainTile = {'haven', 'nucleus', 'acadia', 'crossroads'}
    local mainVal = {2, 1, 1, 1}
    arrangeTiles(arrange, mainTile, mainVal);

    getObjectFromGUID('8b837d').setPositionSmooth({ 18.53, 0.75, - 0.21})
    getObjectFromGUID('d7a4b6').setPositionSmooth({ 16.17, 0.94, 3.44})
    getObjectFromGUID('f5d313').setPositionSmooth({ 16.17, 0.94, 3.44})

    -- Tokens auxiliares no mapa
    local obj = getObjectFromGUID("3d7ecd")
    local bag = obj.getObjects()
    for k, v in pairs(bag) do
      if(v.guid == "e440de") then
        obj.takeObject({guid = v.guid, position = {-3.82, 0.96, 8.48}})
      end
      if(v.guid == "dea6e0") then
        obj.takeObject({guid = v.guid, position = {-2.20, 1.06, 12.64}})
      end
    end

    -- Cartas de missão inicial
    findCard(56, {-4.61, 0.75, 21.05})

    getObjectFromGUID("90eb82").destruct()
    getObjectFromGUID("107e5d").destruct()
    getObjectFromGUID("e0a410").destruct()
    getObjectFromGUID("677118").destruct()
    getObjectFromGUID("679035").destruct()
    getObjectFromGUID("b319a2").destruct()

    shuffle_all()
    find_interface(setup)


  end

  function ermos(setup)
    local arrange = {
      [1] = {'null', 'null', 'null', 'null', 'null', 'null', 'null'},
      [2] = {'null', 'other', 'green', 'green', 'green', 'null', 'null'},
      [3] = {'null', 'green', 'green', 'green', 'null', 'null', 'null'},
      [4] = {'null', 'null', 'green', 'other', 'red', 'null', 'null'},
      [5] = {'null', 'green', 'red', 'red', 'other', 'null', 'null'},
      [6] = {'null', 'special', 'red', 'red', 'other', 'null', 'null'},
      [7] = {'null', 'null', 'null', 'null', 'null', 'null', 'null'}
    }
    local obj2 = getObjectFromGUID("fb7624")
    local tile = obj2.getObjects()
    for key, val in pairs(tile) do
      if(val.guid == '1d14b3') then
        obj2.takeObject({guid = val.guid, position = tilePosition[6][2] })
      end
    end
    local mainTile = {'crossroads', 'megaton', 'mall', 'tower', 'citRuins'}
    local mainVal = {2, 1, 1, 1, 1}
    arrangeTiles(arrange, mainTile, mainVal);

    getObjectFromGUID('107e5d').setPositionSmooth({ 18.53, 0.75, - 0.21})
    getObjectFromGUID('d7a4b6').setPositionSmooth({ 16.17, 0.94, 3.44})
    getObjectFromGUID('f5d313').setPositionSmooth({ 16.17, 0.94, 3.44})

    -- Tokens auxiliares no mapa
    local obj = getObjectFromGUID("677118")
    local bag = obj.getObjects()
    getObjectFromGUID('e1d4ce').setPositionSmooth({2.55, 0.95, 11.46})
    for k, v in pairs(bag) do
      if(v.guid == "95eefb") then
        obj.takeObject({guid = v.guid, position = {-12.14, 1.01, -3.97}})
      end
    end

    -- Cartas de missão inicial
    findCard(44, {-4.61, 0.75, 21.05})

    getObjectFromGUID("90eb82").destruct()
    getObjectFromGUID("8b837d").destruct()
    getObjectFromGUID("e0a410").destruct()
    getObjectFromGUID("679035").destruct()
    getObjectFromGUID("3d7ecd").destruct()
    getObjectFromGUID("b319a2").destruct()

    shuffle_all()
    find_interface(setup)


  end

  function comunidade(setup)
    local arrange = {
      [1] = {'null', 'null', 'null', 'null', 'null', 'null', 'null'},
      [2] = {'null', 'null', 'null', 'null', 'null', 'null', 'null'},
      [3] = {'null', 'other', 'green', 'green', 'red', 'red', 'null'},
      [4] = {'null', 'null', 'green', 'green', 'other', 'red', 'null'},
      [5] = {'null', 'green', 'green', 'other', 'red', 'red', 'null'},
      [6] = {'null', 'null', 'green', 'green', 'red', 'other', 'null'},
      [7] = {'null', 'null', 'null', 'null', 'null', 'null', 'null'}
    }
    local mainTile = {'crossroads', 'citRuins', 'megaton', 'mall'}
    local mainVal = {2, 2, 2, 2}
    arrangeTiles(arrange, mainTile, mainVal);

    -- Tokens de trilha da facção
    getObjectFromGUID('e0a410').setPositionSmooth({ 18.53, 0.75, - 0.21})
    getObjectFromGUID('d7a4b6').setPositionSmooth({ 16.17, 0.94, 3.44})
    getObjectFromGUID('f5d313').setPositionSmooth({ 16.17, 0.94, 3.44})

    -- Tokens auxiliares no mapa
    local obj = getObjectFromGUID("679035")
    local bag = obj.getObjects()
    for k, v in pairs(bag) do
      if(v.guid == "b53bac") then
        obj.takeObject({guid = v.guid, position = { 0.05, 0.95, -1.17}})
      end
    end

    -- Cartas de missão inicial
    findCard(14, {-4.61, 0.75, 21.05})
    
    getObjectFromGUID("90eb82").destruct()
    getObjectFromGUID("8b837d").destruct()
    getObjectFromGUID("107e5d").destruct()
    getObjectFromGUID("b319a2").destruct()
    getObjectFromGUID("3d7ecd").destruct()
    getObjectFromGUID("677118").destruct()

    shuffle_all()
    find_interface(setup)

  end
  
  function arrangeTiles(tiles, main, mainVal)
    local counter = 1
    for i = 1, 7, 1 do
      for j = 1, 7, 1 do
        if tiles[i][j] == 'green' then
          local bag = getObjectFromGUID("16df29")
          bag.randomize()
          local params = {}
          params.position = tilePosition[i][j]
          params.rotation = {0, 150, 180}
          bag.takeObject(params).lock()
        elseif tiles[i][j] == 'red' then
          local bag = getObjectFromGUID("fb7624")
          bag.randomize()
          local params = {}
          params.position = tilePosition[i][j]
          params.rotation = {0, 150, 180}
          bag.takeObject(params).lock()
        elseif tiles[i][j] == 'other' then
          local bag = getObjectFromGUID("f5b7f3")
          local objects = bag.getObjects()
          local params = {}
          params.position = tilePosition[i][j]
          for k, v in pairs(objects) do
            if main[counter] == v.name then
              local oguid = v.guid
              if mainVal[counter] == 1 then
                params.rotation = {0, 150, 180}
                params.guid = v.guid
                bag.takeObject(params).lock()
              else
                params.rotation = {0, 150, 0}
                params.guid = v.guid
                bag.takeObject(params).lock()
              end
            end
          end
          counter = counter + 1
          else if tiles[i][j] == 'special' then
            counter = counter + 1
          else
          end
        end
      end
    end
    getObjectFromGUID("f5b7f3").destruct()
    getObjectFromGUID("fb7624").destruct()
    getObjectFromGUID("16df29").destruct()
  end

  function find_interface(setup)
    setup.clearButtons()
    self.createInput({
      input_function = 'find_control',
      function_owner = self,
      position = {0, 0.18, - 0.5},
      label = 'Nº Carta',
      width = 1000, height = 300,
      font_size = 150,
      validation = 2
    })
    self.createButton({
      click_function = 'procurar',
      function_owner = self,
      position = {0, 0.18, 0.5},
      label = 'Procurar',
      width = 1000, height = 300
    })
  end

  inputValue = ''

  function find_control(panel, player_color, value, selected)
    if selected == false then
      inputValue = value
    end
  end

  function procurar()
    findCard(inputValue, {-16.86, 0.75, 1.80})
    inputValue = ''
  end

  function findCard(number, position)
    local obj = getObjectFromGUID("dc2129")
    local objects = obj.getObjects()
    local found = false
    for key, value in pairs(objects) do
      if(value.name == tostring(number)) then
        obj.takeObject({guid = value.guid, position = position, rotation = {0.00, 180.00, 0.00}})
        found = true
      end
    end
    if found == false then
      broadcastToAll('Carta não encontrada... Procure manualmente no Deck')
    end
  end

  function shuffle_all()

    getObjectFromGUID("91b3d3").shuffle()
    getObjectFromGUID("49b3cf").shuffle()
    getObjectFromGUID("a44066").shuffle()
    getObjectFromGUID("b4709e").shuffle()
    getObjectFromGUID("f4b12d").shuffle()
    getObjectFromGUID("3abee2").shuffle()
    getObjectFromGUID("180f25").shuffle()
    getObjectFromGUID("6692db").shuffle()
    getObjectFromGUID("3ca1f6").shuffle()
    getObjectFromGUID("c1e1ae").shuffle()

  end

