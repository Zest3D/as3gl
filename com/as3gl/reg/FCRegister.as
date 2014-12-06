package com.as3gl.reg 
{
	import com.as3gl.data.ITuple;
	/**
	 * ...
	 * @author Gary Paluk - http://www.plugin.io
	 */
	public class FCRegister extends DataRegister implements IDataRegister 
	{
		
		public function FCRegister( index:uint, data:ITuple = null ) 
		{
			super( RegType.FC, index, data );
		}
		
	}

}