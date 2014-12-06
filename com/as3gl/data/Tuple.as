package com.as3gl.data 
{
	/**
	 * ...
	 * @author Gary Paluk - http://www.plugin.io
	 */
	public class Tuple implements ITuple
	{
		
		private var _data:Array;
		
		public function Tuple(data:Array) 
		{
			_data = data;
		}
		
		public function get data():Array 
		{
			return _data;
		}
		
		public function get length():uint
		{
			return _data.length;
		}
		
	}

}