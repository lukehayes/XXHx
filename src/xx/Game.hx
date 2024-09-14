package xx;

import xx.math.Vec2;

class Game extends hxd.App
{
    var gfx : h2d.Graphics;
    static var c = 0.0;

    override function init() 
    {
        this.gfx = new h2d.Graphics(s2d);
    }

    override function update(dt:Float) 
    {
        c += 0.1;

        gfx.clear();
        gfx.beginFill(0xAA00FF);
            gfx.drawRect(300 + Math.sin(c) * 100,300 + Math.cos(c) * 100,100,100);
        gfx.endFill();
    }

    static function main() {
        hxd.Res.initEmbed();
        new Game();
    }
}
