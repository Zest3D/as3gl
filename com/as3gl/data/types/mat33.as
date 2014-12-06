package com.as3gl.data.types 
{
	import com.as3gl.data.CompactDataManager;
	import com.as3gl.data.ShaderData;
	
	/**
	 * ...
	 * @author Gary Paluk - http://www.plugin.io
	 */
	public class mat33 extends ShaderData 
	{
		
		public function mat33( m00:Number = 0, m01:Number = 0, m02:Number = 0,
							   m10:Number = 0, m11:Number = 0, m12:Number = 0,
							   m20:Number = 0, m21:Number = 0, m22:Number = 0 )
		{
			super( [ m00, m01, m02,
				     m10, m11, m12,
					 m20, m21, m22 ],
					 3, 3, CompactDataManager.allocate(this)
				);
		}
		
	}

}