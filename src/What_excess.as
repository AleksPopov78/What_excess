package
{
	import controller.commands.StartCommand;
	
	import flash.display.Sprite;
	import flash.events.Event;
	
	import org.puremvc.as3.patterns.facade.Facade;
	
	[SWF(width = "760", height = "660", frameRate = "60", backgroundColor = "#FFFFFF")]
	
	
	public class What_excess extends Sprite
	{
		
		public function What_excess()
		{
		addEventListener(Event.ADDED_TO_STAGE, onAdded);
		}
		
		protected function onAdded(evetn:Event):void
		{
			removeEventListener(Event.ADDED_TO_STAGE, onAdded);
			
			Facade.getInstance().registerCommand ("start", StartCommand);
			Facade.getInstance().sendNotification("start", this);
		}
		
	}
}