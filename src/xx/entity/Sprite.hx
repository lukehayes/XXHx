package xx.entity;

// Wrapper class for h2d.Bitmap - DOES NOT inherit from Entity.
class Sprite extends h2d.Bitmap
{
    private var context: h2d.RenderContext;

    public function new(scene:h2d.Scene)
    {
        super(h2d.Tile.fromColor(0xFFFF00));

        this.context = new h2d.RenderContext(scene);

        trace("RenderContext Created.");

        trace("Sprite Created.");
    }

    public function update(dt:Float)
    {
    }

    override public function draw(ctx: h2d.RenderContext)
    {
        var engine = h3d.Engine.getCurrent();
        trace(engine);

        trace("Sprite Update Post Pre Cam");

        // ctx.beginDrawObject(this, h3d.mat.Texture.fromColor(0xFFF000));
        // ctx.end();

        trace("Sprite Update Post Pop Cam");
    }
    
    public function onBeginDraw(d)
    {
        trace("Begin Draw");
    }
}
