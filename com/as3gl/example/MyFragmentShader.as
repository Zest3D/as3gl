package com.as3gl.example 
{
	import com.as3gl.data.types.sampler2D;
	import com.as3gl.data.types.vec2;
	import com.as3gl.op.Operation;
	import com.as3gl.reg.ISamplerRegister;
	import com.as3gl.reg.VRegister;
	import com.as3gl.sampler.AntialiasType;
	import com.as3gl.sampler.DimensionType;
	import com.as3gl.sampler.FilterType;
	import com.as3gl.sampler.ISampler;
	import com.as3gl.sampler.MipmapType;
	import com.as3gl.sampler.TextureFormatType;
	import com.as3gl.sampler.WrapType;
	import com.as3gl.shader.AS3GLFragmentShader;
	
	/**
	 * ...
	 * @author Gary Paluk - http://www.plugin.io
	 */
	public class MyFragmentShader extends AS3GLFragmentShader 
	{
		public function MyFragmentShader()
		{
			var tex:sampler2D = uniformSampler2D( 'tex' );
			var uv:VRegister = getVaryingRegisterByID( 'uv' );
			var n:VRegister = getVaryingRegisterByID( 'n' );
			
			var sampler:ISampler = texture( tex, uv );
			
			out( sampler );
			
			traceStack();
		}
		
		private function traceStack():void
		{
			for each ( var i:Operation in opStack )
			{
				trace( i.asm );
			}
		}
		
	}

}