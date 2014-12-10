package com.as3gl.sampler 
{
	/**
	 * ...
	 * @author Gary Paluk - http://www.plugin.io
	 */
	public class AntialiasType 
	{
		
		public static const X0:AntialiasType = new AntialiasType( "x0", 0 );
		public static const X1:AntialiasType = new AntialiasType( "x1", 1 );
		public static const X2:AntialiasType = new AntialiasType( "x2", 2 );
		public static const X4:AntialiasType = new AntialiasType( "x4", 3 );
		public static const X8:AntialiasType = new AntialiasType( "x8", 4 );
		public static const X16:AntialiasType = new AntialiasType( "x16", 5 );
		
		private var _type:String;
		private var _index:uint;
		public function AntialiasType( type:String, index:uint ) 
		{
			_type = type;
			_index = index;
		}
		
		public function get type():String 
		{
			return _type;
		}
		
		public function get index():uint 
		{
			return _index;
		}
		
	}

}