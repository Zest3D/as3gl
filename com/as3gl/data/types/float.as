package com.as3gl.data.types 
{
	import com.as3gl.data.CompactDataManager;
	import com.as3gl.data.ShaderData;
	
	/**
	 * ...
	 * @author Gary Paluk - http://www.plugin.io
	 */
	public class float extends ShaderData 
	{
		
		public function float( n:Number = 0 ) 
		{
			super( [n], CompactDataManager.allocate(this) );
		}
		
	}

}