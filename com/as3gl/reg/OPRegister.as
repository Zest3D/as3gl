package com.as3gl.reg 
{
	import com.as3gl.data.ITuple;
	/**
	 * ...
	 * @author Gary Paluk - http://www.plugin.io
	 */
	public class OPRegister extends DataRegister implements IDataRegister 
	{
		
		public function OPRegister( data:ITuple = null ) 
		{
			super( RegType.OP, 0, data );
		}
		
	}

}