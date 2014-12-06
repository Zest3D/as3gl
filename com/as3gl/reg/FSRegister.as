package com.as3gl.reg 
{
	/**
	 * ...
	 * @author Gary Paluk - http://www.plugin.io
	 */
	public class FSRegister extends SamplerRegister implements ISamplerRegister 
	{
		
		public function FSRegister( index:uint, name:String = null ) 
		{
			super( RegType.FS, index, name );
		}
		
	}

}