package com.as3gl.reg 
{
	import com.as3gl.sampler.ISampler;
	/**
	 * ...
	 * @author Gary Paluk - http://www.plugin.io
	 */
	public class FTSamplerRegister extends SamplerRegister implements ISamplerRegister 
	{
		
		public function FTSamplerRegister( index:uint, sampler:ISampler = null ) 
		{
			super( RegType.FT,  index, sampler );
		}
		
	}

}