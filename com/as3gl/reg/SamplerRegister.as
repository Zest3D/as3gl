package com.as3gl.reg 
{
	import com.as3gl.sampler.ISampler;
	/**
	 * ...
	 * @author Gary Paluk - http://www.plugin.io
	 */
	public class SamplerRegister extends Register implements ISamplerRegister 
	{
		
		private var _sampler:ISampler;
		
		public function SamplerRegister( type:RegType, index:uint, sampler:ISampler = null, name:String = null ) 
		{
			super( type, index, name );
			_sampler = sampler;
		}
		
		public function get sampler():ISampler 
		{
			return _sampler;
		}
		
	}

}