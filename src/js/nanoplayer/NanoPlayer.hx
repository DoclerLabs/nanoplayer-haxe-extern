package js.nanoplayer;

import js.Promise;

/**
 * extern for NanoPlayer 2.4.1
 * @author d3relict
 */

@:native('NanoPlayer')
extern class NanoPlayer
{
	public function new(domId: String): Void;
	
	/**
	 * List of tech names that are supported on the current platform
	 */
	public static var capabilities: Array<String>;
	
	/**
	 * The version of the player.
	 */
	public var type: String;
	
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