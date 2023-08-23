-- -- Fisica padrão
local physics = require ("physics");
physics.start ();
physics.setGravity (0, 9.8);
physics.setDrawMode ("hybrid");

display.setStatusBar (display.HiddenStatusBar);

local joint

-- -- Parte 1
-- local staticBox = display.newRect (0, 0, 60, 60);
-- staticBox:setFillColor (0.2, 0.2, 1);
-- physics.addBody (
    -- staticBox, 
    -- "static", 
    -- {isSensor=true}
-- );
-- staticBox.x, staticBox.y = display.contentCenterX, 80;

-- local shape = display.newRect (0, 0, 40, 100);
-- shape:setFillColor (1, 0.2, 0.4);
-- physics.addBody (shape, "dynamic");
-- shape.x, shape.y, shape.rotation = 100, staticBox.y-40, 0;

-- -- criando o pivo
-- local jointPivot = physics.newJoint (
    -- "pivot", 
    -- staticBox, 
    -- shape, 
    -- staticBox.x, 
    -- staticBox.y
-- );
-- jointPivot.isMotorEnable = true;
-- jointPivot.motorSpeed = 420;
-- jointPivot.maxMotorTorque = 100;
-- jointPivot.isLimitEnabled = true;
-- jointPivot:setRotationLimits (-220, 225);
-- --===============================================================
-- -- Parte 2
local staticBox = display.newRect (0, 0, 60, 60);
staticBox:setFillColor (0.2, 0.2, 1);
physics.addBody (
    staticBox, 
    "static", 
    {isSensor=true}
);
staticBox.x, staticBox.y = 200, 180;

local shape = display.newRect(0, 0, 40, 100);
shape:setFillColor (1, 0.4, 0.2);
physics.addBody (
    shape, 
    "dynamic", 
    {bounce=1}
);
shape.x, shape.y = 200, 80;

local jointDistance = physics.newJoint (
    "distance", 
    staticBox, 
    shape, 
    staticBox.x, 
    staticBox.y-10, 
    shape.x, 
    shape.y
);

-- --===============================================================
-- -- Parte 3
jointDistance.fequency = 0.99;
jointDistance.dampingRatio = 0.9;
jointDistance.length = staticBox.y - shape.y;

shape:applyLinearImpulse (
    0.3, 
    0, 
    shape.x, 
    shape.y-5
);

