package view.mediator
{
	import flash.display.Sprite;
	
	import org.puremvc.as3.interfaces.INotification;
	import org.puremvc.as3.patterns.mediator.Mediator;
	
	import view.components.StartViewLogic;
	
	public class StartMediator extends Mediator
	{
		public function StartMediator()
		{
			super("StartMediator", new StartViewLogic());
		}
		override public function listNotificationInterests():Array
		{
			return ["call_object"];
		}
		override public function handleNotification(notification:INotification):void
		{
		}
		override public function onRegister():void
		{
			super.onRegister();
			sendNotification("add_child_to_root", viewComponent.content);
			
		}
	}
}