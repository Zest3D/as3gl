package com.as3gl.op 
{
	import com.as3gl.reg.IRegister;
	import com.as3gl.reg.RegType;
	/**
	 * ...
	 * @author Gary Paluk - http://www.plugin.io
	 */
	public class MovOp extends Operation 
	{
		
		public function MovOp(dest:IRegister, reg:IRegister) 
		{
			super( OpType.MOV, dest, [reg] );
		}
		
		override public function get asm():String
		{
			var d:String = RegType( dest.type ).code;
			var l:String = concatRegisterAsm( operands[0] );
			return "mov " + d + " " + l;
		}
		
		private function concatRegisterAsm( r:IRegister ):String
		{
			return RegType( r.type ).code + r.index;
		}
		
	}

}