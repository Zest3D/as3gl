package com.as3gl.data 
{
	/**
	 * ...
	 * @author Gary Paluk - http://www.plugin.io
	 */
	public class ShaderData extends Tuple implements ICompactData
	{
		
		private var _numRows:uint;
		private var _numColumns:uint;
		private var _offset:uint;
		
		public function ShaderData( data:Array, numRows:uint, numColumns:uint, offset:uint ) 
		{
			super( data );
			
			_numRows = numRows;
			_numColumns = numColumns;
			_offset = offset;
		}
		
		public function get numRows():uint 
		{
			return _numRows;
		}
		
		public function get numColumns():uint 
		{
			return _numColumns;
		}
		
		public function get offset():uint
		{
			return _offset;
		}
		
	}

}