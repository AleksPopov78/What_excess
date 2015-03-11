package view.components
{
	import flash.display.MovieClip;
	import flash.display.SimpleButton;
	
	import org.puremvc.as3.core.View;
	
	import utils.Warehouse;

	public class StartViewLogic extends ViewLogic
	{
//		private var veget1:MovieClip;
//		private var veget2:MovieClip;
//		private var veget3:MovieClip;
//		private var veget4:MovieClip;
//		private var fruit1:MovieClip;
//		private var fruit2:MovieClip;
//		private var fruit3:MovieClip;
//		private var fruit4:MovieClip;
//		private var no_eat:MovieClip;
//		private var anim1:MovieClip;
//		private var anim2:MovieClip;
//		private var anim3:MovieClip;
//		private var anim_home1:MovieClip;
//		private var anim_home2:MovieClip;
//		private var figure1:MovieClip;
//		private var figure2:MovieClip;
//		private var figure3:MovieClip;
//		private var figure4:MovieClip;
//		private var trans1:MovieClip;
//		private var trans2:MovieClip;
//		private var trans3:MovieClip;
//		private var trans4:MovieClip;
//		private var button:SimpleButton;
		
		public function StartViewLogic()
		{
			super(Warehouse.getInstanse().getAsset("lobby"));
			
			
		}
	}
}