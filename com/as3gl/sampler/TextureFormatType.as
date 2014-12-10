package com.as3gl.sampler 
{
	/**
	 * ...
	 * @author Gary Paluk - http://www.plugin.io
	 */
	public class TextureFormatType 
	{
		
		public static const RGBA8888:TextureFormatType = new TextureFormatType( 'rgba', 0 );
		public static const DXT1:TextureFormatType = new TextureFormatType( 'dxt1', 1 );
		public static const DXT5:TextureFormatType = new TextureFormatType( 'dxt5', 2 );
		public static const PVRTC:TextureFormatType = new TextureFormatType( 'pvrtc', 3 );
		
		private var _type:String;
		private var _index:uint;
		public function TextureFormatType( type:String, index:uint ) 
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