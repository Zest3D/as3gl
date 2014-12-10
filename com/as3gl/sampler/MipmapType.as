package com.as3gl.sampler 
{
	/**
	 * ...
	 * @author Gary Paluk - http://www.plugin.io
	 */
	public class MipmapType 
	{
		
		public static const NEAREST:MipmapType = new MipmapType("mipnearest", 0 );
		public static const LINEAR:MipmapType = new MipmapType("miplinear", 1 );
		public static const NOMIP:MipmapType = new MipmapType("mipnone ", 2);
		
		private var _type:String;
		private var _index:uint;
		public function MipmapType( type:String, index:uint ) 
		{
			_type = type;
			_index = index;
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