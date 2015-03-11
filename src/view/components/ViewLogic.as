package view.components
{
	import flash.display.MovieClip;
	import flash.events.EventDispatcher;

	public class ViewLogic extends EventDispatcher
	{
		protected var displayObject:MovieClip;
		
		public function ViewLogic(displayObject:MovieClip) 
		{
			this.displayObject = displayObject;
		}
		public function get content ():MovieClip
		{
			return displayObject;
		}
	}
}