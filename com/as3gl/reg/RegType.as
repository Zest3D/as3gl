package com.as3gl.reg 
{
	import com.as3gl.shader.ShaderType;
	/**
	 * ...
	 * @author Gary Paluk - http://www.plugin.io
	 */
	public class RegType 
	{
		
		public static const V:RegType = new RegType( RegDataType.VARYING, ShaderType.VERTEX, 1, 'v' );
		public static const VT:RegType = new RegType( RegDataType.TEMP, ShaderType.VERTEX, 0, 'vt' );
		public static const FT:RegType = new RegType( RegDataType.TEMP, ShaderType.FRAGMENT, 2, 'ft' );
		public static const OP:RegType = new RegType( RegDataType.OUT, ShaderType.VERTEX, 3, 'op' );
		public static const OC:RegType = new RegType( RegDataType.OUT, ShaderType.FRAGMENT, 4, 'oc' );
		public static const VC:RegType = new RegType( RegDataType.UNIFORM, ShaderType.FRAGMENT, 5, 'vc' );
		public static const FC:RegType = new RegType( RegDataType.UNIFORM, ShaderType.VERTEX, 6, 'fc' );
		public static const VA:RegType = new RegType( RegDataType.ATTRIBUTE, ShaderType.VERTEX, 7, 'va' );
		public static const FS:RegType = new RegType( RegDataType.SAMPLER, ShaderType.FRAGMENT, 8, 'fs' );
		
		private var _dataType:RegDataType;
		private var _shaderType:ShaderType;
		private var _index:int;
		private var _code:String;
		
		public function RegType( dataType:RegDataType, shaderType:ShaderType, index:uint, code:String ) 
		{
			_dataType = dataType;
			_shaderType = shaderType;
			_index = index;
			_code = code;
		}
		
		public function get dataType():RegDataType 
		{
			return _dataType;
		}
		
		public function get shaderType():ShaderType 
		{
			return _shaderType;
		}
		
		public function get index():int 
		{
			return _index;
		}
		
		public function get code():String 
		{
			return _code;
		}
		
		public function toString():String
		{
			return "[RegType]\r\t" + _dataType + "\r\t" + _shaderType + "\r\tindex: " + _index + "\r\tcode: " + _code;
		}
		
	}

}