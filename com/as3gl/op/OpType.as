package com.as3gl.op 
{
	/**
	 * ...
	 * @author Gary Paluk - http://www.plugin.io
	 */
	public class OpType 
	{
		
		public static const ADD:OpType = new OpType( 'add', 0, 'add' );
		public static const SUB:OpType = new OpType( 'sub', 1, 'sub' );
		public static const DIV:OpType = new OpType( 'div', 2, 'div' );
		public static const MOV:OpType = new OpType( 'mov', 3, 'mov' );
		public static const MUL:OpType = new OpType( 'mul', 4, 'mul' );
		public static const MUL44:OpType = new OpType( 'mul44', 5, 'mul44' );
		
		private var _type:String;
		private var _index:uint;
		private var _code:String;
		
		public function OpType( type:String, index:uint, code:String ) 
		{
			_type = type;
			_index = index;
			_code = code;
		}
		
		public function get type():String 
		{
			return _type;
		}
		
		public function get index():uint 
		{
			return _index;
		}
		
	}

}