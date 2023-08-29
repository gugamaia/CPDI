--Formas Geométricas

-- 
local retangulo = display.newRect (640, 380, 150, 70);

local circulo = display.newCircle (800, 380, 50);

local quadrado = display.newRect (400, 500, 100, 100);

-- Adicionar retangulo arredondado
-- comandos display.newRoundedRect (posição X, posição Y, largura, altura, raio das boradas);

local retanguloRedondo = display.newRoundedRect (120, 500, 150, 75, 60);

-- Add nova linha
--comandos display.newLine (posição X inicial, posição Y inicial, posição X final, posição Y 
local novaLinha = display.newLine (39, 580, 899, 580);

-- local linhaLateral = display.newLine (899, 80, 899, 580);
-- local linhaBase  = display.newLine (899, 80, 39, 80);
-- local ultimaLinha = display.newLine (39, 80, 39, 380);

local localizacaoX = 200;
local localizacaoY = 350;

local vertices = {0, -110, 27, -35, 105, -35, 43, 16, 65, 90, 0, 45, -65, 90, -43, 15, -105, -35, -27, -35};

local estrela = display.newPolygon (localizacaoX, localizacaoY, vertices);

-- display.newText ("texto que queremos imprimir", local X, local Y, fonte, tamanho fonte);
local helloWorld = display.newText ("Hello, World!", 460, 140, native.systemFont, 144);

local parametros = {
    text = "Olá, mundo!",
    x = 500,
    y = 450,
    font = "Arial",
    fontSize = 144,
    align = "rigth"
};

local olaMundo = display.newText(parametros);