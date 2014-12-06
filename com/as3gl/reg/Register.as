package com.as3gl.reg 
{
	/**
	 * ...
	 * @author Gary Paluk - http://www.plugin.io
	 */
	public class Register implements IRegister 
	{
		private var _type:RegType;
		private var _index:uint;
		private var _name:String;
		
		public function Register( type:RegType, index:uint, name:String = null ) 
		{
			_type = type;
			_index = index;
			_name = name;
		}
		
		public function get type():RegType 
		{
			return _type;
		}
		
		public function get index():uint 
		{
			return _index;
		}
		
		public function get name():String 
		{
			return _name;
		}
		
	}

}