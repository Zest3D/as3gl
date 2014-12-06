package com.as3gl
{
	import com.as3gl.data.Tuple;
	import com.as3gl.data.types.vec4;
	import com.as3gl.example.MyFragmentShader;
	import com.as3gl.example.MyVertexShader;
	import com.as3gl.reg.OPRegister;
	import com.as3gl.reg.RegDataType;
	import com.as3gl.reg.Register;
	import com.as3gl.reg.RegType;
	import flash.display.Sprite;
	import flash.events.Event;
	
	/**
	 * ...
	 * @author Gary Paluk - http://www.plugin.io
	 */
	public class Main extends Sprite 
	{
		
		public function Main():void 
		{
			if (stage) init();
			else addEventListener(Event.ADDED_TO_STAGE, init);
		}
		
		private function init(e:Event = null):void 
		{
			removeEventListener(Event.ADDED_TO_STAGE, init);
			// entry point
			
			//var reg:Register = new Register( RegType.FT, 0 );
			
			var vShader:MyVertexShader = new MyVertexShader();
			//var fShader:MyFragmentShader = new MyFragmentShader();
		}
		
	}
	
}