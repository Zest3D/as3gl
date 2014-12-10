package com.as3gl.shader 
{
	import com.as3gl.data.types.float;
	import com.as3gl.data.types.sampler2D;
	import com.as3gl.data.types.vec2;
	import com.as3gl.data.types.vec4;
	import com.as3gl.op.MovOp;
	import com.as3gl.op.Operation;
	import com.as3gl.op.TexOp;
	import com.as3gl.reg.FCRegister;
	import com.as3gl.reg.FSRegister;
	import com.as3gl.reg.FSSamplerRegister;
	import com.as3gl.reg.FTRegister;
	import com.as3gl.reg.FTSamplerRegister;
	import com.as3gl.reg.IRegister;
	import com.as3gl.reg.ISamplerRegister;
	import com.as3gl.reg.OCRegister;
	import com.as3gl.sampler.AntialiasType;
	import com.as3gl.sampler.DimensionType;
	import com.as3gl.sampler.FilterType;
	import com.as3gl.sampler.ISampler;
	import com.as3gl.sampler.MipmapType;
	import com.as3gl.sampler.TextureFormatType;
	import com.as3gl.sampler.WrapType;
	import flash.utils.Dictionary;
	
	/**
	 * ...
	 * @author Gary Paluk - http://www.plugin.io
	 */
	public class AS3GLFragmentShader extends AS3GLShader
	{
		private var _samplerMap:Dictionary;
		private var _samplerPointer:uint;
		
		private var _tempMap:Dictionary;
		private var _tempPointer:uint;
		
		private var _outputRegister:OCRegister; //TODO make this a map for MRT
		
		public function AS3GLFragmentShader() 
		{
			super( ShaderType.FRAGMENT );
			
			_samplerMap = new Dictionary();
			_samplerPointer = 0;
			
			_tempMap = new Dictionary();
			_tempPointer = 0;
		}
		
		protected function uniformSampler2D( id:String,
											 mipmap:MipmapType = null,
											 filter:FilterType = null,
											 wrap:WrapType = null,
											 antialias:AntialiasType = null,
											 format:TextureFormatType = null
											 ):sampler2D
		{
			
			mipmap 		||= MipmapType.NOMIP;
			filter 		||= FilterType.LINEAR;
			wrap 		||= WrapType.REPEAT;
			antialias 	||= AntialiasType.X0;
			format 		||= TextureFormatType.RGBA8888;
			
			var sampler:sampler2D = new sampler2D( DimensionType.TEXTURE_2D, mipmap, filter, wrap, antialias, format );
			
			var fs:FSSamplerRegister = new FSSamplerRegister( _samplerPointer, sampler, id );
			_samplerPointer++;
			_samplerMap[ sampler ] = fs;
			
			return sampler;
		}
		
		public function texture( sampler:sampler2D, coord:IRegister ):ISampler
		{
			var temp:sampler2D = tempSampler2D(); // TODO check types and act accordingly
			var lhsReg:ISamplerRegister =  allocateSamplerRegister( getSamplerRegisterBySampler(temp) );
			var dest:ISamplerRegister = allocateSamplerRegister( getSamplerRegisterBySampler(sampler) );
			
			var op:TexOp = new TexOp( dest, lhsReg, coord );
			_opStack.push(op);
			
			return temp;
		}
		
		public function out( dest:ISampler ):void
		{
			if ( !_outputRegister )
			{
				_outputRegister = new OCRegister( new sampler2D( DimensionType.TEXTURE_2D, MipmapType.NOMIP, FilterType.LINEAR,WrapType.REPEAT, AntialiasType.X0, TextureFormatType.RGBA8888 ) );
			}
			
			var destination:IRegister = allocateSamplerRegister( getSamplerRegisterBySampler( dest ) );
			
			var op:MovOp = new MovOp( _outputRegister, destination );
			_opStack.push( op );
		}
		
		public function tempSampler2D():sampler2D
		{
			var sampler:sampler2D = new sampler2D(DimensionType.TEXTURE_2D, MipmapType.LINEAR, FilterType.LINEAR, WrapType.CLAMP, AntialiasType.X2, TextureFormatType.RGBA8888 );
			var ft:FTSamplerRegister = new FTSamplerRegister( _tempPointer, sampler );
			_tempPointer++;
			_tempMap[ sampler ] = ft;
			
			return sampler;
		}
		
		public function getSamplerRegisterBySampler( sampler:ISampler ):ISamplerRegister
		{
			if ( _tempMap[ sampler ] )
			{
				return _tempMap[ sampler ];
			}
			if ( _samplerMap[sampler] )
			{
				return _samplerMap[sampler];
			}
			throw new Error( "Cannot map sampler as not registered." );
		}
		
		private function allocateSamplerRegister( reg:ISamplerRegister ):ISamplerRegister
		{
			// TODO enforce by type
			if ( _tempMap[reg] )
			{
				return _tempMap[reg]
			}
			if ( _samplerMap[reg] )
			{
				return _samplerMap[reg];
			}
			_tempMap[reg.sampler] = reg;
			return _tempMap[reg.sampler];
		}
		
	}

}