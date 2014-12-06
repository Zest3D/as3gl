package com.as3gl.example 
{
	import com.as3gl.data.types.sampler2D;
	import com.as3gl.op.Operation;
	import com.as3gl.shader.AS3GLFragmentShader;
	
	/**
	 * ...
	 * @author Gary Paluk - http://www.plugin.io
	 */
	public class MyFragmentShader extends AS3GLFragmentShader 
	{
		public function MyFragmentShader()
		{
			var u_TexUnit:sampler2D = uniformSampler2D();
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