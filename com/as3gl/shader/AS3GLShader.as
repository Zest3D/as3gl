package com.as3gl.shader 
{
	import com.as3gl.AS3GL;
	import com.as3gl.data.types.vec2;
	import com.as3gl.data.types.vec3;
	import com.as3gl.data.types.vec4;
	import com.as3gl.op.Operation;
	import com.as3gl.reg.VRegister;
	import flash.utils.Dictionary;
	/**
	 * ...
	 * @author Gary Paluk - http://www.plugin.io
	 */
	public class AS3GLShader 
	{
		
		protected var _opStack:Vector.<Operation>;
		
		private var _shaderType:ShaderType;
		
		private var _varyingMap:Dictionary;
		private var _varyingPointer:uint;
		
		public function AS3GLShader(shaderType:ShaderType) 
		{
			_shaderType = shaderType;
			_opStack = new Vector.<Operation>();
			
			_varyingMap = new Dictionary();
			_varyingPointer = 0;
		}
		
		public function get shaderType():ShaderType 
		{
			return _shaderType;
		}
		
		public function get opStack():Vector.<Operation> 
		{
			return _opStack;
		}
		
		
		public function varying2( id:String ):vec2
		{
			var vec:vec2 = new vec2( 0, 0 );
			var vc:VRegister = new VRegister( _varyingPointer, vec, id );
			_varyingPointer++;
			_varyingMap[ vec ] = vc;
			
			return vec;
		}
		
		public function varying3( id:String ):vec3
		{
			var vec:vec3 = new vec3( 0, 0, 0 );
			var vc:VRegister = new VRegister( _varyingPointer, vec, id );
			_varyingPointer++;
			_varyingMap[ vec ] = vc;
			
			return vec;
		}
		
		public function varying4( id:String ):vec4
		{
			var vec:vec4 = new vec4( 0, 0, 0, 0 );
			var vc:VRegister = new VRegister( _varyingPointer, vec, id );
			_varyingPointer++;
			_varyingMap[ vec ] = vc;
			
			return vec;
		}
		
		
	}

}