package com.as3gl.reg 
{
	import com.as3gl.data.ITuple;
	import com.as3gl.sampler.ISampler;
	/**
	 * ...
	 * @author Gary Paluk - http://www.plugin.io
	 */
	public class OCRegister extends SamplerRegister implements ISamplerRegister 
	{
		
		public function OCRegister( sampler:ISampler = null ) 
		{
			super( RegType.OC, 0, sampler );
		}
		
	}

}