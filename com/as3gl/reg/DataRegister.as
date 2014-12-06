package com.as3gl.reg 
{
	import com.as3gl.data.ITuple;
	import com.as3gl.data.Tuple;
	/**
	 * ...
	 * @author Gary Paluk - http://www.plugin.io
	 */
	public class DataRegister extends Register
	{
		
		private var _data:ITuple;
		private var _numSlots:uint; // TODO slots
		
		public function DataRegister( type:RegType, index:uint, data:ITuple = null, name:String = null ) 
		{
			super( type, index, name );
			
			// each register contains four floating point values
			_data = new Tuple( [ 0, 0, 0, 0 ] );
			
			if ( data )
			{
				var i:int = 0;
				while ( i < data.length )
				{
					_data.data[i] = data.data[i];
					i++;
				}
			}
		}
		
		public function get data():ITuple 
		{
			return _data;
		}
		
		public function set data(value:ITuple):void 
		{
			_data = value;
		}
		
	}

}