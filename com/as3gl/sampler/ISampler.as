package com.as3gl.sampler 
{
	
	/**
	 * ...
	 * @author Gary Paluk - http://www.plugin.io
	 */
	public interface ISampler 
	{
		function get dimension():DimensionType;
		function get mipmap():MipmapType;
		function get filter():FilterType;
		function get wrap():WrapType;
		function get antialias():AntialiasType;
		function get textureFormat():TextureFormatType;
	}
	
}