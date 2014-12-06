package com.as3gl.shader 
{
	import com.as3gl.data.types.sampler2D;
	import com.as3gl.op.Operation;
	import com.as3gl.reg.FCRegister;
	import com.as3gl.reg.FSRegister;
	import com.as3gl.reg.IRegister;
	import flash.utils.Dictionary;
	
	/**
	 * ...
	 * @author Gary Paluk - http://www.plugin.io
	 */
	public class AS3GLFragmentShader extends AS3GLShader
	{
		private var _samplerMap:Dictionary;
		private var _samplerPointer:uint;
		
		private var _outputRegister:IRegister; //TODO make this a map for MRT
		
		public function AS3GLFragmentShader() 
		{
			super( ShaderType.FRAGMENT );
			
			_samplerMap = new Dictionary();
			_samplerPointer = 0;
		}
		
		protected function uniformSampler2D( id:String ):sampler2D
		{
			var sampler:sampler2D = new sampler2D();
			
			var fs:FSRegister = new FSRegister( _samplerPointer, id );
			_samplerPointer++;
			_samplerMap[ sampler ] = fs;
			
			return sampler;
		}
		
	}

}