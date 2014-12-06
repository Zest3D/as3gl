package com.as3gl.reg 
{
	/**
	 * ...
	 * @author Gary Paluk - http://www.plugin.io
	 */
	public class SamplerRegister extends Register implements ISamplerRegister 
	{
		
		public function SamplerRegister( type:RegType, index:uint, name:String = null ) 
		{
			super( type, index, name );
		}
		
	}

}