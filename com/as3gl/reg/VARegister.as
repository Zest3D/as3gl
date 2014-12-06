package com.as3gl.reg 
{
	import com.as3gl.data.ITuple;
	/**
	 * ...
	 * @author Gary Paluk - http://www.plugin.io
	 */
	public class VARegister extends DataRegister implements IDataRegister
	{
		
		public function VARegister(index:uint, data:ITuple = null, id:String = null) 
		{
			super( RegType.VA, index, data, name );
		}
		
	}

}