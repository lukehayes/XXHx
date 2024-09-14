package xx.entity;

import xx.math.Vec2;

class Entity
{
    public var position : Vec2;
    public var scale    : Vec2;
    public var color    = 0xFF00FF;

    public function new(pos: Vec2, scale: Vec2)
    {
        this.position = pos;
        this.scale    = scale;
    }

    public function update(dt:Float)
    {
        static var c = 0.0;
        c += 0.1;

        position.x = this.position.x + Math.cos(c) * 10;
    }

    public function draw(gfx: h2d.Graphics)
    {
        gfx.beginFill(this.color);
            gfx.drawRect(
                this.position.x,
                this.position.y,
                this.scale.x,
                this.scale.y
            );
        gfx.endFill();
    }

}


