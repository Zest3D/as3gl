package com.as3gl.reg 
{
	import com.as3gl.data.ITuple;
	/**
	 * ...
	 * @author Gary Paluk - http://www.plugin.io
	 */
	public class VTRegister extends DataRegister implements IDataRegister 
	{
		
		public function VTRegister( index:uint, data:ITuple = null ) 
		{
			super( RegType.VT, index, data );
		}
		
	}

}