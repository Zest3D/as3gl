package com.as3gl.reg 
{
	import com.as3gl.sampler.ISampler;
	/**
	 * ...
	 * @author Gary Paluk - http://www.plugin.io
	 */
	public class FSSamplerRegister extends SamplerRegister implements ISamplerRegister 
	{
		
		public function FSSamplerRegister(index:uint, sampler:ISampler, name:String = null) 
		{
			super( RegType.FS, index, sampler, name );
		}
		
	}

}