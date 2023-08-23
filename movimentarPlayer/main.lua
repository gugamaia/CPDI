local bg = display.newImageRect ("imagens/sky.png", 960*3, 240*3)
bg.x = display.contentCenterx;
bg.y = display.contentCentery;

local chao = display.newImageRect ("imagens/ground.png", 1028, 256)
chao.x = display.contentCenterx;
chao.y = 490;

local player = display.newImageRect ("imagens/player.png", 532/3, 469/3)
player.x = 50;
player.y = 300;

local function andarDireita ()
    player.x = player.x + 3;
end

local botaoDireita = display.newImageRect ("imagens/button.png", 1280/20, 1279/20);
botaoDireita.x = 200;
botaoDireita.y = 120;

botaoDireita:addEventListener("tap", andarDireita);

local function andarEsquerda ()
    player.x = player.x - 3;
end

local botaoEsquerda = display.newImageRect ("imagens/left.png", 1280/20, 1279/20);
botaoEsquerda.x = 40;
botaoEsquerda.y = 120;
/*botaoEsquerda.rotation = 90*/
botaoEsquerda:addEventListener("tap", andarEsquerda)

local function descer ()
    player.y = player.y + 3;
end

local botaoDown = display.newImageRect ("imagens/down.png", 1280/20, 1279/20);
botaoDown.x = 120;
botaoDown.y = 120;
/*botaoDown.rotation = 90*/
botaoDown:addEventListener("tap", descer);

local function subir ()
    player.y = player.y - 3;
end

local botaoUp = display.newImageRect ("imagens/up.png", 1280/20, 1279/20);
botaoUp.x = 120;
botaoUp.y = 50;
/*botaoUp.rotation = 270*/
botaoUp:addEventListener("tap", subir);
