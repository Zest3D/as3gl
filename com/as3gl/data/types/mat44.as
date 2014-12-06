package com.as3gl.data.types 
{
	import com.as3gl.data.CompactDataManager;
	import com.as3gl.data.ShaderData;
	
	/**
	 * ...
	 * @author Gary Paluk - http://www.plugin.io
	 */
	public class mat44 extends ShaderData 
	{
		
		public function mat44( m00:Number = 0, m01:Number = 0, m02:Number = 0, m03:Number = 0,
							   m10:Number = 0, m11:Number = 0, m12:Number = 0, m13:Number = 0,
							   m20:Number = 0, m21:Number = 0, m22:Number = 0, m23:Number = 0,
							   m30:Number = 0, m31:Number = 0, m32:Number = 0, m33:Number = 0 ) 
		{
			super( [ m00, m01, m02, m03,
					 m10, m11, m12, m13,
					 m20, m21, m22, m23,
					 m30, m31, m32, m33 ],
					 4, 4, CompactDataManager.allocate(this) );
		}
		
	}

}