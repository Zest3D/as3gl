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
		
		private static var _varyingMap:Dictionary= new Dictionary();
		private static var _varyingPointer:uint = 0;
		
		public function AS3GLShader(shaderType:ShaderType) 
		{
			_shaderType = shaderType;
			_opStack = new Vector.<Operation>();
			
			//_varyingMap = new Dictionary();
			//_varyingPointer = 0;
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
		
		public function getVaryingRegisterByID( id:String ):VRegister
		{
			for each( var reg:VRegister in _varyingMap )
			{
				if ( reg.name == id )
				{
					return reg;
				}
			}
			throw new Error( "Could not find varying register in varying map with id: " + id + ". Check that the register was assigned in the vertex shader." );
		}
	}

}