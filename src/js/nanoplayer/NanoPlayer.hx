package js.nanoplayer;

import js.Promise;

/**
 * NanoPlayer 1.1.2
 * @author d3relict
 */

@:native('NanoPlayer')
extern class NanoPlayer
{
	public function new(domId: String): Void;
	
	/**
	 * The version of the player.
	 */
	public var type(get, null): String;
	
	/**
	 * The version of the player.
	 */
	public var version: String;
	
	/**
	 * Mutes the player.
	 */
	public function mute(): Void;
	
	/**
	 * Pauses the player.
	 */
	public function pause(): Void;
	
	/**
	 * Plays the player.
	 */
	public function play(): Void;
	
	/**
	 * Initializes the player with a given config object.
	 */
	public function setup(config: Dynamic): Promise<Dynamic>;
	
	/**
	 * Sets the volume of the player.
	 */
	public function setVolume(value: Float): Void;
	
	/**
	 * Unmutes the player.
	 */
	public function unmute(): Void;
}