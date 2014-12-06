package com.as3gl.reg 
{
	import com.as3gl.data.ITuple;
	/**
	 * ...
	 * @author Gary Paluk - http://www.plugin.io
	 */
	public class FTRegister extends DataRegister implements IDataRegister
	{
		
		public function FTRegister( index:uint, data:ITuple = null ) 
		{
			super( RegType.FT, index, data );
		}
		
	}

}