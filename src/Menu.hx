import starling.display.Sprite;
import starling.text.TextField;
import starling.text.BitmapFont;
import starling.core.Starling;
import starling.utils.Color;
import starling.events.TouchEvent;
import starling.events.Touch;
import starling.events.TouchPhase;

class Menu extends Sprite 
{
    public var rootSprite:Sprite;

    public function new(rootSprite:Sprite)
    {
        super();
        this.rootSprite = rootSprite;
        
        var startGameBubble = new Bubble(Root.assets.getTexture("bubble2"), "Start Game", 1, true);
        startGameBubble.x = 100;
        startGameBubble.y = 200;
        addChild(startGameBubble);        

        var tutorialBubble = new Bubble(Root.assets.getTexture("bubble1"), "Tutorial", 1, true);
        tutorialBubble.x = 500;
        tutorialBubble.y = 200;
        addChild(tutorialBubble);        

        var creditsBubble = new Bubble(Root.assets.getTexture("bubble3"), "Credits", 1, true);
        creditsBubble.x = 900;
        creditsBubble.y = 200;
        addChild(creditsBubble);        
    }
}