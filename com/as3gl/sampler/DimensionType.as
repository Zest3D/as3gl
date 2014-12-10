package com.as3gl.sampler 
{
	/**
	 * ...
	 * @author Gary Paluk - http://www.plugin.io
	 */
	public class DimensionType 
	{
		
		public static const TEXTURE_2D:DimensionType = new DimensionType( "2d", 0 );
		public static const TEXTURE_3D:DimensionType = new DimensionType( "3d", 1 );
		public static const TEXTURE_CUBE:DimensionType = new DimensionType( "cube", 2 );
		public static const TEXTURE_VIDEO:DimensionType = new DimensionType( "video", 3 );
		
		private var _type:String;
		private var _index:uint;
		public function DimensionType( type:String, index:uint ) 
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
		
		public function get enum():Vector.<DimensionType>
		{
			return Vector.<DimensionType>( [ 
				TEXTURE_2D,
				TEXTURE_3D,
				TEXTURE_CUBE,
				TEXTURE_VIDEO
			] );
		}
	}

}