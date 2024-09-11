package entity;

import math.Vec2;

class Entity
{
    var position : Vec2;

    public function new(pos: Vec2)
    {
        this.position = pos;
        trace("Entity Created");
    }
}


