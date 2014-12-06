package com.as3gl.reg 
{
	import com.as3gl.data.ITuple;
	/**
	 * ...
	 * @author Gary Paluk - http://www.plugin.io
	 */
	public class VRegister extends DataRegister implements IDataRegister 
	{
		
		public function VRegister( index:uint, data:ITuple = null, name:String = null ) 
		{
			super( RegType.V, index, data, name );
		}
		
	}

}