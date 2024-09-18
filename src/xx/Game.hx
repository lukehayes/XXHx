package xx;

import xx.levels.DebugLevel;
import xx.entity.Entity;
import xx.entity.Sprite;

class Game extends hxd.App
{
    var gfx : h2d.Graphics;
    var entities : Array<Entity>;

    var txt : h2d.Text;

    var spr : Sprite;

    var level : xx.levels.DebugLevel;

    override function init() 
    {
        this.gfx = new h2d.Graphics(s2d);

        this.entities = new Array<Entity>();

        // this.level = new DebugLevel();
        // this.s2d = this.level;

        this.spr = new Sprite(100,100,32);
        s2d.add(this.spr);

        var s2 = new Sprite();
        s2.x = 300;
        s2.y = 300;

        var s3 = new Sprite();
        s3.x = 200;
        s3.y = 39;
        // s3.color = h3d.Vector4.fromColor(0xF0FFFF);
        var s2 = new Sprite(300,230, 16);

        s2d.add(this.spr);
        s2d.add(s2);
        s2d.add(s3);
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

        this.spr.x += 130 * dt;
    }

    static function main() {
        hxd.Res.initEmbed();
        new Game();
    }
}
