package com.as3gl.data.types 
{
	import com.as3gl.data.CompactDataManager;
	import com.as3gl.data.ShaderData;
	
	/**
	 * ...
	 * @author Gary Paluk - http://www.plugin.io
	 */
	public class vec4 extends ShaderData 
	{
		
		public function vec4( x:Number = 0, y:Number = 0, z:Number = 0, w:Number = 0 ) 
		{
			super( [ x, y, z, w ], 1, 4, CompactDataManager.allocate(this) );
		}
		
		public function get x():Number
		{
			return data[0];
		}
		
		public function set x(value:Number):void
		{
			data[0] = value;
		}
		
		public function get y():Number
		{
			return data[1];
		}
		
		public function set y(value:Number):void
		{
			data[1] = value;
		}
		
		public function get z():Number
		{
			return data[2];
		}
		
		public function set z(value:Number):void
		{
			data[2] = value;
		}
		
		public function get w():Number
		{
			return data[3];
		}
		
		public function set w(value:Number):void
		{
			data[3] = value;
		}
		
		public function toString():String
		{
			return "[x:"  + x + ", y:" + y +  ", z: " + z +  ", w:" + w + "]";
		}
	}

}