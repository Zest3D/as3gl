package com.as3gl.reg 
{
	import com.as3gl.data.ITuple;
	
	/**
	 * ...
	 * @author Gary Paluk - http://www.plugin.io
	 */
	public interface IDataRegister extends IRegister
	{
		function get data():ITuple;
	}
	
}