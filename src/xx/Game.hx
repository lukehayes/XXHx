package xx;

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
        c += 0.01;

        gfx.clear();
        gfx.beginFill(0xFF00FF);
            gfx.drawRect(100 + Math.sin(c) * 100,100 + Math.cos(c) * 100,100,100);
        gfx.endFill();
    }

    static function main() {
        hxd.Res.initEmbed();
        new Game();
    }
}
