-- Carregando audio
local bgAudio = audio.loadStream ("Audio/audio_bg.mp3");
-- reservando um canal (de 1 até 32)
audio.reserveChannels(14);
-- setar o volume
audio.setVolume (0.6, {channel=14});
-- reproduzir o audio (qual audio, {canal, loops [-1 é infinito]})
--audio.play (bgAudio, {channel=14, loops=0});

-- para sons curtos, melhor utilizar o loadSound
local audioTiro = audio.loadSound ("Audio/tiro.wav");
local parametros = {time=2000, fadein=200};
local botaoTiro = display.newCircle (60, 300, 32);
botaoTiro:setFillColor (0.5, 0, 0.1);
local function tocarTiro ()
    audio.play(audioTiro, parametros);
end

botaoTiro:addEventListener ("tap", tocarTiro);


local moeda = audio.loadSound ("Audio/moeda.wav");
local parametrosMoeda = {time=2000, fadein=20};
local botaoMoeda = display.newCircle (150, 300, 32);
botaoMoeda:setFillColor (0, 0.6, 0);
local function flipCoin ()
    audio.play(moeda, parametrosMoeda);
end

botaoMoeda:addEventListener ("tap", flipCoin);
