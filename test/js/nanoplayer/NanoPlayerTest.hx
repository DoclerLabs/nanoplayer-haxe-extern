package js.nanoplayer;

import hex.unittest.assertion.Assert;
import js.nanoplayer.NanoPlayer;

/**
 * Test class for the NanoPlayer extern class.
 */

class NanoPlayerTest
{
	var nanoPlayer: NanoPlayer;

	@Before
	public function init() : Void
	{
		untyped require('nanoplayer');
	}

	@Test( "NanoPlayer exists" )
	public function playerExists() : Void
	{
		Assert.isNotNull(NanoPlayer, "NanoPlayer global variable should be set.");
	}

	@Test( "NanoPlayer has all it's methods and properties" )
	public function hasEveryMethodAndProperty() : Void
	{
		this.nanoPlayer = new NanoPlayer('foo');
		var properties:Array<String> = 
		[
			"type", "version", "mute", "pause", "play", "setup", "setVolume", "unmute"
		];
		for ( i in 0...properties.length )
		{
			Assert.isNotNull(Reflect.field(this.nanoPlayer, properties[i]), "nanoPlayer." + properties[i] + " should not be null");
		}
	}
}
