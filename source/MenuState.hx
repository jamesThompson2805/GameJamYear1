package;

import flixel.FlxG;
import flixel.FlxState;
import flixel.ui.FlxButton;

class MenuState extends FlxState
{
	var playButton:FlxButton;

	override public function create()
	{
		playButton = new FlxButton(200, 200, "Play", start);
		playButton.screenCenter();
		add(playButton);

		super.create();
	}

	override public function update(elapsed:Float)
	{
		super.update(elapsed);
	}

	function start()
	{
		FlxG.switchState(new PlayState());
	}
}
