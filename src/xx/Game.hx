package xx;

import xx.math.Vec2;
import xx.entity.Entity;

class Game extends hxd.App
{
    var gfx : h2d.Graphics;
    var entities : Array<Entity>;

    var txt : h2d.Text;
    var entityCount = 10;

    var batch : h2d.SpriteBatch;
    var bmp : h2d.Bitmap;

    override function init() 
    {
        this.gfx = new h2d.Graphics(s2d);

        this.entities = new Array<Entity>();
        this.batch = new h2d.SpriteBatch(h2d.Tile.fromColor(0x00FF00));

        this.bmp = new h2d.Bitmap(h2d.Tile.fromColor(0xFF11AA));
        this.bmp.height = 100;
        this.bmp.width = 100;
        this.bmp.x = 300;
        this.bmp.y = 300;
        s2d.addChild(this.bmp);

        s2d.addChild(this.batch);

        // --------------------------------------------------------------------
        // UI TEXT
        // --------------------------------------------------------------------
        var font = hxd.res.DefaultFont.get();
        font.resizeTo(26);
        this.txt = new h2d.Text(font);

        s2d.addChild(this.txt);

        // --------------------------------------------------------------------
        // Generate Entities
        // --------------------------------------------------------------------
        for(i in 0...entityCount)
        {
            var rx = Std.random(800);
            var ry = Std.random(600);

            this.entities.push(new Entity(
                new Vec2(rx,ry),
                new Vec2(8,8)
            ));
        }
    }

    override function update(dt:Float) 
    {
        var fps = this.engine.fps;
        var drawCalls = this.engine.drawCalls;
        this.txt.text = 'Entities: $entityCount. FPS $fps. Draw Calls: $drawCalls';

        for(e in this.entities)
        {
            e.update(dt);
        }

        gfx.clear();
        for(e in this.entities)
        {
            // e.draw(gfx);
        }


    }

    static function main() {
        hxd.Res.initEmbed();
        new Game();
    }
}
