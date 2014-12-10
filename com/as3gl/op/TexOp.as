package com.as3gl.op 
{
	import com.as3gl.data.types.sampler2D;
	import com.as3gl.data.types.vec2;
	import com.as3gl.reg.FTSamplerRegister;
	import com.as3gl.reg.IRegister;
	import com.as3gl.reg.ISamplerRegister;
	import com.as3gl.reg.RegType;
	import com.as3gl.sampler.ISampler;
	/**
	 * ...
	 * @author Gary Paluk - http://www.plugin.io
	 */
	public class TexOp extends Operation 
	{
		
		public function TexOp( dest:IRegister, sampler:ISamplerRegister, coord:IRegister ) 
		{
			super( OpType.TEX, dest, [ sampler, coord ] );
		}
		
		override public function get asm():String
		{
			var d:String = concatRegisterAsm( dest );
			var l:String = concatRegisterAsm( operands[0] );
			var r:String = concatRegisterAsm( operands[1] );
			
			var reg:FTSamplerRegister = operands[0] as FTSamplerRegister;
			var s:ISampler = reg.sampler;
			
			return "tex " + l + " " + r + " " + d + " <" + s.dimension.type + ", " + s.mipmap.type + ", " + s.filter.type + ", "  + s.wrap.type + ", "  + s.antialias.type + ", " + s.textureFormat.type + ">";
		}
		
		private function concatRegisterAsm( r:IRegister ):String
		{
			return RegType( r.type ).code + r.index;
		}
	}

}