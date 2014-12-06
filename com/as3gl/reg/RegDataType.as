package com.as3gl.reg 
{
	/**
	 * ...
	 * @author Gary Paluk - http://www.plugin.io
	 */
	public class RegDataType 
	{
		
		public static const TEMP:RegDataType = new RegDataType( 'temp', 0, 't' );
		public static const OUT:RegDataType = new RegDataType( 'out', 1, 'o' );
		public static const UNIFORM:RegDataType = new RegDataType( 'uniform', 2, 'c' );
		public static const VARYING:RegDataType = new RegDataType( 'varying', 3, 'v' );
		public static const ATTRIBUTE:RegDataType = new RegDataType( 'attribute', 4, 'a' );
		public static const SAMPLER:RegDataType = new RegDataType( 'sampler', 5, 's' );
		
		private var _type:String;
		private var _index:int;
		private var _code:String;
		
		public function RegDataType( type:String, index:int, code:String ) 
		{
			_type = type;
			_index = index;
			_code = code;
		}
		
		public function get type():String 
		{
			return _type;
		}
		
		public function get index():int 
		{
			return _index;
		}
		
		public function get code():String 
		{
			return _code;
		}
		
		public function toString():String
		{
			return "[RegDataType] (type: " + _type + ", index: " + _index +  ", code: " + _code + ")";
		}
		
	}

}