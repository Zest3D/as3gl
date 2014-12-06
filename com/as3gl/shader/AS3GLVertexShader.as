package com.as3gl.shader 
{
	import com.as3gl.data.ITuple;
	import com.as3gl.data.Tuple;
	import com.as3gl.data.types.mat44;
	import com.as3gl.data.types.vec2;
	import com.as3gl.data.types.vec3;
	import com.as3gl.data.types.vec4;
	import com.as3gl.op.AddOp;
	import com.as3gl.op.DivOp;
	import com.as3gl.op.MovOp;
	import com.as3gl.op.Operation;
	import com.as3gl.op.SubOp;
	import com.as3gl.reg.IDataRegister;
	import com.as3gl.reg.IRegister;
	import com.as3gl.reg.OPRegister;
	import com.as3gl.reg.Register;
	import com.as3gl.reg.RegType;
	import com.as3gl.reg.VARegister;
	import com.as3gl.reg.VCRegister;
	import com.as3gl.reg.VRegister;
	import com.as3gl.reg.VTRegister;
	import flash.utils.Dictionary;
	/**
	 * ...
	 * @author Gary Paluk - http://www.plugin.io
	 */
	public class AS3GLVertexShader extends AS3GLShader
	{
		
		private var _uniformMap:Dictionary;
		private var _uniformPointer:uint;
		
		private var _tempMap:Dictionary;
		private var _tempPointer:uint;
		
		private var _outputMap:Dictionary;
		private var _outputPointer:uint; // not used
		
		private var _attributeMap:Dictionary;
		private var _attributePointer:uint;
		
		private var _outputRegister:IRegister;
		
		public function AS3GLVertexShader() 
		{
			super( ShaderType.VERTEX );
			
			_uniformMap = new Dictionary();
			_uniformPointer = 0;
			
			_tempMap = new Dictionary();
			_tempPointer = 0;
			
			_outputMap = new Dictionary();
			_outputPointer = 0;
			
			_attributeMap = new Dictionary();
			_attributePointer = 0;
		}
		
		public function uniform4( id:String, x:Number = 0, y: Number = 0, z:Number = 0, w:Number = 0 ):vec4
		{
			var vec:vec4 = new vec4( x, y, z, w );
			var vc:VCRegister = new VCRegister( _uniformPointer++, vec, id );
			_uniformMap[ vec ] = vc;
			
			return vec;
		}
		
		public function uniform44( id:String, m00:Number = 0, m01:Number = 0, m02:Number = 0, m03:Number = 0,
											  m10:Number = 0, m11:Number = 0, m12:Number = 0, m13:Number = 0,
											  m20:Number = 0, m21:Number = 0, m22:Number = 0, m23:Number = 0,
											  m30:Number = 0, m31:Number = 0, m32:Number = 0, m33:Number = 0 ):mat44
		{
			var mat:mat44 = new mat44( m00, m01, m02, m03,
									   m10, m11, m12, m13,
									   m20, m21, m22, m23,
									   m30, m31, m32, m33 );
			var vc:VCRegister = new VCRegister( _uniformPointer, mat, id );
			_uniformPointer += 4;
			_uniformMap[ mat ] = vc;
			
			return mat;
		}
		
		public function attribute2():vec2
		{
			var vec:vec2 = new vec2( 0, 0 );
			var va:VARegister = new VARegister( _attributePointer );
			_attributePointer++;
			_attributeMap[ vec ] = va;
			
			return vec;
		}
		
		public function attribute3():vec3
		{
			var vec:vec3 = new vec3( 0, 0, 0 );
			var va:VARegister = new VARegister( _attributePointer );
			_attributePointer++;
			_attributeMap[ vec ] = va;
			
			return vec;
		}
		
		public function attribute4( ):vec4
		{
			var vec:vec4 = new vec4( 0, 0, 0, 0 );
			var va:VARegister = new VARegister( _attributePointer );
			_attributePointer++;
			_attributeMap[ vec ] = va;
			
			return vec;
		}
		
		public function get attributeList():Array
		{
			var arr:Array = [];
			for each ( var i:VARegister in _attributeMap )
			{
				arr[ i.index ] = Tuple( i.data ).data;
			}
			
			return arr;
		}
		
		public function temp4( x:Number = 0, y:Number = 0, z:Number = 0, w:Number = 0 ):vec4
		{
			var vec:vec4 = new vec4( x, y, z, w );
			var vt:VTRegister = new VTRegister( _tempPointer, vec );
			_tempPointer++;
			_tempMap[ vec ] = vt;
			
			return vec;
		}
		
		/*
		// helpers
		public function getUniformPositionByID( id:String ):uint
		{
			return VCRegister( _uniformMap[id] ).index;
		}
		
		public function getUniformByID( id:String ):ITuple
		{
			return VCRegister( _uniformMap[id] ).data;
		}
		
		public function getUniformRegisterByID( id:String ):IRegister
		{
			return VCRegister( _uniformMap[id] );
		}
		*/
		
		public function getDataRegisterByTuple( t:ITuple ):IDataRegister
		{
			if ( _uniformMap[ t ] )
			{
				return _uniformMap[ t ];
			}
			if ( _tempMap[ t ] )
			{
				return _tempMap[ t ];
			}
			if ( _attributeMap[ t ] )
			{
				return _attributeMap[ t ];
			}
			throw new Error( "Cannot map tuple as not registered." );
		}
		
		// operations // POSSIBLE MOVE TO BASE CLASS
		public function add( lhs:ITuple, rhs:ITuple ):ITuple
		{
			var lhsReg:IDataRegister =  allocateDataRegister( getDataRegisterByTuple(lhs) );
			var rhsReg:IDataRegister = allocateDataRegister( getDataRegisterByTuple(rhs) );
			
			var t:vec4 = temp4(); // TODO check types and act accordingly
			var dest:IDataRegister = allocateDataRegister( getDataRegisterByTuple(t) );
			
			var op:AddOp = new AddOp( dest, lhsReg, rhsReg );
			_opStack.push( op );
			
			return t;
		}
		
		public function sub( lhs:ITuple, rhs:ITuple ):ITuple
		{
			var lhsReg:IRegister =  allocateDataRegister( getDataRegisterByTuple(lhs) );
			var rhsReg:IRegister = allocateDataRegister( getDataRegisterByTuple(rhs) );
			
			var t:vec4 = temp4(); // TODO check types and act accordingly
			var dest:IRegister = allocateDataRegister( getDataRegisterByTuple(t) );
			
			var op:SubOp = new SubOp( dest, lhsReg, rhsReg );
			_opStack.push(op);
			
			return t;
		}
		
		public function div( lhs:ITuple, rhs:ITuple ):ITuple
		{
			var lhsReg:IRegister =  allocateDataRegister( getDataRegisterByTuple(lhs) );
			var rhsReg:IRegister = allocateDataRegister( getDataRegisterByTuple(rhs) );
			
			var t:vec4 = temp4(); // TODO check types and act accordingly
			var dest:IRegister = allocateDataRegister( getDataRegisterByTuple(t) );
			
			var op:DivOp = new DivOp( dest, lhsReg, rhsReg );
			_opStack.push(op);
			
			return t;
		}
		
		/*
		public function mul( lhs:ITuple, rhs:ITuple ):ITuple
		{
			var lhsReg:IRegister =  allocate( getRegisterByTuple(lhs) );
			var rhsReg:IRegister = allocate( getRegisterByTuple(rhs) );
			
		}
		*/
		
		private function allocateDataRegister( reg:IDataRegister ):IDataRegister
		{
			// TODO enforce by type
			if ( _uniformMap[reg] )
			{
				return _uniformMap[reg];
			}
			if ( _tempMap[reg] )
			{
				return _tempMap[reg]
			}
			if ( _outputMap[reg] )
			{
				return _outputMap[reg];
			}
			_tempMap[ reg.data ] = reg;
			return _tempMap[ reg.data ];
		}
		
		public function out( dest:vec4 ):void
		{
			if ( !_outputRegister )
			{
				_outputRegister = new OPRegister( new Tuple([]) );
			}
			
			var destination:IRegister = allocateDataRegister( getDataRegisterByTuple( dest ) );
			
			var op:MovOp = new MovOp( _outputRegister, destination );
			_opStack.push( op );
		}
		
		private function getTupleType(t:ITuple):Class
		{
			switch( t.length )
			{
				case 4:
						return vec4;
					break;
				default:
						throw new Error( 'Unknown tuple type of length ' + t.length );
					break;
			}
		}
		
	}

}