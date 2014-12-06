package com.as3gl.op 
{
	import com.as3gl.reg.IRegister;
	import com.as3gl.reg.RegType;
	/**
	 * ...
	 * @author Gary Paluk - http://www.plugin.io
	 */
	public class MulOp extends Operation 
	{
		
		public function MulOp( dest:IRegister, lhs:IRegister, rhs:IRegister ) 
		{
			super( OpType.MUL, dest, [lhs, rhs] );
		}
		
		override public function get asm():String
		{
			var d:String = concatRegisterAsm( dest );
			var l:String = concatRegisterAsm( operands[0] );
			var r:String = concatRegisterAsm( operands[1] );
			return "mul " + d + " " + l + " " + r;
		}
		
		private function concatRegisterAsm( r:IRegister ):String
		{
			return RegType( r.type ).code + r.index;
		}
		
	}

}