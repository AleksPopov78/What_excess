package utils
{
	import flash.display.LoaderInfo;
	import flash.display.MovieClip;

	public class Warehouse
	{
		static private var instance:Warehouse;		
		private var loaderInfo:LoaderInfo;
		
		static public function getInstanse():Warehouse		
		{
			if (instance == null)
			{
				instance = new Warehouse;
			}
			return instance;
		}
		public function setData(loaderInfo:LoaderInfo):void
		{
			this.loaderInfo = loaderInfo;
		}
		public function getAsset(name:String):MovieClip
		{
			if (loaderInfo.applicationDomain.hasDefinition(name))
			{
				var AssetClass:Class = loaderInfo.applicationDomain.getDefinition(name) as Class;
				var mc:MovieClip = new AssetClass;
				return mc;
			}
			return null;
		}
	}
}