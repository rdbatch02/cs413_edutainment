import starling.display.Sprite;
import starling.utils.AssetManager;
import starling.display.Image;
import starling.core.Starling;
import starling.animation.Transitions;

class Root extends Sprite {

    public static var assets:AssetManager;
    public var ninja:Image;

    public function new() {
        super();
    }

    public function start(startup:Startup) {

        assets = new AssetManager();
        assets.enqueue("assets/bubble1.png");
        assets.enqueue("assets/bubble2.png");
        assets.enqueue("assets/bubble3.png");
        assets.enqueue("assets/font/font.fnt");
        assets.enqueue("assets/font/font.png");

        var stage = Starling.current.stage;
        stage.color = 0x91D3FF;
        assets.loadQueue(function onProgress(ratio:Float) {            
            if (ratio == 1) {

                Starling.juggler.tween(startup.loadingBitmap, 2.0, {
                    transition: Transitions.EASE_OUT,
                        delay: 1.0,
                        alpha: 0
                });
                var menu = new Menu(this);
                this.addChild(menu);

            }

        });
    }

}
