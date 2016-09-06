package;

import js.Browser;
import js.nanoplayer.NanoPlayerTest;
import hex.unittest.runner.ExMachinaUnitCore;
import hex.unittest.notifier.BrowserUnitTestNotifier;
import hex.unittest.notifier.ConsoleNotifier;

/**
 * Entry Point for test execution.
 * @author Andor Zoldesi
 */
class MainTest
{
	static public function main() : Void
	{
		var emu = new ExMachinaUnitCore();
		emu.addListener( new BrowserUnitTestNotifier( "console" ) );
		emu.addTest( NanoPlayerTest );
		emu.run();
	}
}
