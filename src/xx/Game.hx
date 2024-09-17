package xx;

import xx.entity.Entity;
import xx.entity.Sprite;

class Game extends hxd.App
{
    var gfx : h2d.Graphics;
    var entities : Array<Entity>;

    var txt : h2d.Text;

    var spr : Sprite;

    override function init() 
    {
        this.gfx = new h2d.Graphics(s2d);

        this.entities = new Array<Entity>();

        this.spr = new Sprite(s2d);
        s2d.addChild(this.spr);
        // --------------------------------------------------------------------
        // UI TEXT
        // --------------------------------------------------------------------
        var font = hxd.res.DefaultFont.get();
        font.resizeTo(26);
        this.txt = new h2d.Text(font);

        s2d.addChild(this.txt);
    }

    override function update(dt:Float) 
    {
        var fps = this.engine.fps;
        var drawCalls = this.engine.drawCalls;
        this.txt.text = 'FPS $fps. Draw Calls: $drawCalls';

    }

    static function main() {
        hxd.Res.initEmbed();
        new Game();
    }
}
