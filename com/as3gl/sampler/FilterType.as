package com.as3gl.sampler 
{
	/**
	 * ...
	 * @author Gary Paluk - http://www.plugin.io
	 */
	public class FilterType 
	{
		
		public static const NEAREST:FilterType = new FilterType( "nearest", 0 );
		public static const LINEAR:FilterType = new FilterType( "linear", 1 );
		
		private var _type:String;
		private var _index:uint;
		public function FilterType( type:String, index:uint ) 
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