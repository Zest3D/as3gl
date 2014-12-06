package com.as3gl.shader 
{
	/**
	 * ...
	 * @author Gary Paluk - http://www.plugin.io
	 */
	public class ShaderType 
	{
		
		public static const VERTEX:ShaderType = new ShaderType( 'vertex', 0, 'v' );
		public static const FRAGMENT:ShaderType = new ShaderType( 'fragment', 1, 'f' );
		
		private var _type:String;
		private var _index:int;
		private var _code:String;
		
		public function ShaderType( type:String, index:int, code:String ) 
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
			return "[ShaderType] (type: " + _type + ", index: " + _index + ", code: " + _code + ")";
		}
		
	}

}