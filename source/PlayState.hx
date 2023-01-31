package;

import flixel.FlxG;
import flixel.FlxState;
import flixel.addons.editors.ogmo.FlxOgmo3Loader;
import flixel.tile.FlxTilemap;

class PlayState extends FlxState
{
	var player:Player;

	var map:FlxOgmo3Loader;
	var walls:FlxTilemap;

	override public function create()
	{
		map = new FlxOgmo3Loader(AssetPaths.GameJam1__ogmo, AssetPaths.level1__json);

		// TODO: The first tile (tile 0) does not render
		walls = map.loadTilemap(AssetPaths.SimpleWalls__png, "Walls");
		walls.follow();
		for (i in 0...21)
		{
			walls.setTileProperties(i, NONE);
		}
		walls.setTileProperties(4, ANY);
		walls.setTileProperties(5, ANY);
		walls.setTileProperties(6, ANY);
		walls.setTileProperties(9, ANY);
		walls.setTileProperties(16, ANY);
		add(walls);

		// TODO: Change this to be from the json file
		player = new Player(96, 96);
		add(player);

		super.create();
	}

	override public function update(elapsed:Float)
	{
		super.update(elapsed);
		FlxG.collide(player, walls);
	}
}
