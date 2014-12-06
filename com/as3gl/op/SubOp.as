package com.as3gl.op 
{
	import com.as3gl.reg.IRegister;
	import com.as3gl.reg.RegType;
	/**
	 * ...
	 * @author Gary Paluk - http://www.plugin.io
	 */
	public class SubOp extends Operation 
	{
		
		public function SubOp( dest:IRegister, lhs:IRegister, rhs:IRegister ) 
		{
			super( OpType.SUB, dest, [ lhs, rhs ] );
		}
		
		override public function get asm():String
		{
			var d:String = concatRegisterAsm( dest );
			var l:String = concatRegisterAsm( operands[0] );
			var r:String = concatRegisterAsm( operands[1] );
			return "sub " + d + " " + l + " " + r;
		}
		
		private function concatRegisterAsm( r:IRegister ):String
		{
			return RegType( r.type ).code + r.index;
		}
		
	}

}