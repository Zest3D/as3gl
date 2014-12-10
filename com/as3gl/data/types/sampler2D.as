package com.as3gl.data.types 
{
	import com.as3gl.data.ShaderData;
	import com.as3gl.sampler.AntialiasType;
	import com.as3gl.sampler.DimensionType;
	import com.as3gl.sampler.FilterType;
	import com.as3gl.sampler.ISampler;
	import com.as3gl.sampler.MipmapType;
	import com.as3gl.sampler.TextureFormatType;
	import com.as3gl.sampler.WrapType;
	
	/**
	 * ...
	 * @author Gary Paluk - http://www.plugin.io
	 */
	public class sampler2D implements ISampler
	{
		
		private var _dimension:DimensionType;
		private var _mipmap:MipmapType;
		private var _filter:FilterType;
		private var _wrap:WrapType;
		private var _antialias:AntialiasType;
		private var _textureFormat:TextureFormatType;
		
		public function sampler2D( dimension:DimensionType, mipmap:MipmapType, filter:FilterType, wrap:WrapType, antialias:AntialiasType, format:TextureFormatType ) 
		{
			_dimension = dimension;
			_mipmap = mipmap;
			_filter = filter;
			_wrap = wrap;
			_antialias = antialias;
			_textureFormat = format;
		}
		
		public function get dimension():DimensionType 
		{
			return _dimension;
		}
		
		public function get mipmap():MipmapType 
		{
			return _mipmap;
		}
		
		public function get filter():FilterType 
		{
			return _filter;
		}
		
		public function get wrap():WrapType 
		{
			return _wrap;
		}
		
		public function get antialias():AntialiasType 
		{
			return _antialias;
		}
		
		public function get textureFormat():TextureFormatType 
		{
			return _textureFormat;
		}
		
	}

}