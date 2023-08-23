-- Incluindo funcoes   
-- comando para iniciar a funcao local function nome da funcao seguido por parenteses

-- local function detectarTap (event)  
--     print ("O objeto foi tocado: " .. tostring (event.target) );

--     return true;

-- end -- encerra a funcao

-- local botaoTap = display.newRect (200, 200, 200, 50);
-- botaoTap:setFillColor(1, 1, 0);
-- botaoTap:addEventListener ("tap", detectarTap);

-- local function doubleTap (event)
--     if(event.numTaps == 2) then
--         print("Objeto tocado 2 vezes: " .. tostring (event.target))

--     else
--         return true;

--     end
-- end

-- local doubleButton = display.newRect (100, 300, 200, 50);
-- doubleButton:setFillColor(0.2, 0.5, 0.3);
-- doubleButton:addEventListener ("tap", doubleTap);

-- local function fasesToque (event)
--     if (event.phase == "began") then
--         print("Objeto FOI tocado: " .. tostring(event.target))

--     elseif(event.phase == "moved") then
--         print("COORDENADAS do local do toque: x= " .. event.x .. ", y =" .. event.y)

--         elseif(event.phase == "ended" or "cancelled") then
--             print("Contato com a tela finalizado. " .. tostring(event.target))
--     end
--     return
-- end

-- local touchButton = display.newRect (200, 400, 200, 50);
-- touchButton:setFillColor(0.6, 0, 0);
-- touchButton:addEventListener ("touch", fasesToque);


system.activate("multitouch")

local retangulo = display.newRect (display.contentCenterX, display.contentCenterY, 280, 440)
retangulo:setFillColor (0.1, 0.6, 0.3)

local function eventTouch (event)
    print ("Fase de toque")
    print ("Localização X: " .. tostring (event.x) .. ", localização Y = " .. tostring (event.y))
    print ("ID de toque exclusivo: " .. tostring (event.id))
    print ("-------------------")
    return true
end

retangulo:addEventListener ("touch", eventTouch)