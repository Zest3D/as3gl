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
		public static const MUL43:OpType = new OpType( 'mul43', 6, 'mul43' );
		public static const MUL34:OpType = new OpType( 'mul34', 7, 'mul34' );
		public static const MUL33:OpType = new OpType( 'mul33', 8, 'mul33' );
		public static const TEX:OpType = new OpType( 'tex', 9, 'tex' );
		
		
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
		
		public function get code():String 
		{
			return _code;
		}
		
	}

}