package com.as3gl.data.types 
{
	import com.as3gl.data.CompactDataManager;
	import com.as3gl.data.ShaderData;
	
	/**
	 * ...
	 * @author Gary Paluk - http://www.plugin.io
	 */
	public class vec3 extends ShaderData 
	{
		
		public function vec3( x:Number = 0, y:Number = 0, z:Number = 0) 
		{
			super( [x, y, z], 1, 3, CompactDataManager.allocate(this) );
		}
		
	}

}