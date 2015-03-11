package controller.commands
{
	import flash.display.Loader;
	import flash.display.LoaderInfo;
	import flash.display.Sprite;
	import flash.events.Event;
	import flash.net.URLRequest;
	
	import org.puremvc.as3.interfaces.INotification;
	import org.puremvc.as3.patterns.command.SimpleCommand;
	
	import utils.Warehouse;
	
	import view.mediator.RootMediator;
	import view.mediator.StartMediator;
	
	public class StartCommand extends SimpleCommand
	{
		override public function execute(notification:INotification):void 
		{
			var rootSprite:Sprite = notification.getBody() as Sprite;
				facade.registerMediator(new RootMediator (rootSprite));
				loadResurs ();
		}
		private function loadResurs ():void
		{
			var loader:Loader = new Loader();
			loader.contentLoaderInfo.addEventListener(Event.COMPLETE, onLoad);
			var urlRequest:URLRequest = new URLRequest ('../res/objects.swf');
			loader.load(urlRequest);
		}
		protected function onLoad (event:Event):void
		{
		var loaderInfo:LoaderInfo = event.target as LoaderInfo;
		loaderInfo.removeEventListener(Event.COMPLETE, onLoad);
		Warehouse.getInstanse().setData(loaderInfo);
		facade.registerMediator(new StartMediator());
		}
	}
}