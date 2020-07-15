  -- Arquivo de Configuração do SETUP inicial do MOD de Fallout - Board Game
  -- Utilizando API do Tabletop Simulator
  -- MOD e SCRIPT desenvolvidos por @mathmed
  -- https://github.com/mathmed/

  function onload()
    -- Criando interface inicial
    interface_inicial()
  end

  -- Objeto auxiliar para posições dos tiles do mapa
  width = 6.53
  height = 5.72
  
  posicao_tiles = {
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
      [1] = { - 17.85, 0.96, 15.50 - (height * 1)},
      [2] = { - 17.85 + (width * 1), 0.96, 15.50 - (height * 1)},
      [3] = { - 17.85 + (width * 2), 0.96, 15.50 - (height * 1)},
      [4] = { - 17.85 + (width * 3), 0.96, 15.50 - (height * 1)},
      [5] = { - 17.85 + (width * 4), 0.96, 15.50 - (height * 1)},
      [6] = { - 17.85 + (width * 5), 0.96, 15.50 - (height * 1)},
      [7] = { - 17.85 + (width * 6), 0.96, 15.50 - (height * 1)},
      [8] = { - 17.85 + (width * 7), 0.96, 15.50 - (height * 1)},
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
      [1] = { - 17.85, 0.96, 15.50 - (height * 3)},
      [2] = { - 17.85 + (width * 1), 0.96, 15.50 - (height * 3)},
      [3] = { - 17.85 + (width * 2), 0.96, 15.50 - (height * 3)},
      [4] = { - 17.85 + (width * 3), 0.96, 15.50 - (height * 3)},
      [5] = { - 17.85 + (width * 4), 0.96, 15.50 - (height * 3)},
      [6] = { - 17.85 + (width * 5), 0.96, 15.50 - (height * 3)},
      [7] = { - 17.85 + (width * 6), 0.96, 15.50 - (height * 3)},
      [8] = { - 17.85 + (width * 7), 0.96, 15.50 - (height * 3)},
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
      [1] = { - 17.85, 0.96, 15.50 - (height * 5)},
      [2] = { - 17.85 + (width * 1), 0.96, 15.50 - (height * 5)},
      [3] = { - 17.85 + (width * 2), 0.96, 15.50 - (height * 5)},
      [4] = { - 17.85 + (width * 3), 0.96, 15.50 - (height * 5)},
      [5] = { - 17.85 + (width * 4), 0.96, 15.50 - (height * 5)},
      [6] = { - 17.85 + (width * 5), 0.96, 15.50 - (height * 5)},
      [7] = { - 17.85 + (width * 6), 0.96, 15.50 - (height * 5)},
      [8] = { - 17.85 + (width * 7), 0.96, 15.50 - (height * 5)},
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

  function interface_inicial()

    -- Botões de opções
    self.createButton({
      click_function = 'setup_original', label = 'JOGO ORIGINAL',
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
  
  function setup_original(setup)
    
    -- Limpando interface
    setup.clearButtons()

    -- Removendo arquivos de expansão
    getObjectFromGUID("7aa20b").destruct()
    getObjectFromGUID("4a4475").destruct()
    getObjectFromGUID("358397").destruct()
    getObjectFromGUID("853aed").destruct()
    getObjectFromGUID("923b73").destruct()
    getObjectFromGUID("94f903").destruct()

    -- Botões para selecionar número de jogadores
    self.createButton({
      click_function = 'um_jogador', label = '1 JOGADOR',
      function_owner = self,
      position = { - 1, 0.18, - 0.5}, rotation = {0, 0, 0},
      width = 800, height = 300, font_size = 70
    })

    self.createButton({
      click_function = 'dois_jogadores', label = '2 JOGADORES',
      function_owner = self,
      position = { 1, 0.18, - 0.5}, rotation = {0, 0, 0},
      width = 800, height = 300, font_size = 70
    })

    self.createButton({
      click_function = 'tres_jogadores', label = '3 JOGADORES',
      function_owner = self,
      position = { - 1, 0.18, 0.5}, rotation = {0, 0, 0},
      width = 800, height = 300, font_size = 70
    })

    self.createButton({
      click_function = 'quatro_jogadores', label = '4 JOGADORES',
      function_owner = self,
      position = { 1, 0.18, 0.5}, rotation = {0, 0, 0},
      width = 800, height = 300, font_size = 70
    })
  end

  function um_jogador(setup)
    --- Ajustando deck
    remover_agendas(1, setup)
  end

  function dois_jogadores(setup)
    --- Ajustando deck
    remover_agendas(2, setup)
  end

  function tres_jogadores(setup)
    --- Ajustando deck
    remover_agendas(3, setup)
  end

  function quatro_jogadores(setup)
    --- Ajustando deck
    remover_agendas(4, setup)
  end

  function remover_agendas(players, setup)

    -- Limpando interface
    setup.clearButtons()
    
    local obj = getObjectFromGUID("677845")
    local deck = obj.getObjects()
    for key, carta in pairs(deck) do
      if(tonumber(carta.name) > players) then
        obj.takeObject({smooth= false ,guid = carta.guid, callback_function = function(x) x.destruct() end})
      end
    end
    --- Interface pra criar cenarios
    criar_cenarios()
  end

  function setup_exp(setup)
    
    -- Limpando interface
    setup.clearButtons()

    -- Ajustando para expansão
    getObjectFromGUID("677845").destruct()
    getObjectFromGUID("4a4475").setPositionSmooth({ -42.57, 1.01, -5.84})
    getObjectFromGUID("358397").setPositionSmooth({ -42.57, 1.01, -10.84})
    getObjectFromGUID("853aed").setPositionSmooth({ 13.52, 1.69, 27.21})
    getObjectFromGUID("923b73").setPosition({ -42.57, 1.01, 5})

    criar_cenarios(self)

  end

  function criar_cenarios()

    -- Botões de seleção do cenário
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

    -- Arranjo dos tiles
    local arranjo = {
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
    alocar_tiles(arranjo, mainTile, mainVal);

    getObjectFromGUID('90eb82').setPositionSmooth({ 26.63, 0.85, 19.48})
    getObjectFromGUID('d7a4b6').setPositionSmooth({ 24.18, 1.04, 23.24})
    getObjectFromGUID('f5d313').setPositionSmooth({ 24.18, 1.04, 23.24})

    -- Tokens auxiliares no mapa
    local obj = getObjectFromGUID("b319a2")
    local bag = obj.getObjects()
    for k, v in pairs(bag) do
      if(v.guid == "b53bac") then
        obj.takeObject({guid = v.guid, position = {9.73, 0.96, 4.35}})
      end
      if(v.guid == "c3e3b9") then
        obj.takeObject({guid = v.guid, position = {-7.78, 1.06, -6.78}})
      end
      if(v.guid == "16a494") then
        obj.takeObject({guid = v.guid, position = {4.47, 1.05, -8.34}})
      end
    end

    -- Cartas de missão inicial
    pegar_carta(29, {-4.61, 0.75, 21.05})
    pegar_carta(30, {-0.61, 0.75, 21.05})
    pegar_carta(31, {3.61, 0.75, 21.05})

    -- Removendo itens não utilizados
    getObjectFromGUID("8b837d").destruct()
    getObjectFromGUID("107e5d").destruct()
    getObjectFromGUID("e0a410").destruct()
    getObjectFromGUID("677118").destruct()
    getObjectFromGUID("679035").destruct()
    getObjectFromGUID("3d7ecd").destruct()

    -- Embaralhando, abrindo loja e abrindo interface final de procura
    embaralhar()
    abrir_loja()
    interface_procura(setup)

  end

  function pitt(setup)

    -- Arranjo dos tiles
    local arranjo = {
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
    alocar_tiles(arranjo, mainTile, mainVal);

    getObjectFromGUID('8b837d').setPositionSmooth({ 26.63, 0.85, 19.48})
    getObjectFromGUID('d7a4b6').setPositionSmooth({ 24.18, 1.04, 23.24})
    getObjectFromGUID('f5d313').setPositionSmooth({ 24.18, 1.04, 23.24})

    -- Tokens auxiliares no mapa
    local obj = getObjectFromGUID("3d7ecd")
    local bag = obj.getObjects()
    for k, v in pairs(bag) do
      if(v.guid == "e440de") then
        obj.takeObject({guid = v.guid, position = {-0.48, 0.95, 6.14}})
      end
      if(v.guid == "dea6e0") then
        obj.takeObject({guid = v.guid, position = {1.70, 1.06, 11.49}})
      end
    end

    -- Cartas de missão inicial
    pegar_carta(56, {-4.61, 0.75, 21.05})

    -- Removendo itens não utilizados
    getObjectFromGUID("90eb82").destruct()
    getObjectFromGUID("107e5d").destruct()
    getObjectFromGUID("e0a410").destruct()
    getObjectFromGUID("677118").destruct()
    getObjectFromGUID("679035").destruct()
    getObjectFromGUID("b319a2").destruct()
    
    -- Embaralhando, abrindo loja e abrindo interface final de procura
    embaralhar()
    abrir_loja()
    interface_procura(setup)

  end

  function ermos(setup)

    -- Arranjo dos tiles
    local arranjo = {
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
        obj2.takeObject({guid = val.guid, position = posicao_tiles[6][2] })
      end
    end

    local mainTile = {'crossroads', 'megaton', 'mall', 'tower', 'citRuins'}
    local mainVal = {2, 1, 1, 1, 1}
    alocar_tiles(arranjo, mainTile, mainVal);

    getObjectFromGUID('107e5d').setPositionSmooth({ 26.63, 0.85, 19.48})
    getObjectFromGUID('d7a4b6').setPositionSmooth({ 24.18, 1.04, 23.24})
    getObjectFromGUID('f5d313').setPositionSmooth({ 24.18, 1.04, 23.24})

    -- Tokens auxiliares no mapa
    local obj = getObjectFromGUID("677118")
    local bag = obj.getObjects()

    getObjectFromGUID('e1d4ce').setPositionSmooth({8.35, 0.95, 10.09})

    for k, v in pairs(bag) do
      if(v.guid == "95eefb") then
        obj.takeObject({guid = v.guid, position = {-11.63, 0.94, -11.85}})
      end
    end

    -- Cartas de missão inicial
    pegar_carta(44, {-4.61, 0.75, 21.05})

    -- Removendo itens não utilizados
    getObjectFromGUID("90eb82").destruct()
    getObjectFromGUID("8b837d").destruct()
    getObjectFromGUID("e0a410").destruct()
    getObjectFromGUID("679035").destruct()
    getObjectFromGUID("3d7ecd").destruct()
    getObjectFromGUID("b319a2").destruct()

    -- Embaralhando, abrindo loja e abrindo interface final de procura
    embaralhar()
    abrir_loja()
    interface_procura(setup)
  end

  function comunidade(setup)

    -- Arranjo dos tiles
    local arranjo = {
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
    alocar_tiles(arranjo, mainTile, mainVal);

    -- Tokens de trilha da facção
    getObjectFromGUID('e0a410').setPositionSmooth({ 26.63, 0.85, 19.48})
    getObjectFromGUID('d7a4b6').setPositionSmooth({ 24.18, 1.04, 23.24})
    getObjectFromGUID('f5d313').setPositionSmooth({ 24.18, 1.04, 23.24})

    -- Tokens auxiliares no mapa
    local obj = getObjectFromGUID("679035")
    local bag = obj.getObjects()
    for k, v in pairs(bag) do
      if(v.guid == "b53bac") then
        obj.takeObject({guid = v.guid, position = { 4.76, 1.05, -7.58}})
      end
    end

    -- Cartas de missão inicial
    pegar_carta(14, {-4.61, 0.75, 21.05})

    -- Removendo itens não utilizados
    getObjectFromGUID("90eb82").destruct()
    getObjectFromGUID("8b837d").destruct()
    getObjectFromGUID("107e5d").destruct()
    getObjectFromGUID("b319a2").destruct()
    getObjectFromGUID("3d7ecd").destruct()
    getObjectFromGUID("677118").destruct()

    -- Embaralhando, abrindo loja e abrindo interface final de procura
    embaralhar()
    abrir_loja()
    interface_procura(setup)

  end

  -- Abrindo as 4 cartas da loja quando o SETUP é iniciado
  function abrir_loja()
    local loja = getObjectFromGUID("49b3cf")
    local cartas = loja.getObjects()
    local cont = 0;
    local start = -5.8
    for k, v in pairs(cartas) do
      if(cont < 4) then
        loja.takeObject({guid = v.guid, position = {-35.39, 0.74, start + cont*5.3}, callback_function = function(ref) ref.flip() end})
        cont= cont+1
      end
    end
  end
  
  -- Função para alocar tiles do cenário na mesa
  function alocar_tiles(tiles, main, mainVal)
    local counter = 1
    for i = 1, 7, 1 do
      for j = 1, 7, 1 do
        if tiles[i][j] == 'green' then
          local bag = getObjectFromGUID("16df29")
          bag.randomize()
          local params = {}
          params.position = posicao_tiles[i][j]
          params.rotation = {0, 150, 180}
          bag.takeObject(params).lock()
        elseif tiles[i][j] == 'red' then
          local bag = getObjectFromGUID("fb7624")
          bag.randomize()
          local params = {}
          params.position = posicao_tiles[i][j]
          params.rotation = {0, 150, 180}
          bag.takeObject(params).lock()
        elseif tiles[i][j] == 'other' then
          local bag = getObjectFromGUID("f5b7f3")
          local objects = bag.getObjects()
          local params = {}
          params.position = posicao_tiles[i][j]
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

  -- Abrindo interface para procurar e retirar cartas do deck de missão
  function interface_procura(setup)
    setup.clearButtons()
    self.createInput({
      input_function = 'controle_busca',
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

  carta_procurada = ''

  function controle_busca(panel, player_color, value, selected)
    if selected == false then
      carta_procurada = value
    end
  end

  function procurar()
    pegar_carta(carta_procurada, {-16.86, 0.75, 1.80})
    carta_procurada = ''
  end

  function pegar_carta(number, position)
    local obj = getObjectFromGUID("dc2129")
    local objects = obj.getObjects()
    local encontrou = false
    for key, value in pairs(objects) do
      if(value.name == tostring(number)) then
        obj.takeObject({guid = value.guid, position = position, rotation = {0.00, 180.00, 0.00}})
        encontrou = true
      end
    end
    if encontrou == false then
      broadcastToAll('Carta não encontrada... Procure manualmente no Deck')
    end
  end

  function embaralhar()
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
