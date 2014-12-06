package com.as3gl.reg 
{
	import com.as3gl.data.ITuple;
	
	/**
	 * ...
	 * @author Gary Paluk - http://www.plugin.io
	 */
	public interface IRegister 
	{
		function get type():RegType;
		function get index():uint;
		function get name():String;
	}
	
}