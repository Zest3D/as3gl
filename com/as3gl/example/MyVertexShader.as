package com.as3gl.example 
{
	import com.as3gl.data.types.mat44;
	import com.as3gl.data.types.sampler2D;
	import com.as3gl.data.types.vec2;
	import com.as3gl.data.types.vec3;
	import com.as3gl.data.types.vec4;
	import com.as3gl.op.Operation;
	import com.as3gl.shader.AS3GLVertexShader;
	
	/**
	 * ...
	 * @author Gary Paluk - http://www.plugin.io
	 */
	public class MyVertexShader extends AS3GLVertexShader 
	{
		
		public function MyVertexShader() 
		{
			var position:vec3 = attribute3();
			var normal:vec3 = attribute3();
			var uv1:vec2 = attribute2();
			var tangent:vec4 = attribute4();
			
			var uv:vec2 = varying2( 'uv' );
			var n:vec3 = varying3( 'n' );
			
			var mv:mat44 = uniform44( 'mv' );
			var mvProj:mat44 = uniform44( 'mvProj' );
			
			var uni0:vec4 = uniform4( 'uni0' );
			var uni1:vec4 = uniform4( 'uni1' );
			var uni2:vec4 = uniform4( 'uni2', 1, 2, 0, 0 );
			
			var t0:vec4 = vec4( add( uni0, add( uni0, uni1 )) ); //chain
			var t1:vec4 = vec4( add( t0, uni2 ) );
			var t2:vec4 = vec4( div( t0, t1 ) );
			var t3:vec4 = vec4( sub( tangent, t2 ) );
			
			out( t3 );
			
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