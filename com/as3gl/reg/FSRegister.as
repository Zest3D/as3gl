package com.as3gl.reg 
{
	import com.as3gl.data.ITuple;
	/**
	 * ...
	 * @author Gary Paluk - http://www.plugin.io
	 */
	public class FSRegister extends DataRegister implements IDataRegister 
	{
		
		public function FSRegister( index:uint, data:ITuple = null, name:String = null ) 
		{
			super( RegType.FS, index, data, name );
		}
		
	}

}