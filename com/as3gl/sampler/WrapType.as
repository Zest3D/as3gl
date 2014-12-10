package com.as3gl.sampler 
{
	/**
	 * ...
	 * @author Gary Paluk - http://www.plugin.io
	 */
	public class WrapType
	{
		
		public static const CLAMP:WrapType = new WrapType( "clamp", 0 );
		public static const REPEAT:WrapType = new WrapType( "repeat", 1 );
		public static const WRAP:WrapType = new WrapType( "wrap", 2 );
		
		private var _type:String;
		private var _index:uint;
		public function WrapType( type:String, index:uint ) 
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
		
		public static function get enum():WrapType
		{
			return Vector.<WrapType>([
				CLAMP,
				REPEAT,
				WRAP
			]);
		}
	}

}