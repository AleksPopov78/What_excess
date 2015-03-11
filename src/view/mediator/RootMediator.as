package view.mediator
{
	import flash.display.MovieClip;
	import flash.display.Sprite;
	
	
	import org.puremvc.as3.interfaces.INotification;
	import org.puremvc.as3.patterns.mediator.Mediator;
	
	public class RootMediator extends Mediator
	{
		public function RootMediator(rootSprite:Sprite)
		{
			super("RootMediator", rootSprite);
		}
		override public function listNotificationInterests():Array
		{
			return ["add_child_to_root", "remove_child_from_root"]
		}
		override public function handleNotification(notification:INotification):void
		{
			var displayObject:MovieClip = notification.getBody() as MovieClip;
			switch (notification.getName())
			{
				case "add_child_to_root": 
					(viewComponent as Sprite).addChild(displayObject);
					break;
				case "remove_child_from_root":
					(viewComponent as Sprite).removeChild(displayObject);
					break;
			}
		}
	}
}