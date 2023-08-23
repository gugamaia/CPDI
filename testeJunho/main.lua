local bg = display.newImageRect ("imagens/bg.jpg", 1000, 1251/1)
bg.x = display.contentCenterx;
bg.y = display.contentCentery;


local player = display.newImageRect ("imagens/player.png", 532/3, 469/3)
player.x = 50;
player.y = 300;

local function andarDireita ()
    player.x = player.x + 17;
end

local venon = display.newImageRect ("imagens/venon.png", 532/3, 469/3)
venon.x = 260;
venon.y = 197;


local botaoDireita = display.newImageRect ("imagens/button.png", 1280/20, 1279/20);
botaoDireita.x = 140;
botaoDireita.y = 100;

botaoDireita:addEventListener("tap", andarDireita);

local function andarEsquerda ()
    player.x = player.x - 17;
end

local botaoEsquerda = display.newImageRect ("imagens/left.png", 1280/20, 1279/20);
botaoEsquerda.x = 20;
botaoEsquerda.y = 100;


botaoEsquerda:addEventListener("tap", andarEsquerda)

local function descer ()
    player.y = player.y + 17;
end

local botaoDown = display.newImageRect ("imagens/down.png", 1280/20, 1279/20);
botaoDown.x = 80;
botaoDown.y = 100;


botaoDown:addEventListener("tap", descer);

local function subir ()
    player.y = player.y - 18;
end

local botaoUp = display.newImageRect ("imagens/up.png", 1280/20, 1279/20);
botaoUp.x = 80;
botaoUp.y = 40;

botaoUp:addEventListener("tap", subir);
