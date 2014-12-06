package com.as3gl.data.types 
{
	import com.as3gl.data.CompactDataManager;
	import com.as3gl.data.ShaderData;
	
	/**
	 * ...
	 * @author Gary Paluk - http://www.plugin.io
	 */
	public class vec2 extends ShaderData 
	{
		
		public function vec2( x:Number = 0, y:Number = 0 ) 
		{
			super( [x, y], 1, 2, CompactDataManager.allocate(this) );
		}
		
	}

}