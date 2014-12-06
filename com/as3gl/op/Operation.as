package com.as3gl.op 
{
	import com.as3gl.reg.IRegister;
	/**
	 * ...
	 * @author Gary Paluk - http://www.plugin.io
	 */
	public class Operation 
	{
		
		private var _type:OpType;
		private var _dest:IRegister;
		private var _operands:Array;
		
		public function Operation( type:OpType,  dest:IRegister, operands:Array ) 
		{
			_type = type;
			_dest = dest;
			_operands = operands;
		}
		
		public function get type():OpType 
		{
			return _type;
		}
		
		public function get dest():IRegister
		{
			return _dest;
		}
		
		public function get operands():Array 
		{
			return _operands;
		}
		
		public function get numOperands():uint
		{
			return _operands.length;
		}
		
		public function get asm():String
		{
			// virtual method
			throw new Error( "asm must be overridden." );
		}
		
	}

}