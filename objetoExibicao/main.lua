-- ADD new img, formatos aceitos PNG ou JPG
-- Comandos => display.newImageRect ("pasta/arquivo.formato", largura, altura)

local bg = display.newImageRect ("imagens/bg.jpg", 1280*1.25, 720*1.25);

-- Definir localização do OBJ
-- Comonado => variavel.linha que irei definir = localização da linha
-- posicionamento X e Y, é para topo versus lateral esquerda 
bg.x = display.contentCenterX;
bg.y = display.contentCenterY;

local pikachu = display.newImageRect ("imagens/pikachu.png", 1191/5, 1254/5);

pikachu.x = display.contentCenterX;
pikachu.y = display.contentCenterY;

local charmander = display.newImageRect ("imagens/charmander.png", 507/2, 492/2);

charmander.x = 750;
charmander.y = 610;

-- criando um retângulo
-- comando display.newRect (posição X, posição Y, largura, altura)
local retangulo = display.newRect (260, 600, 245, 253);

-- criando um circulo
-- display.newCircle (x, y, radius, radius)
local circle = display.newCircle (900, 380, 100);

local mystery = display.newImageRect ("imagens/mystery.png", 493/2, 506/2);

mystery.x = 260;
mystery.y = 600;