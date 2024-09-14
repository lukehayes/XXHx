package xx;

import xx.math.Vec2;
import xx.entity.Entity;

class Game extends hxd.App
{
    var gfx : h2d.Graphics;
    static var c = 0.0;
    
    var entities : Array<Entity>;

    override function init() 
    {
        this.gfx = new h2d.Graphics(s2d);

        this.entities = new Array<Entity>();
        this.entities.push(new Entity(
            new Vec2(100,400),
            new Vec2(32,32)
        ));

        this.entities.push(new Entity(
            new Vec2(400,100),
            new Vec2(32,32)
        ));

        this.entities.push(new Entity(
            new Vec2(200,210),
            new Vec2(32,64)
        ));
    }

    override function update(dt:Float) 
    {
        for(e in this.entities)
        {
            e.update(dt);
        }

        gfx.clear();
        for(e in this.entities)
        {
            e.draw(gfx);
        }


    }

    static function main() {
        hxd.Res.initEmbed();
        new Game();
    }
}
