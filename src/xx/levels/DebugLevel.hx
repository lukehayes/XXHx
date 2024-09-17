package xx.levels;

class DebugLevel extends h2d.Scene
{
    public function new()
    {
        super();
    }

    override public function render(engine: h3d.Engine)
    {
        engine.begin();
        engine.clear(0x00FF00);
        trace(engine);

        engine.end();
    }

    public function onBeginDraw(e:h2d.Drawable)
    {
        trace("Begin Draw");
    }
}
