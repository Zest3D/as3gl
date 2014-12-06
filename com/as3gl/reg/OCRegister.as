package com.as3gl.reg 
{
	import com.as3gl.data.ITuple;
	/**
	 * ...
	 * @author Gary Paluk - http://www.plugin.io
	 */
	public class OCRegister extends DataRegister implements IDataRegister 
	{
		
		public function OCRegister( index:uint, data:ITuple = null ) 
		{
			super( RegType.OC, index, data );
		}
		
	}

}