package com.as3gl.reg 
{
	import com.as3gl.data.ITuple;
	/**
	 * ...
	 * @author Gary Paluk - http://www.plugin.io
	 */
	public class VCRegister extends DataRegister implements IDataRegister 
	{
		
		public function VCRegister( index:uint, data:ITuple = null, name:String = null ) 
		{
			super( RegType.VC, index, data, name );
		}
		
	}

}