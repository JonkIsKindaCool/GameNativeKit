package bindings.glad;

import cpp.UInt16;
import cpp.Int8;
import cpp.Float32;
import haxe.Int32;
import cpp.UInt32;
import cpp.Float64;
import cpp.Char;
import cpp.Pointer;
import cpp.Int64;
import cpp.UInt64;
import cpp.ConstCharStar;
import cpp.SizeT;

typedef GLenum = UInt32;
typedef GLboolean = UInt32;
typedef GLbitfield = UInt32;
typedef GLvoid = Void;
typedef GLbyte = Int8;
typedef GLubyte = Int8;
typedef GLshort = Int32;
typedef GLushort = UInt32;
typedef GLint = Int32;
typedef GLuint = UInt32;
typedef GLclampx = Int32;
typedef GLsizei = Int32;
typedef GLfloat = Float32;
typedef GLclampf = Float32;
typedef GLdouble = Float64;
typedef GLclampd = Float64;
typedef GLeglClientBufferEXT = Pointer<Void>;
typedef GLeglImageOES = Pointer<Void>;
typedef GLchar = Char;
typedef GLcharARB = Char;

typedef GLsizeiptr = Int64;
typedef GLintptr = Int64;
typedef GLint64 = Int64;
typedef GLuint64 = UInt64;
typedef GLsync = Pointer<Void>;
typedef GLhalf = UInt16;

typedef GladLoadProc = (name:ConstCharStar) -> Void;

@:include("vendor/include/glad/glad.h")
@:buildXml("<include name=\"${haxelib:GameNativeKit}/include_glad.xml\"/>")
extern class Glad {
	public static inline var DEPTH_BUFFER_BIT:Int = 0x00000100;
	public static inline var STENCIL_BUFFER_BIT:Int = 0x00000400;
	public static inline var COLOR_BUFFER_BIT:Int = 0x00004000;
	public static inline var FALSE:Int = 0;
	public static inline var TRUE:Int = 1;
	public static inline var POINTS:Int = 0x0000;
	public static inline var LINES:Int = 0x0001;
	public static inline var LINE_LOOP:Int = 0x0002;
	public static inline var LINE_STRIP:Int = 0x0003;
	public static inline var TRIANGLES:Int = 0x0004;
	public static inline var TRIANGLE_STRIP:Int = 0x0005;
	public static inline var TRIANGLE_FAN:Int = 0x0006;
	public static inline var NEVER:Int = 0x0200;
	public static inline var LESS:Int = 0x0201;
	public static inline var EQUAL:Int = 0x0202;
	public static inline var LEQUAL:Int = 0x0203;
	public static inline var GREATER:Int = 0x0204;
	public static inline var NOTEQUAL:Int = 0x0205;
	public static inline var GEQUAL:Int = 0x0206;
	public static inline var ALWAYS:Int = 0x0207;
	public static inline var ZERO:Int = 0;
	public static inline var ONE:Int = 1;
	public static inline var SRC_COLOR:Int = 0x0300;
	public static inline var ONE_MINUS_SRC_COLOR:Int = 0x0301;
	public static inline var SRC_ALPHA:Int = 0x0302;
	public static inline var ONE_MINUS_SRC_ALPHA:Int = 0x0303;
	public static inline var DST_ALPHA:Int = 0x0304;
	public static inline var ONE_MINUS_DST_ALPHA:Int = 0x0305;
	public static inline var DST_COLOR:Int = 0x0306;
	public static inline var ONE_MINUS_DST_COLOR:Int = 0x0307;
	public static inline var SRC_ALPHA_SATURATE:Int = 0x0308;
	public static inline var NONE:Int = 0;
	public static inline var FRONT_LEFT:Int = 0x0400;
	public static inline var FRONT_RIGHT:Int = 0x0401;
	public static inline var BACK_LEFT:Int = 0x0402;
	public static inline var BACK_RIGHT:Int = 0x0403;
	public static inline var FRONT:Int = 0x0404;
	public static inline var BACK:Int = 0x0405;
	public static inline var LEFT:Int = 0x0406;
	public static inline var RIGHT:Int = 0x0407;
	public static inline var FRONT_AND_BACK:Int = 0x0408;
	public static inline var NO_ERROR:Int = 0;
	public static inline var INVALID_ENUM:Int = 0x0500;
	public static inline var INVALID_VALUE:Int = 0x0501;
	public static inline var INVALID_OPERATION:Int = 0x0502;
	public static inline var OUT_OF_MEMORY:Int = 0x0505;
	public static inline var CW:Int = 0x0900;
	public static inline var CCW:Int = 0x0901;
	public static inline var POINT_SIZE:Int = 0x0B11;
	public static inline var POINT_SIZE_RANGE:Int = 0x0B12;
	public static inline var POINT_SIZE_GRANULARITY:Int = 0x0B13;
	public static inline var LINE_SMOOTH:Int = 0x0B20;
	public static inline var LINE_WIDTH:Int = 0x0B21;
	public static inline var LINE_WIDTH_RANGE:Int = 0x0B22;
	public static inline var LINE_WIDTH_GRANULARITY:Int = 0x0B23;
	public static inline var POLYGON_MODE:Int = 0x0B40;
	public static inline var POLYGON_SMOOTH:Int = 0x0B41;
	public static inline var CULL_FACE:Int = 0x0B44;
	public static inline var CULL_FACE_MODE:Int = 0x0B45;
	public static inline var FRONT_FACE:Int = 0x0B46;
	public static inline var DEPTH_RANGE:Int = 0x0B70;
	public static inline var DEPTH_TEST:Int = 0x0B71;
	public static inline var DEPTH_WRITEMASK:Int = 0x0B72;
	public static inline var DEPTH_CLEAR_VALUE:Int = 0x0B73;
	public static inline var DEPTH_FUNC:Int = 0x0B74;
	public static inline var STENCIL_TEST:Int = 0x0B90;
	public static inline var STENCIL_CLEAR_VALUE:Int = 0x0B91;
	public static inline var STENCIL_FUNC:Int = 0x0B92;
	public static inline var STENCIL_VALUE_MASK:Int = 0x0B93;
	public static inline var STENCIL_FAIL:Int = 0x0B94;
	public static inline var STENCIL_PASS_DEPTH_FAIL:Int = 0x0B95;
	public static inline var STENCIL_PASS_DEPTH_PASS:Int = 0x0B96;
	public static inline var STENCIL_REF:Int = 0x0B97;
	public static inline var STENCIL_WRITEMASK:Int = 0x0B98;
	public static inline var VIEWPORT:Int = 0x0BA2;
	public static inline var DITHER:Int = 0x0BD0;
	public static inline var BLEND_DST:Int = 0x0BE0;
	public static inline var BLEND_SRC:Int = 0x0BE1;
	public static inline var BLEND:Int = 0x0BE2;
	public static inline var LOGIC_OP_MODE:Int = 0x0BF0;
	public static inline var DRAW_BUFFER:Int = 0x0C01;
	public static inline var READ_BUFFER:Int = 0x0C02;
	public static inline var SCISSOR_BOX:Int = 0x0C10;
	public static inline var SCISSOR_TEST:Int = 0x0C11;
	public static inline var COLOR_CLEAR_VALUE:Int = 0x0C22;
	public static inline var COLOR_WRITEMASK:Int = 0x0C23;
	public static inline var DOUBLEBUFFER:Int = 0x0C32;
	public static inline var STEREO:Int = 0x0C33;
	public static inline var LINE_SMOOTH_HINT:Int = 0x0C52;
	public static inline var POLYGON_SMOOTH_HINT:Int = 0x0C53;
	public static inline var UNPACK_SWAP_BYTES:Int = 0x0CF0;
	public static inline var UNPACK_LSB_FIRST:Int = 0x0CF1;
	public static inline var UNPACK_ROW_LENGTH:Int = 0x0CF2;
	public static inline var UNPACK_SKIP_ROWS:Int = 0x0CF3;
	public static inline var UNPACK_SKIP_PIXELS:Int = 0x0CF4;
	public static inline var UNPACK_ALIGNMENT:Int = 0x0CF5;
	public static inline var PACK_SWAP_BYTES:Int = 0x0D00;
	public static inline var PACK_LSB_FIRST:Int = 0x0D01;
	public static inline var PACK_ROW_LENGTH:Int = 0x0D02;
	public static inline var PACK_SKIP_ROWS:Int = 0x0D03;
	public static inline var PACK_SKIP_PIXELS:Int = 0x0D04;
	public static inline var PACK_ALIGNMENT:Int = 0x0D05;
	public static inline var MAX_TEXTURE_SIZE:Int = 0x0D33;
	public static inline var MAX_VIEWPORT_DIMS:Int = 0x0D3A;
	public static inline var SUBPIXEL_BITS:Int = 0x0D50;
	public static inline var TEXTURE_1D:Int = 0x0DE0;
	public static inline var TEXTURE_2D:Int = 0x0DE1;
	public static inline var TEXTURE_WIDTH:Int = 0x1000;
	public static inline var TEXTURE_HEIGHT:Int = 0x1001;
	public static inline var TEXTURE_BORDER_COLOR:Int = 0x1004;
	public static inline var DONT_CARE:Int = 0x1100;
	public static inline var FASTEST:Int = 0x1101;
	public static inline var NICEST:Int = 0x1102;
	public static inline var BYTE:Int = 0x1400;
	public static inline var UNSIGNED_BYTE:Int = 0x1401;
	public static inline var SHORT:Int = 0x1402;
	public static inline var UNSIGNED_SHORT:Int = 0x1403;
	public static inline var INT:Int = 0x1404;
	public static inline var UNSIGNED_INT:Int = 0x1405;
	public static inline var FLOAT:Int = 0x1406;
	public static inline var CLEAR:Int = 0x1500;
	public static inline var AND:Int = 0x1501;
	public static inline var AND_REVERSE:Int = 0x1502;
	public static inline var COPY:Int = 0x1503;
	public static inline var AND_INVERTED:Int = 0x1504;
	public static inline var NOOP:Int = 0x1505;
	public static inline var XOR:Int = 0x1506;
	public static inline var OR:Int = 0x1507;
	public static inline var NOR:Int = 0x1508;
	public static inline var EQUIV:Int = 0x1509;
	public static inline var INVERT:Int = 0x150A;
	public static inline var OR_REVERSE:Int = 0x150B;
	public static inline var COPY_INVERTED:Int = 0x150C;
	public static inline var OR_INVERTED:Int = 0x150D;
	public static inline var NAND:Int = 0x150E;
	public static inline var SET:Int = 0x150F;
	public static inline var TEXTURE:Int = 0x1702;
	public static inline var COLOR:Int = 0x1800;
	public static inline var DEPTH:Int = 0x1801;
	public static inline var STENCIL:Int = 0x1802;
	public static inline var STENCIL_INDEX:Int = 0x1901;
	public static inline var DEPTH_COMPONENT:Int = 0x1902;
	public static inline var RED:Int = 0x1903;
	public static inline var GREEN:Int = 0x1904;
	public static inline var BLUE:Int = 0x1905;
	public static inline var ALPHA:Int = 0x1906;
	public static inline var RGB:Int = 0x1907;
	public static inline var RGBA:Int = 0x1908;
	public static inline var POINT:Int = 0x1B00;
	public static inline var LINE:Int = 0x1B01;
	public static inline var FILL:Int = 0x1B02;
	public static inline var KEEP:Int = 0x1E00;
	public static inline var REPLACE:Int = 0x1E01;
	public static inline var INCR:Int = 0x1E02;
	public static inline var DECR:Int = 0x1E03;
	public static inline var VENDOR:Int = 0x1F00;
	public static inline var RENDERER:Int = 0x1F01;
	public static inline var VERSION:Int = 0x1F02;
	public static inline var EXTENSIONS:Int = 0x1F03;
	public static inline var NEAREST:Int = 0x2600;
	public static inline var LINEAR:Int = 0x2601;
	public static inline var NEAREST_MIPMAP_NEAREST:Int = 0x2700;
	public static inline var LINEAR_MIPMAP_NEAREST:Int = 0x2701;
	public static inline var NEAREST_MIPMAP_LINEAR:Int = 0x2702;
	public static inline var LINEAR_MIPMAP_LINEAR:Int = 0x2703;
	public static inline var TEXTURE_MAG_FILTER:Int = 0x2800;
	public static inline var TEXTURE_MIN_FILTER:Int = 0x2801;
	public static inline var TEXTURE_WRAP_S:Int = 0x2802;
	public static inline var TEXTURE_WRAP_T:Int = 0x2803;
	public static inline var REPEAT:Int = 0x2901;
	public static inline var COLOR_LOGIC_OP:Int = 0x0BF2;
	public static inline var POLYGON_OFFSET_UNITS:Int = 0x2A00;
	public static inline var POLYGON_OFFSET_POINT:Int = 0x2A01;
	public static inline var POLYGON_OFFSET_LINE:Int = 0x2A02;
	public static inline var POLYGON_OFFSET_FILL:Int = 0x8037;
	public static inline var POLYGON_OFFSET_FACTOR:Int = 0x8038;
	public static inline var TEXTURE_BINDING_1D:Int = 0x8068;
	public static inline var TEXTURE_BINDING_2D:Int = 0x8069;
	public static inline var TEXTURE_INTERNAL_FORMAT:Int = 0x1003;
	public static inline var TEXTURE_RED_SIZE:Int = 0x805C;
	public static inline var TEXTURE_GREEN_SIZE:Int = 0x805D;
	public static inline var TEXTURE_BLUE_SIZE:Int = 0x805E;
	public static inline var TEXTURE_ALPHA_SIZE:Int = 0x805F;
	public static inline var DOUBLE:Int = 0x140A;
	public static inline var PROXY_TEXTURE_1D:Int = 0x8063;
	public static inline var PROXY_TEXTURE_2D:Int = 0x8064;
	public static inline var R3_G3_B2:Int = 0x2A10;
	public static inline var RGB4:Int = 0x804F;
	public static inline var RGB5:Int = 0x8050;
	public static inline var RGB8:Int = 0x8051;
	public static inline var RGB10:Int = 0x8052;
	public static inline var RGB12:Int = 0x8053;
	public static inline var RGB16:Int = 0x8054;
	public static inline var RGBA2:Int = 0x8055;
	public static inline var RGBA4:Int = 0x8056;
	public static inline var RGB5_A1:Int = 0x8057;
	public static inline var RGBA8:Int = 0x8058;
	public static inline var RGB10_A2:Int = 0x8059;
	public static inline var RGBA12:Int = 0x805A;
	public static inline var RGBA16:Int = 0x805B;
	public static inline var UNSIGNED_BYTE_3_3_2:Int = 0x8032;
	public static inline var UNSIGNED_SHORT_4_4_4_4:Int = 0x8033;
	public static inline var UNSIGNED_SHORT_5_5_5_1:Int = 0x8034;
	public static inline var UNSIGNED_INT_8_8_8_8:Int = 0x8035;
	public static inline var UNSIGNED_INT_10_10_10_2:Int = 0x8036;
	public static inline var TEXTURE_BINDING_3D:Int = 0x806A;
	public static inline var PACK_SKIP_IMAGES:Int = 0x806B;
	public static inline var PACK_IMAGE_HEIGHT:Int = 0x806C;
	public static inline var UNPACK_SKIP_IMAGES:Int = 0x806D;
	public static inline var UNPACK_IMAGE_HEIGHT:Int = 0x806E;
	public static inline var TEXTURE_3D:Int = 0x806F;
	public static inline var PROXY_TEXTURE_3D:Int = 0x8070;
	public static inline var TEXTURE_DEPTH:Int = 0x8071;
	public static inline var TEXTURE_WRAP_R:Int = 0x8072;
	public static inline var MAX_3D_TEXTURE_SIZE:Int = 0x8073;
	public static inline var UNSIGNED_BYTE_2_3_3_REV:Int = 0x8362;
	public static inline var UNSIGNED_SHORT_5_6_5:Int = 0x8363;
	public static inline var UNSIGNED_SHORT_5_6_5_REV:Int = 0x8364;
	public static inline var UNSIGNED_SHORT_4_4_4_4_REV:Int = 0x8365;
	public static inline var UNSIGNED_SHORT_1_5_5_5_REV:Int = 0x8366;
	public static inline var UNSIGNED_INT_8_8_8_8_REV:Int = 0x8367;
	public static inline var UNSIGNED_INT_2_10_10_10_REV:Int = 0x8368;
	public static inline var BGR:Int = 0x80E0;
	public static inline var BGRA:Int = 0x80E1;
	public static inline var MAX_ELEMENTS_VERTICES:Int = 0x80E8;
	public static inline var MAX_ELEMENTS_INDICES:Int = 0x80E9;
	public static inline var CLAMP_TO_EDGE:Int = 0x812F;
	public static inline var TEXTURE_MIN_LOD:Int = 0x813A;
	public static inline var TEXTURE_MAX_LOD:Int = 0x813B;
	public static inline var TEXTURE_BASE_LEVEL:Int = 0x813C;
	public static inline var TEXTURE_MAX_LEVEL:Int = 0x813D;
	public static inline var SMOOTH_POINT_SIZE_RANGE:Int = 0x0B12;
	public static inline var SMOOTH_POINT_SIZE_GRANULARITY:Int = 0x0B13;
	public static inline var SMOOTH_LINE_WIDTH_RANGE:Int = 0x0B22;
	public static inline var SMOOTH_LINE_WIDTH_GRANULARITY:Int = 0x0B23;
	public static inline var ALIASED_LINE_WIDTH_RANGE:Int = 0x846E;
	public static inline var TEXTURE0:Int = 0x84C0;
	public static inline var TEXTURE1:Int = 0x84C1;
	public static inline var TEXTURE2:Int = 0x84C2;
	public static inline var TEXTURE3:Int = 0x84C3;
	public static inline var TEXTURE4:Int = 0x84C4;
	public static inline var TEXTURE5:Int = 0x84C5;
	public static inline var TEXTURE6:Int = 0x84C6;
	public static inline var TEXTURE7:Int = 0x84C7;
	public static inline var TEXTURE8:Int = 0x84C8;
	public static inline var TEXTURE9:Int = 0x84C9;
	public static inline var TEXTURE10:Int = 0x84CA;
	public static inline var TEXTURE11:Int = 0x84CB;
	public static inline var TEXTURE12:Int = 0x84CC;
	public static inline var TEXTURE13:Int = 0x84CD;
	public static inline var TEXTURE14:Int = 0x84CE;
	public static inline var TEXTURE15:Int = 0x84CF;
	public static inline var TEXTURE16:Int = 0x84D0;
	public static inline var TEXTURE17:Int = 0x84D1;
	public static inline var TEXTURE18:Int = 0x84D2;
	public static inline var TEXTURE19:Int = 0x84D3;
	public static inline var TEXTURE20:Int = 0x84D4;
	public static inline var TEXTURE21:Int = 0x84D5;
	public static inline var TEXTURE22:Int = 0x84D6;
	public static inline var TEXTURE23:Int = 0x84D7;
	public static inline var TEXTURE24:Int = 0x84D8;
	public static inline var TEXTURE25:Int = 0x84D9;
	public static inline var TEXTURE26:Int = 0x84DA;
	public static inline var TEXTURE27:Int = 0x84DB;
	public static inline var TEXTURE28:Int = 0x84DC;
	public static inline var TEXTURE29:Int = 0x84DD;
	public static inline var TEXTURE30:Int = 0x84DE;
	public static inline var TEXTURE31:Int = 0x84DF;
	public static inline var ACTIVE_TEXTURE:Int = 0x84E0;
	public static inline var MULTISAMPLE:Int = 0x809D;
	public static inline var SAMPLE_ALPHA_TO_COVERAGE:Int = 0x809E;
	public static inline var SAMPLE_ALPHA_TO_ONE:Int = 0x809F;
	public static inline var SAMPLE_COVERAGE:Int = 0x80A0;
	public static inline var SAMPLE_BUFFERS:Int = 0x80A8;
	public static inline var SAMPLES:Int = 0x80A9;
	public static inline var SAMPLE_COVERAGE_VALUE:Int = 0x80AA;
	public static inline var SAMPLE_COVERAGE_INVERT:Int = 0x80AB;
	public static inline var TEXTURE_CUBE_MAP:Int = 0x8513;
	public static inline var TEXTURE_BINDING_CUBE_MAP:Int = 0x8514;
	public static inline var TEXTURE_CUBE_MAP_POSITIVE_X:Int = 0x8515;
	public static inline var TEXTURE_CUBE_MAP_NEGATIVE_X:Int = 0x8516;
	public static inline var TEXTURE_CUBE_MAP_POSITIVE_Y:Int = 0x8517;
	public static inline var TEXTURE_CUBE_MAP_NEGATIVE_Y:Int = 0x8518;
	public static inline var TEXTURE_CUBE_MAP_POSITIVE_Z:Int = 0x8519;
	public static inline var TEXTURE_CUBE_MAP_NEGATIVE_Z:Int = 0x851A;
	public static inline var PROXY_TEXTURE_CUBE_MAP:Int = 0x851B;
	public static inline var MAX_CUBE_MAP_TEXTURE_SIZE:Int = 0x851C;
	public static inline var COMPRESSED_RGB:Int = 0x84ED;
	public static inline var COMPRESSED_RGBA:Int = 0x84EE;
	public static inline var TEXTURE_COMPRESSION_HINT:Int = 0x84EF;
	public static inline var TEXTURE_COMPRESSED_IMAGE_SIZE:Int = 0x86A0;
	public static inline var TEXTURE_COMPRESSED:Int = 0x86A1;
	public static inline var NUM_COMPRESSED_TEXTURE_FORMATS:Int = 0x86A2;
	public static inline var COMPRESSED_TEXTURE_FORMATS:Int = 0x86A3;
	public static inline var CLAMP_TO_BORDER:Int = 0x812D;
	public static inline var BLEND_DST_RGB:Int = 0x80C8;
	public static inline var BLEND_SRC_RGB:Int = 0x80C9;
	public static inline var BLEND_DST_ALPHA:Int = 0x80CA;
	public static inline var BLEND_SRC_ALPHA:Int = 0x80CB;
	public static inline var POINT_FADE_THRESHOLD_SIZE:Int = 0x8128;
	public static inline var DEPTH_COMPONENT16:Int = 0x81A5;
	public static inline var DEPTH_COMPONENT24:Int = 0x81A6;
	public static inline var DEPTH_COMPONENT32:Int = 0x81A7;
	public static inline var MIRRORED_REPEAT:Int = 0x8370;
	public static inline var MAX_TEXTURE_LOD_BIAS:Int = 0x84FD;
	public static inline var TEXTURE_LOD_BIAS:Int = 0x8501;
	public static inline var INCR_WRAP:Int = 0x8507;
	public static inline var DECR_WRAP:Int = 0x8508;
	public static inline var TEXTURE_DEPTH_SIZE:Int = 0x884A;
	public static inline var TEXTURE_COMPARE_MODE:Int = 0x884C;
	public static inline var TEXTURE_COMPARE_FUNC:Int = 0x884D;
	public static inline var BLEND_COLOR:Int = 0x8005;
	public static inline var BLEND_EQUATION:Int = 0x8009;
	public static inline var CONSTANT_COLOR:Int = 0x8001;
	public static inline var ONE_MINUS_CONSTANT_COLOR:Int = 0x8002;
	public static inline var CONSTANT_ALPHA:Int = 0x8003;
	public static inline var ONE_MINUS_CONSTANT_ALPHA:Int = 0x8004;
	public static inline var FUNC_ADD:Int = 0x8006;
	public static inline var FUNC_REVERSE_SUBTRACT:Int = 0x800B;
	public static inline var FUNC_SUBTRACT:Int = 0x800A;
	public static inline var MIN:Int = 0x8007;
	public static inline var MAX:Int = 0x8008;
	public static inline var BUFFER_SIZE:Int = 0x8764;
	public static inline var BUFFER_USAGE:Int = 0x8765;
	public static inline var QUERY_COUNTER_BITS:Int = 0x8864;
	public static inline var CURRENT_QUERY:Int = 0x8865;
	public static inline var QUERY_RESULT:Int = 0x8866;
	public static inline var QUERY_RESULT_AVAILABLE:Int = 0x8867;
	public static inline var ARRAY_BUFFER:Int = 0x8892;
	public static inline var ELEMENT_ARRAY_BUFFER:Int = 0x8893;
	public static inline var ARRAY_BUFFER_BINDING:Int = 0x8894;
	public static inline var ELEMENT_ARRAY_BUFFER_BINDING:Int = 0x8895;
	public static inline var VERTEX_ATTRIB_ARRAY_BUFFER_BINDING:Int = 0x889F;
	public static inline var READ_ONLY:Int = 0x88B8;
	public static inline var WRITE_ONLY:Int = 0x88B9;
	public static inline var READ_WRITE:Int = 0x88BA;
	public static inline var BUFFER_ACCESS:Int = 0x88BB;
	public static inline var BUFFER_MAPPED:Int = 0x88BC;
	public static inline var BUFFER_MAP_POINTER:Int = 0x88BD;
	public static inline var STREAM_DRAW:Int = 0x88E0;
	public static inline var STREAM_READ:Int = 0x88E1;
	public static inline var STREAM_COPY:Int = 0x88E2;
	public static inline var STATIC_DRAW:Int = 0x88E4;
	public static inline var STATIC_READ:Int = 0x88E5;
	public static inline var STATIC_COPY:Int = 0x88E6;
	public static inline var DYNAMIC_DRAW:Int = 0x88E8;
	public static inline var DYNAMIC_READ:Int = 0x88E9;
	public static inline var DYNAMIC_COPY:Int = 0x88EA;
	public static inline var SAMPLES_PASSED:Int = 0x8914;
	public static inline var SRC1_ALPHA:Int = 0x8589;
	public static inline var BLEND_EQUATION_RGB:Int = 0x8009;
	public static inline var VERTEX_ATTRIB_ARRAY_ENABLED:Int = 0x8622;
	public static inline var VERTEX_ATTRIB_ARRAY_SIZE:Int = 0x8623;
	public static inline var VERTEX_ATTRIB_ARRAY_STRIDE:Int = 0x8624;
	public static inline var VERTEX_ATTRIB_ARRAY_TYPE:Int = 0x8625;
	public static inline var CURRENT_VERTEX_ATTRIB:Int = 0x8626;
	public static inline var VERTEX_PROGRAM_POINT_SIZE:Int = 0x8642;
	public static inline var VERTEX_ATTRIB_ARRAY_POINTER:Int = 0x8645;
	public static inline var STENCIL_BACK_FUNC:Int = 0x8800;
	public static inline var STENCIL_BACK_FAIL:Int = 0x8801;
	public static inline var STENCIL_BACK_PASS_DEPTH_FAIL:Int = 0x8802;
	public static inline var STENCIL_BACK_PASS_DEPTH_PASS:Int = 0x8803;
	public static inline var MAX_DRAW_BUFFERS:Int = 0x8824;
	public static inline var DRAW_BUFFER0:Int = 0x8825;
	public static inline var DRAW_BUFFER1:Int = 0x8826;
	public static inline var DRAW_BUFFER2:Int = 0x8827;
	public static inline var DRAW_BUFFER3:Int = 0x8828;
	public static inline var DRAW_BUFFER4:Int = 0x8829;
	public static inline var DRAW_BUFFER5:Int = 0x882A;
	public static inline var DRAW_BUFFER6:Int = 0x882B;
	public static inline var DRAW_BUFFER7:Int = 0x882C;
	public static inline var DRAW_BUFFER8:Int = 0x882D;
	public static inline var DRAW_BUFFER9:Int = 0x882E;
	public static inline var DRAW_BUFFER10:Int = 0x882F;
	public static inline var DRAW_BUFFER11:Int = 0x8830;
	public static inline var DRAW_BUFFER12:Int = 0x8831;
	public static inline var DRAW_BUFFER13:Int = 0x8832;
	public static inline var DRAW_BUFFER14:Int = 0x8833;
	public static inline var DRAW_BUFFER15:Int = 0x8834;
	public static inline var BLEND_EQUATION_ALPHA:Int = 0x883D;
	public static inline var MAX_VERTEX_ATTRIBS:Int = 0x8869;
	public static inline var VERTEX_ATTRIB_ARRAY_NORMALIZED:Int = 0x886A;
	public static inline var MAX_TEXTURE_IMAGE_UNITS:Int = 0x8872;
	public static inline var FRAGMENT_SHADER:Int = 0x8B30;
	public static inline var VERTEX_SHADER:Int = 0x8B31;
	public static inline var MAX_FRAGMENT_UNIFORM_COMPONENTS:Int = 0x8B49;
	public static inline var MAX_VERTEX_UNIFORM_COMPONENTS:Int = 0x8B4A;
	public static inline var MAX_VARYING_FLOATS:Int = 0x8B4B;
	public static inline var MAX_VERTEX_TEXTURE_IMAGE_UNITS:Int = 0x8B4C;
	public static inline var MAX_COMBINED_TEXTURE_IMAGE_UNITS:Int = 0x8B4D;
	public static inline var SHADER_TYPE:Int = 0x8B4F;
	public static inline var FLOAT_VEC2:Int = 0x8B50;
	public static inline var FLOAT_VEC3:Int = 0x8B51;
	public static inline var FLOAT_VEC4:Int = 0x8B52;
	public static inline var INT_VEC2:Int = 0x8B53;
	public static inline var INT_VEC3:Int = 0x8B54;
	public static inline var INT_VEC4:Int = 0x8B55;
	public static inline var BOOL:Int = 0x8B56;
	public static inline var BOOL_VEC2:Int = 0x8B57;
	public static inline var BOOL_VEC3:Int = 0x8B58;
	public static inline var BOOL_VEC4:Int = 0x8B59;
	public static inline var FLOAT_MAT2:Int = 0x8B5A;
	public static inline var FLOAT_MAT3:Int = 0x8B5B;
	public static inline var FLOAT_MAT4:Int = 0x8B5C;
	public static inline var SAMPLER_1D:Int = 0x8B5D;
	public static inline var SAMPLER_2D:Int = 0x8B5E;
	public static inline var SAMPLER_3D:Int = 0x8B5F;
	public static inline var SAMPLER_CUBE:Int = 0x8B60;
	public static inline var SAMPLER_1D_SHADOW:Int = 0x8B61;
	public static inline var SAMPLER_2D_SHADOW:Int = 0x8B62;
	public static inline var DELETE_STATUS:Int = 0x8B80;
	public static inline var COMPILE_STATUS:Int = 0x8B81;
	public static inline var LINK_STATUS:Int = 0x8B82;
	public static inline var VALIDATE_STATUS:Int = 0x8B83;
	public static inline var INFO_LOG_LENGTH:Int = 0x8B84;
	public static inline var ATTACHED_SHADERS:Int = 0x8B85;
	public static inline var ACTIVE_UNIFORMS:Int = 0x8B86;
	public static inline var ACTIVE_UNIFORM_MAX_LENGTH:Int = 0x8B87;
	public static inline var SHADER_SOURCE_LENGTH:Int = 0x8B88;
	public static inline var ACTIVE_ATTRIBUTES:Int = 0x8B89;
	public static inline var ACTIVE_ATTRIBUTE_MAX_LENGTH:Int = 0x8B8A;
	public static inline var FRAGMENT_SHADER_DERIVATIVE_HINT:Int = 0x8B8B;
	public static inline var SHADING_LANGUAGE_VERSION:Int = 0x8B8C;
	public static inline var CURRENT_PROGRAM:Int = 0x8B8D;
	public static inline var POINT_SPRITE_COORD_ORIGIN:Int = 0x8CA0;
	public static inline var LOWER_LEFT:Int = 0x8CA1;
	public static inline var UPPER_LEFT:Int = 0x8CA2;
	public static inline var STENCIL_BACK_REF:Int = 0x8CA3;
	public static inline var STENCIL_BACK_VALUE_MASK:Int = 0x8CA4;
	public static inline var STENCIL_BACK_WRITEMASK:Int = 0x8CA5;
	public static inline var PIXEL_PACK_BUFFER:Int = 0x88EB;
	public static inline var PIXEL_UNPACK_BUFFER:Int = 0x88EC;
	public static inline var PIXEL_PACK_BUFFER_BINDING:Int = 0x88ED;
	public static inline var PIXEL_UNPACK_BUFFER_BINDING:Int = 0x88EF;
	public static inline var FLOAT_MAT2x3:Int = 0x8B65;
	public static inline var FLOAT_MAT2x4:Int = 0x8B66;
	public static inline var FLOAT_MAT3x2:Int = 0x8B67;
	public static inline var FLOAT_MAT3x4:Int = 0x8B68;
	public static inline var FLOAT_MAT4x2:Int = 0x8B69;
	public static inline var FLOAT_MAT4x3:Int = 0x8B6A;
	public static inline var SRGB:Int = 0x8C40;
	public static inline var SRGB8:Int = 0x8C41;
	public static inline var SRGB_ALPHA:Int = 0x8C42;
	public static inline var SRGB8_ALPHA8:Int = 0x8C43;
	public static inline var COMPRESSED_SRGB:Int = 0x8C48;
	public static inline var COMPRESSED_SRGB_ALPHA:Int = 0x8C49;
	public static inline var COMPARE_REF_TO_TEXTURE:Int = 0x884E;
	public static inline var CLIP_DISTANCE0:Int = 0x3000;
	public static inline var CLIP_DISTANCE1:Int = 0x3001;
	public static inline var CLIP_DISTANCE2:Int = 0x3002;
	public static inline var CLIP_DISTANCE3:Int = 0x3003;
	public static inline var CLIP_DISTANCE4:Int = 0x3004;
	public static inline var CLIP_DISTANCE5:Int = 0x3005;
	public static inline var CLIP_DISTANCE6:Int = 0x3006;
	public static inline var CLIP_DISTANCE7:Int = 0x3007;
	public static inline var MAX_CLIP_DISTANCES:Int = 0x0D32;
	public static inline var MAJOR_VERSION:Int = 0x821B;
	public static inline var MINOR_VERSION:Int = 0x821C;
	public static inline var NUM_EXTENSIONS:Int = 0x821D;
	public static inline var CONTEXT_FLAGS:Int = 0x821E;
	public static inline var COMPRESSED_RED:Int = 0x8225;
	public static inline var COMPRESSED_RG:Int = 0x8226;
	public static inline var CONTEXT_FLAG_FORWARD_COMPATIBLE_BIT:Int = 0x00000001;
	public static inline var RGBA32F:Int = 0x8814;
	public static inline var RGB32F:Int = 0x8815;
	public static inline var RGBA16F:Int = 0x881A;
	public static inline var RGB16F:Int = 0x881B;
	public static inline var VERTEX_ATTRIB_ARRAY_INTEGER:Int = 0x88FD;
	public static inline var MAX_ARRAY_TEXTURE_LAYERS:Int = 0x88FF;
	public static inline var MIN_PROGRAM_TEXEL_OFFSET:Int = 0x8904;
	public static inline var MAX_PROGRAM_TEXEL_OFFSET:Int = 0x8905;
	public static inline var CLAMP_READ_COLOR:Int = 0x891C;
	public static inline var FIXED_ONLY:Int = 0x891D;
	public static inline var MAX_VARYING_COMPONENTS:Int = 0x8B4B;
	public static inline var TEXTURE_1D_ARRAY:Int = 0x8C18;
	public static inline var PROXY_TEXTURE_1D_ARRAY:Int = 0x8C19;
	public static inline var TEXTURE_2D_ARRAY:Int = 0x8C1A;
	public static inline var PROXY_TEXTURE_2D_ARRAY:Int = 0x8C1B;
	public static inline var TEXTURE_BINDING_1D_ARRAY:Int = 0x8C1C;
	public static inline var TEXTURE_BINDING_2D_ARRAY:Int = 0x8C1D;
	public static inline var R11F_G11F_B10F:Int = 0x8C3A;
	public static inline var UNSIGNED_INT_10F_11F_11F_REV:Int = 0x8C3B;
	public static inline var RGB9_E5:Int = 0x8C3D;
	public static inline var UNSIGNED_INT_5_9_9_9_REV:Int = 0x8C3E;
	public static inline var TEXTURE_SHARED_SIZE:Int = 0x8C3F;
	public static inline var TRANSFORM_FEEDBACK_VARYING_MAX_LENGTH:Int = 0x8C76;
	public static inline var TRANSFORM_FEEDBACK_BUFFER_MODE:Int = 0x8C7F;
	public static inline var MAX_TRANSFORM_FEEDBACK_SEPARATE_COMPONENTS:Int = 0x8C80;
	public static inline var TRANSFORM_FEEDBACK_VARYINGS:Int = 0x8C83;
	public static inline var TRANSFORM_FEEDBACK_BUFFER_START:Int = 0x8C84;
	public static inline var TRANSFORM_FEEDBACK_BUFFER_SIZE:Int = 0x8C85;
	public static inline var PRIMITIVES_GENERATED:Int = 0x8C87;
	public static inline var TRANSFORM_FEEDBACK_PRIMITIVES_WRITTEN:Int = 0x8C88;
	public static inline var RASTERIZER_DISCARD:Int = 0x8C89;
	public static inline var MAX_TRANSFORM_FEEDBACK_INTERLEAVED_COMPONENTS:Int = 0x8C8A;
	public static inline var MAX_TRANSFORM_FEEDBACK_SEPARATE_ATTRIBS:Int = 0x8C8B;
	public static inline var INTERLEAVED_ATTRIBS:Int = 0x8C8C;
	public static inline var SEPARATE_ATTRIBS:Int = 0x8C8D;
	public static inline var TRANSFORM_FEEDBACK_BUFFER:Int = 0x8C8E;
	public static inline var TRANSFORM_FEEDBACK_BUFFER_BINDING:Int = 0x8C8F;
	public static inline var RGBA32UI:Int = 0x8D70;
	public static inline var RGB32UI:Int = 0x8D71;
	public static inline var RGBA16UI:Int = 0x8D76;
	public static inline var RGB16UI:Int = 0x8D77;
	public static inline var RGBA8UI:Int = 0x8D7C;
	public static inline var RGB8UI:Int = 0x8D7D;
	public static inline var RGBA32I:Int = 0x8D82;
	public static inline var RGB32I:Int = 0x8D83;
	public static inline var RGBA16I:Int = 0x8D88;
	public static inline var RGB16I:Int = 0x8D89;
	public static inline var RGBA8I:Int = 0x8D8E;
	public static inline var RGB8I:Int = 0x8D8F;
	public static inline var RED_INTEGER:Int = 0x8D94;
	public static inline var GREEN_INTEGER:Int = 0x8D95;
	public static inline var BLUE_INTEGER:Int = 0x8D96;
	public static inline var RGB_INTEGER:Int = 0x8D98;
	public static inline var RGBA_INTEGER:Int = 0x8D99;
	public static inline var BGR_INTEGER:Int = 0x8D9A;
	public static inline var BGRA_INTEGER:Int = 0x8D9B;
	public static inline var SAMPLER_1D_ARRAY:Int = 0x8DC0;
	public static inline var SAMPLER_2D_ARRAY:Int = 0x8DC1;
	public static inline var SAMPLER_1D_ARRAY_SHADOW:Int = 0x8DC3;
	public static inline var SAMPLER_2D_ARRAY_SHADOW:Int = 0x8DC4;
	public static inline var SAMPLER_CUBE_SHADOW:Int = 0x8DC5;
	public static inline var UNSIGNED_INT_VEC2:Int = 0x8DC6;
	public static inline var UNSIGNED_INT_VEC3:Int = 0x8DC7;
	public static inline var UNSIGNED_INT_VEC4:Int = 0x8DC8;
	public static inline var INT_SAMPLER_1D:Int = 0x8DC9;
	public static inline var INT_SAMPLER_2D:Int = 0x8DCA;
	public static inline var INT_SAMPLER_3D:Int = 0x8DCB;
	public static inline var INT_SAMPLER_CUBE:Int = 0x8DCC;
	public static inline var INT_SAMPLER_1D_ARRAY:Int = 0x8DCE;
	public static inline var INT_SAMPLER_2D_ARRAY:Int = 0x8DCF;
	public static inline var UNSIGNED_INT_SAMPLER_1D:Int = 0x8DD1;
	public static inline var UNSIGNED_INT_SAMPLER_2D:Int = 0x8DD2;
	public static inline var UNSIGNED_INT_SAMPLER_3D:Int = 0x8DD3;
	public static inline var UNSIGNED_INT_SAMPLER_CUBE:Int = 0x8DD4;
	public static inline var UNSIGNED_INT_SAMPLER_1D_ARRAY:Int = 0x8DD6;
	public static inline var UNSIGNED_INT_SAMPLER_2D_ARRAY:Int = 0x8DD7;
	public static inline var QUERY_WAIT:Int = 0x8E13;
	public static inline var QUERY_NO_WAIT:Int = 0x8E14;
	public static inline var QUERY_BY_REGION_WAIT:Int = 0x8E15;
	public static inline var QUERY_BY_REGION_NO_WAIT:Int = 0x8E16;
	public static inline var BUFFER_ACCESS_FLAGS:Int = 0x911F;
	public static inline var BUFFER_MAP_LENGTH:Int = 0x9120;
	public static inline var BUFFER_MAP_OFFSET:Int = 0x9121;
	public static inline var DEPTH_COMPONENT32F:Int = 0x8CAC;
	public static inline var DEPTH32F_STENCIL8:Int = 0x8CAD;
	public static inline var FLOAT_32_UNSIGNED_INT_24_8_REV:Int = 0x8DAD;
	public static inline var INVALID_FRAMEBUFFER_OPERATION:Int = 0x0506;
	public static inline var FRAMEBUFFER_ATTACHMENT_COLOR_ENCODING:Int = 0x8210;
	public static inline var FRAMEBUFFER_ATTACHMENT_COMPONENT_TYPE:Int = 0x8211;
	public static inline var FRAMEBUFFER_ATTACHMENT_RED_SIZE:Int = 0x8212;
	public static inline var FRAMEBUFFER_ATTACHMENT_GREEN_SIZE:Int = 0x8213;
	public static inline var FRAMEBUFFER_ATTACHMENT_BLUE_SIZE:Int = 0x8214;
	public static inline var FRAMEBUFFER_ATTACHMENT_ALPHA_SIZE:Int = 0x8215;
	public static inline var FRAMEBUFFER_ATTACHMENT_DEPTH_SIZE:Int = 0x8216;
	public static inline var FRAMEBUFFER_ATTACHMENT_STENCIL_SIZE:Int = 0x8217;
	public static inline var FRAMEBUFFER_DEFAULT:Int = 0x8218;
	public static inline var FRAMEBUFFER_UNDEFINED:Int = 0x8219;
	public static inline var DEPTH_STENCIL_ATTACHMENT:Int = 0x821A;
	public static inline var MAX_RENDERBUFFER_SIZE:Int = 0x84E8;
	public static inline var DEPTH_STENCIL:Int = 0x84F9;
	public static inline var UNSIGNED_INT_24_8:Int = 0x84FA;
	public static inline var DEPTH24_STENCIL8:Int = 0x88F0;
	public static inline var TEXTURE_STENCIL_SIZE:Int = 0x88F1;
	public static inline var TEXTURE_RED_TYPE:Int = 0x8C10;
	public static inline var TEXTURE_GREEN_TYPE:Int = 0x8C11;
	public static inline var TEXTURE_BLUE_TYPE:Int = 0x8C12;
	public static inline var TEXTURE_ALPHA_TYPE:Int = 0x8C13;
	public static inline var TEXTURE_DEPTH_TYPE:Int = 0x8C16;
	public static inline var UNSIGNED_NORMALIZED:Int = 0x8C17;
	public static inline var FRAMEBUFFER_BINDING:Int = 0x8CA6;
	public static inline var DRAW_FRAMEBUFFER_BINDING:Int = 0x8CA6;
	public static inline var RENDERBUFFER_BINDING:Int = 0x8CA7;
	public static inline var READ_FRAMEBUFFER:Int = 0x8CA8;
	public static inline var DRAW_FRAMEBUFFER:Int = 0x8CA9;
	public static inline var READ_FRAMEBUFFER_BINDING:Int = 0x8CAA;
	public static inline var RENDERBUFFER_SAMPLES:Int = 0x8CAB;
	public static inline var FRAMEBUFFER_ATTACHMENT_OBJECT_TYPE:Int = 0x8CD0;
	public static inline var FRAMEBUFFER_ATTACHMENT_OBJECT_NAME:Int = 0x8CD1;
	public static inline var FRAMEBUFFER_ATTACHMENT_TEXTURE_LEVEL:Int = 0x8CD2;
	public static inline var FRAMEBUFFER_ATTACHMENT_TEXTURE_CUBE_MAP_FACE:Int = 0x8CD3;
	public static inline var FRAMEBUFFER_ATTACHMENT_TEXTURE_LAYER:Int = 0x8CD4;
	public static inline var FRAMEBUFFER_COMPLETE:Int = 0x8CD5;
	public static inline var FRAMEBUFFER_INCOMPLETE_ATTACHMENT:Int = 0x8CD6;
	public static inline var FRAMEBUFFER_INCOMPLETE_MISSING_ATTACHMENT:Int = 0x8CD7;
	public static inline var FRAMEBUFFER_INCOMPLETE_DRAW_BUFFER:Int = 0x8CDB;
	public static inline var FRAMEBUFFER_INCOMPLETE_READ_BUFFER:Int = 0x8CDC;
	public static inline var FRAMEBUFFER_UNSUPPORTED:Int = 0x8CDD;
	public static inline var MAX_COLOR_ATTACHMENTS:Int = 0x8CDF;
	public static inline var COLOR_ATTACHMENT0:Int = 0x8CE0;
	public static inline var COLOR_ATTACHMENT1:Int = 0x8CE1;
	public static inline var COLOR_ATTACHMENT2:Int = 0x8CE2;
	public static inline var COLOR_ATTACHMENT3:Int = 0x8CE3;
	public static inline var COLOR_ATTACHMENT4:Int = 0x8CE4;
	public static inline var COLOR_ATTACHMENT5:Int = 0x8CE5;
	public static inline var COLOR_ATTACHMENT6:Int = 0x8CE6;
	public static inline var COLOR_ATTACHMENT7:Int = 0x8CE7;
	public static inline var COLOR_ATTACHMENT8:Int = 0x8CE8;
	public static inline var COLOR_ATTACHMENT9:Int = 0x8CE9;
	public static inline var COLOR_ATTACHMENT10:Int = 0x8CEA;
	public static inline var COLOR_ATTACHMENT11:Int = 0x8CEB;
	public static inline var COLOR_ATTACHMENT12:Int = 0x8CEC;
	public static inline var COLOR_ATTACHMENT13:Int = 0x8CED;
	public static inline var COLOR_ATTACHMENT14:Int = 0x8CEE;
	public static inline var COLOR_ATTACHMENT15:Int = 0x8CEF;
	public static inline var COLOR_ATTACHMENT16:Int = 0x8CF0;
	public static inline var COLOR_ATTACHMENT17:Int = 0x8CF1;
	public static inline var COLOR_ATTACHMENT18:Int = 0x8CF2;
	public static inline var COLOR_ATTACHMENT19:Int = 0x8CF3;
	public static inline var COLOR_ATTACHMENT20:Int = 0x8CF4;
	public static inline var COLOR_ATTACHMENT21:Int = 0x8CF5;
	public static inline var COLOR_ATTACHMENT22:Int = 0x8CF6;
	public static inline var COLOR_ATTACHMENT23:Int = 0x8CF7;
	public static inline var COLOR_ATTACHMENT24:Int = 0x8CF8;
	public static inline var COLOR_ATTACHMENT25:Int = 0x8CF9;
	public static inline var COLOR_ATTACHMENT26:Int = 0x8CFA;
	public static inline var COLOR_ATTACHMENT27:Int = 0x8CFB;
	public static inline var COLOR_ATTACHMENT28:Int = 0x8CFC;
	public static inline var COLOR_ATTACHMENT29:Int = 0x8CFD;
	public static inline var COLOR_ATTACHMENT30:Int = 0x8CFE;
	public static inline var COLOR_ATTACHMENT31:Int = 0x8CFF;
	public static inline var DEPTH_ATTACHMENT:Int = 0x8D00;
	public static inline var STENCIL_ATTACHMENT:Int = 0x8D20;
	public static inline var FRAMEBUFFER:Int = 0x8D40;
	public static inline var RENDERBUFFER:Int = 0x8D41;
	public static inline var RENDERBUFFER_WIDTH:Int = 0x8D42;
	public static inline var RENDERBUFFER_HEIGHT:Int = 0x8D43;
	public static inline var RENDERBUFFER_INTERNAL_FORMAT:Int = 0x8D44;
	public static inline var STENCIL_INDEX1:Int = 0x8D46;
	public static inline var STENCIL_INDEX4:Int = 0x8D47;
	public static inline var STENCIL_INDEX8:Int = 0x8D48;
	public static inline var STENCIL_INDEX16:Int = 0x8D49;
	public static inline var RENDERBUFFER_RED_SIZE:Int = 0x8D50;
	public static inline var RENDERBUFFER_GREEN_SIZE:Int = 0x8D51;
	public static inline var RENDERBUFFER_BLUE_SIZE:Int = 0x8D52;
	public static inline var RENDERBUFFER_ALPHA_SIZE:Int = 0x8D53;
	public static inline var RENDERBUFFER_DEPTH_SIZE:Int = 0x8D54;
	public static inline var RENDERBUFFER_STENCIL_SIZE:Int = 0x8D55;
	public static inline var FRAMEBUFFER_INCOMPLETE_MULTISAMPLE:Int = 0x8D56;
	public static inline var MAX_SAMPLES:Int = 0x8D57;
	public static inline var FRAMEBUFFER_SRGB:Int = 0x8DB9;
	public static inline var HALF_FLOAT:Int = 0x140B;
	public static inline var MAP_READ_BIT:Int = 0x0001;
	public static inline var MAP_WRITE_BIT:Int = 0x0002;
	public static inline var MAP_INVALIDATE_RANGE_BIT:Int = 0x0004;
	public static inline var MAP_INVALIDATE_BUFFER_BIT:Int = 0x0008;
	public static inline var MAP_FLUSH_EXPLICIT_BIT:Int = 0x0010;
	public static inline var MAP_UNSYNCHRONIZED_BIT:Int = 0x0020;
	public static inline var COMPRESSED_RED_RGTC1:Int = 0x8DBB;
	public static inline var COMPRESSED_SIGNED_RED_RGTC1:Int = 0x8DBC;
	public static inline var COMPRESSED_RG_RGTC2:Int = 0x8DBD;
	public static inline var COMPRESSED_SIGNED_RG_RGTC2:Int = 0x8DBE;
	public static inline var RG:Int = 0x8227;
	public static inline var RG_INTEGER:Int = 0x8228;
	public static inline var R8:Int = 0x8229;
	public static inline var R16:Int = 0x822A;
	public static inline var RG8:Int = 0x822B;
	public static inline var RG16:Int = 0x822C;
	public static inline var R16F:Int = 0x822D;
	public static inline var R32F:Int = 0x822E;
	public static inline var RG16F:Int = 0x822F;
	public static inline var RG32F:Int = 0x8230;
	public static inline var R8I:Int = 0x8231;
	public static inline var R8UI:Int = 0x8232;
	public static inline var R16I:Int = 0x8233;
	public static inline var R16UI:Int = 0x8234;
	public static inline var R32I:Int = 0x8235;
	public static inline var R32UI:Int = 0x8236;
	public static inline var RG8I:Int = 0x8237;
	public static inline var RG8UI:Int = 0x8238;
	public static inline var RG16I:Int = 0x8239;
	public static inline var RG16UI:Int = 0x823A;
	public static inline var RG32I:Int = 0x823B;
	public static inline var RG32UI:Int = 0x823C;
	public static inline var VERTEX_ARRAY_BINDING:Int = 0x85B5;
	public static inline var SAMPLER_2D_RECT:Int = 0x8B63;
	public static inline var SAMPLER_2D_RECT_SHADOW:Int = 0x8B64;
	public static inline var SAMPLER_BUFFER:Int = 0x8DC2;
	public static inline var INT_SAMPLER_2D_RECT:Int = 0x8DCD;
	public static inline var INT_SAMPLER_BUFFER:Int = 0x8DD0;
	public static inline var UNSIGNED_INT_SAMPLER_2D_RECT:Int = 0x8DD5;
	public static inline var UNSIGNED_INT_SAMPLER_BUFFER:Int = 0x8DD8;
	public static inline var TEXTURE_BUFFER:Int = 0x8C2A;
	public static inline var MAX_TEXTURE_BUFFER_SIZE:Int = 0x8C2B;
	public static inline var TEXTURE_BINDING_BUFFER:Int = 0x8C2C;
	public static inline var TEXTURE_BUFFER_DATA_STORE_BINDING:Int = 0x8C2D;
	public static inline var TEXTURE_RECTANGLE:Int = 0x84F5;
	public static inline var TEXTURE_BINDING_RECTANGLE:Int = 0x84F6;
	public static inline var PROXY_TEXTURE_RECTANGLE:Int = 0x84F7;
	public static inline var MAX_RECTANGLE_TEXTURE_SIZE:Int = 0x84F8;
	public static inline var R8_SNORM:Int = 0x8F94;
	public static inline var RG8_SNORM:Int = 0x8F95;
	public static inline var RGB8_SNORM:Int = 0x8F96;
	public static inline var RGBA8_SNORM:Int = 0x8F97;
	public static inline var R16_SNORM:Int = 0x8F98;
	public static inline var RG16_SNORM:Int = 0x8F99;
	public static inline var RGB16_SNORM:Int = 0x8F9A;
	public static inline var RGBA16_SNORM:Int = 0x8F9B;
	public static inline var SIGNED_NORMALIZED:Int = 0x8F9C;
	public static inline var PRIMITIVE_RESTART:Int = 0x8F9D;
	public static inline var PRIMITIVE_RESTART_INDEX:Int = 0x8F9E;
	public static inline var COPY_READ_BUFFER:Int = 0x8F36;
	public static inline var COPY_WRITE_BUFFER:Int = 0x8F37;
	public static inline var UNIFORM_BUFFER:Int = 0x8A11;
	public static inline var UNIFORM_BUFFER_BINDING:Int = 0x8A28;
	public static inline var UNIFORM_BUFFER_START:Int = 0x8A29;
	public static inline var UNIFORM_BUFFER_SIZE:Int = 0x8A2A;
	public static inline var MAX_VERTEX_UNIFORM_BLOCKS:Int = 0x8A2B;
	public static inline var MAX_GEOMETRY_UNIFORM_BLOCKS:Int = 0x8A2C;
	public static inline var MAX_FRAGMENT_UNIFORM_BLOCKS:Int = 0x8A2D;
	public static inline var MAX_COMBINED_UNIFORM_BLOCKS:Int = 0x8A2E;
	public static inline var MAX_UNIFORM_BUFFER_BINDINGS:Int = 0x8A2F;
	public static inline var MAX_UNIFORM_BLOCK_SIZE:Int = 0x8A30;
	public static inline var MAX_COMBINED_VERTEX_UNIFORM_COMPONENTS:Int = 0x8A31;
	public static inline var MAX_COMBINED_GEOMETRY_UNIFORM_COMPONENTS:Int = 0x8A32;
	public static inline var MAX_COMBINED_FRAGMENT_UNIFORM_COMPONENTS:Int = 0x8A33;
	public static inline var UNIFORM_BUFFER_OFFSET_ALIGNMENT:Int = 0x8A34;
	public static inline var ACTIVE_UNIFORM_BLOCK_MAX_NAME_LENGTH:Int = 0x8A35;
	public static inline var ACTIVE_UNIFORM_BLOCKS:Int = 0x8A36;
	public static inline var UNIFORM_TYPE:Int = 0x8A37;
	public static inline var UNIFORM_SIZE:Int = 0x8A38;
	public static inline var UNIFORM_NAME_LENGTH:Int = 0x8A39;
	public static inline var UNIFORM_BLOCK_INDEX:Int = 0x8A3A;
	public static inline var UNIFORM_OFFSET:Int = 0x8A3B;
	public static inline var UNIFORM_ARRAY_STRIDE:Int = 0x8A3C;
	public static inline var UNIFORM_MATRIX_STRIDE:Int = 0x8A3D;
	public static inline var UNIFORM_IS_ROW_MAJOR:Int = 0x8A3E;
	public static inline var UNIFORM_BLOCK_BINDING:Int = 0x8A3F;
	public static inline var UNIFORM_BLOCK_DATA_SIZE:Int = 0x8A40;
	public static inline var UNIFORM_BLOCK_NAME_LENGTH:Int = 0x8A41;
	public static inline var UNIFORM_BLOCK_ACTIVE_UNIFORMS:Int = 0x8A42;
	public static inline var UNIFORM_BLOCK_ACTIVE_UNIFORM_INDICES:Int = 0x8A43;
	public static inline var UNIFORM_BLOCK_REFERENCED_BY_VERTEX_SHADER:Int = 0x8A44;
	public static inline var UNIFORM_BLOCK_REFERENCED_BY_GEOMETRY_SHADER:Int = 0x8A45;
	public static inline var UNIFORM_BLOCK_REFERENCED_BY_FRAGMENT_SHADER:Int = 0x8A46;
	public static inline var INVALID_INDEX:Int = 0xFFFFFFFF;
	public static inline var CONTEXT_CORE_PROFILE_BIT:Int = 0x00000001;
	public static inline var CONTEXT_COMPATIBILITY_PROFILE_BIT:Int = 0x00000002;
	public static inline var LINES_ADJACENCY:Int = 0x000A;
	public static inline var LINE_STRIP_ADJACENCY:Int = 0x000B;
	public static inline var TRIANGLES_ADJACENCY:Int = 0x000C;
	public static inline var TRIANGLE_STRIP_ADJACENCY:Int = 0x000D;
	public static inline var PROGRAM_POINT_SIZE:Int = 0x8642;
	public static inline var MAX_GEOMETRY_TEXTURE_IMAGE_UNITS:Int = 0x8C29;
	public static inline var FRAMEBUFFER_ATTACHMENT_LAYERED:Int = 0x8DA7;
	public static inline var FRAMEBUFFER_INCOMPLETE_LAYER_TARGETS:Int = 0x8DA8;
	public static inline var GEOMETRY_SHADER:Int = 0x8DD9;
	public static inline var GEOMETRY_VERTICES_OUT:Int = 0x8916;
	public static inline var GEOMETRY_INPUT_TYPE:Int = 0x8917;
	public static inline var GEOMETRY_OUTPUT_TYPE:Int = 0x8918;
	public static inline var MAX_GEOMETRY_UNIFORM_COMPONENTS:Int = 0x8DDF;
	public static inline var MAX_GEOMETRY_OUTPUT_VERTICES:Int = 0x8DE0;
	public static inline var MAX_GEOMETRY_TOTAL_OUTPUT_COMPONENTS:Int = 0x8DE1;
	public static inline var MAX_VERTEX_OUTPUT_COMPONENTS:Int = 0x9122;
	public static inline var MAX_GEOMETRY_INPUT_COMPONENTS:Int = 0x9123;
	public static inline var MAX_GEOMETRY_OUTPUT_COMPONENTS:Int = 0x9124;
	public static inline var MAX_FRAGMENT_INPUT_COMPONENTS:Int = 0x9125;
	public static inline var CONTEXT_PROFILE_MASK:Int = 0x9126;
	public static inline var DEPTH_CLAMP:Int = 0x864F;
	public static inline var QUADS_FOLLOW_PROVOKING_VERTEX_CONVENTION:Int = 0x8E4C;
	public static inline var FIRST_VERTEX_CONVENTION:Int = 0x8E4D;
	public static inline var LAST_VERTEX_CONVENTION:Int = 0x8E4E;
	public static inline var PROVOKING_VERTEX:Int = 0x8E4F;
	public static inline var TEXTURE_CUBE_MAP_SEAMLESS:Int = 0x884F;
	public static inline var MAX_SERVER_WAIT_TIMEOUT:Int = 0x9111;
	public static inline var OBJECT_TYPE:Int = 0x9112;
	public static inline var SYNC_CONDITION:Int = 0x9113;
	public static inline var SYNC_STATUS:Int = 0x9114;
	public static inline var SYNC_FLAGS:Int = 0x9115;
	public static inline var SYNC_FENCE:Int = 0x9116;
	public static inline var SYNC_GPU_COMMANDS_COMPLETE:Int = 0x9117;
	public static inline var UNSIGNALED:Int = 0x9118;
	public static inline var SIGNALED:Int = 0x9119;
	public static inline var ALREADY_SIGNALED:Int = 0x911A;
	public static inline var TIMEOUT_EXPIRED:Int = 0x911B;
	public static inline var CONDITION_SATISFIED:Int = 0x911C;
	public static inline var WAIT_FAILED:Int = 0x911D;

	@:native("GL_TIMEOUT_IGNORED")
	public static var TIMEOUT_IGNORED:Int;

	public static inline var SYNC_FLUSH_COMMANDS_BIT:Int = 0x00000001;
	public static inline var SAMPLE_POSITION:Int = 0x8E50;
	public static inline var SAMPLE_MASK:Int = 0x8E51;
	public static inline var SAMPLE_MASK_VALUE:Int = 0x8E52;
	public static inline var MAX_SAMPLE_MASK_WORDS:Int = 0x8E59;
	public static inline var TEXTURE_2D_MULTISAMPLE:Int = 0x9100;
	public static inline var PROXY_TEXTURE_2D_MULTISAMPLE:Int = 0x9101;
	public static inline var TEXTURE_2D_MULTISAMPLE_ARRAY:Int = 0x9102;
	public static inline var PROXY_TEXTURE_2D_MULTISAMPLE_ARRAY:Int = 0x9103;
	public static inline var TEXTURE_BINDING_2D_MULTISAMPLE:Int = 0x9104;
	public static inline var TEXTURE_BINDING_2D_MULTISAMPLE_ARRAY:Int = 0x9105;
	public static inline var TEXTURE_SAMPLES:Int = 0x9106;
	public static inline var TEXTURE_FIXED_SAMPLE_LOCATIONS:Int = 0x9107;
	public static inline var SAMPLER_2D_MULTISAMPLE:Int = 0x9108;
	public static inline var INT_SAMPLER_2D_MULTISAMPLE:Int = 0x9109;
	public static inline var UNSIGNED_INT_SAMPLER_2D_MULTISAMPLE:Int = 0x910A;
	public static inline var SAMPLER_2D_MULTISAMPLE_ARRAY:Int = 0x910B;
	public static inline var INT_SAMPLER_2D_MULTISAMPLE_ARRAY:Int = 0x910C;
	public static inline var UNSIGNED_INT_SAMPLER_2D_MULTISAMPLE_ARRAY:Int = 0x910D;
	public static inline var MAX_COLOR_TEXTURE_SAMPLES:Int = 0x910E;
	public static inline var MAX_DEPTH_TEXTURE_SAMPLES:Int = 0x910F;
	public static inline var MAX_INTEGER_SAMPLES:Int = 0x9110;
	public static inline var VERTEX_ATTRIB_ARRAY_DIVISOR:Int = 0x88FE;
	public static inline var SRC1_COLOR:Int = 0x88F9;
	public static inline var ONE_MINUS_SRC1_COLOR:Int = 0x88FA;
	public static inline var ONE_MINUS_SRC1_ALPHA:Int = 0x88FB;
	public static inline var MAX_DUAL_SOURCE_DRAW_BUFFERS:Int = 0x88FC;
	public static inline var ANY_SAMPLES_PASSED:Int = 0x8C2F;
	public static inline var SAMPLER_BINDING:Int = 0x8919;
	public static inline var RGB10_A2UI:Int = 0x906F;
	public static inline var TEXTURE_SWIZZLE_R:Int = 0x8E42;
	public static inline var TEXTURE_SWIZZLE_G:Int = 0x8E43;
	public static inline var TEXTURE_SWIZZLE_B:Int = 0x8E44;
	public static inline var TEXTURE_SWIZZLE_A:Int = 0x8E45;
	public static inline var TEXTURE_SWIZZLE_RGBA:Int = 0x8E46;
	public static inline var TIME_ELAPSED:Int = 0x88BF;
	public static inline var TIMESTAMP:Int = 0x8E28;
	public static inline var INT_2_10_10_10_REV:Int = 0x8D9F;
	public static inline var VERSION_1_0:Int = 1;

	public static inline function loadGlLoader(proc:GladLoadProc):Int{
		return untyped __cpp__("gladLoadGLLoader((GLADloadproc) {0})", proc);
	}

	@:native("glCullFace")
	public static function cullFace(mode:GLenum):Void;
	@:native("glFrontFace")
	public static function frontFace(mode:GLenum):Void;
	@:native("glHint")
	public static function hint(target:GLenum, mode:GLenum):Void;
	@:native("glLineWidth")
	public static function lineWidth(width:GLfloat):Void;
	@:native("glPointSize")
	public static function pointSize(size:GLfloat):Void;
	@:native("glPolygonMode")
	public static function polygonMode(face:GLenum, mode:GLenum):Void;
	@:native("glScissor")
	public static function scissor(x:GLint, y:GLint, width:GLsizei, height:GLsizei):Void;
	@:native("glTexParameterf")
	public static function texParameterf(target:GLenum, pname:GLenum, param:GLfloat):Void;
	@:native("glTexParameterfv")
	public static function texParameterfv(target:GLenum, pname:GLenum, params:Pointer<GLfloat>):Void;
	@:native("glTexParameteri")
	public static function texParameteri(target:GLenum, pname:GLenum, param:GLint):Void;
	@:native("glTexParameteriv")
	public static function texParameteriv(target:GLenum, pname:GLenum, params:Pointer<GLint>):Void;
	@:native("glTexImage1D")
	public static function texImage1D(target:GLenum, level:GLint, internalformat:GLint, width:GLsizei, border:GLint, format:GLenum, type:GLenum,
		pixels:Pointer<Void>):Void;
	@:native("glTexImage2D")
	public static function texImage2D(target:GLenum, level:GLint, internalformat:GLint, width:GLsizei, height:GLsizei, border:GLint, format:GLenum,
		type:GLenum, pixels:Pointer<Void>):Void;
	@:native("glDrawBuffer")
	public static function drawBuffer(buf:GLenum):Void;
	@:native("glClear")
	public static function clear(mask:GLbitfield):Void;
	@:native("glClearColor")
	public static function clearColor(red:GLfloat, green:GLfloat, blue:GLfloat, alpha:GLfloat):Void;
	@:native("glClearStencil")
	public static function clearStencil(s:GLint):Void;
	@:native("glClearDepth")
	public static function clearDepth(depth:GLdouble):Void;
	@:native("glStencilMask")
	public static function stencilMask(mask:GLuint):Void;
	@:native("glColorMask")
	public static function colorMask(red:GLboolean, green:GLboolean, blue:GLboolean, alpha:GLboolean):Void;
	@:native("glDepthMask")
	public static function depthMask(flag:GLboolean):Void;
	@:native("glDisable")
	public static function disable(cap:GLenum):Void;
	@:native("glEnable")
	public static function enable(cap:GLenum):Void;
	@:native("glFinish")
	public static function finish():Void;
	@:native("glFlush")
	public static function flush():Void;
	@:native("glBlendFunc")
	public static function blendFunc(sfactor:GLenum, dfactor:GLenum):Void;
	@:native("glLogicOp")
	public static function logicOp(opcode:GLenum):Void;
	@:native("glStencilFunc")
	public static function stencilFunc(func:GLenum, ref:GLint, mask:GLuint):Void;
	@:native("glStencilOp")
	public static function stencilOp(fail:GLenum, zfail:GLenum, zpass:GLenum):Void;
	@:native("glDepthFunc")
	public static function depthFunc(func:GLenum):Void;
	@:native("glPixelStoref")
	public static function pixelStoref(pname:GLenum, param:GLfloat):Void;
	@:native("glPixelStorei")
	public static function pixelStorei(pname:GLenum, param:GLint):Void;
	@:native("glReadBuffer")
	public static function readBuffer(src:GLenum):Void;
	@:native("glReadPixels")
	public static function readPixels(x:GLint, y:GLint, width:GLsizei, height:GLsizei, format:GLenum, type:GLenum, pixels:Pointer<Void>):Void;
	@:native("glGetBooleanv")
	public static function getBooleanv(pname:GLenum, data:Pointer<GLboolean>):Void;
	@:native("glGetDoublev")
	public static function getDoublev(pname:GLenum, data:Pointer<GLdouble>):Void;
	@:native("glGetError")
	public static function getError():GLenum;
	@:native("glGetFloatv")
	public static function getFloatv(pname:GLenum, data:Pointer<GLfloat>):Void;
	@:native("glGetIntegerv")
	public static function getIntegerv(pname:GLenum, data:Pointer<GLint>):Void;
	@:native("glGetString")
	public static function getString(name:GLenum):Pointer<GLubyte>;
	@:native("glGetTexImage")
	public static function getTexImage(target:GLenum, level:GLint, format:GLenum, type:GLenum, pixels:Pointer<Void>):Void;
	@:native("glGetTexParameterfv")
	public static function getTexParameterfv(target:GLenum, pname:GLenum, params:Pointer<GLfloat>):Void;
	@:native("glGetTexParameteriv")
	public static function getTexParameteriv(target:GLenum, pname:GLenum, params:Pointer<GLint>):Void;
	@:native("glGetTexLevelParameterfv")
	public static function getTexLevelParameterfv(target:GLenum, level:GLint, pname:GLenum, params:Pointer<GLfloat>):Void;
	@:native("glGetTexLevelParameteriv")
	public static function getTexLevelParameteriv(target:GLenum, level:GLint, pname:GLenum, params:Pointer<GLint>):Void;
	@:native("glIsEnabled")
	public static function isEnabled(cap:GLenum):GLboolean;
	@:native("glDepthRange")
	public static function depthRange(n:GLdouble, f:GLdouble):Void;
	@:native("glViewport")
	public static function viewport(x:GLint, y:GLint, width:GLsizei, height:GLsizei):Void;
	@:native("glDrawArrays")
	public static function drawArrays(mode:GLenum, first:GLint, count:GLsizei):Void;
	@:native("glDrawElements")
	public static function drawElements(mode:GLenum, count:GLsizei, type:GLenum, indices:Pointer<Void>):Void;
	@:native("glPolygonOffset")
	public static function polygonOffset(factor:GLfloat, units:GLfloat):Void;
	@:native("glCopyTexImage1D")
	public static function copyTexImage1D(target:GLenum, level:GLint, internalformat:GLenum, x:GLint, y:GLint, width:GLsizei, border:GLint):Void;
	@:native("glCopyTexImage2D")
	public static function copyTexImage2D(target:GLenum, level:GLint, internalformat:GLenum, x:GLint, y:GLint, width:GLsizei, height:GLsizei,
		border:GLint):Void;
	@:native("glCopyTexSubImage1D")
	public static function copyTexSubImage1D(target:GLenum, level:GLint, xoffset:GLint, x:GLint, y:GLint, width:GLsizei):Void;
	@:native("glCopyTexSubImage2D")
	public static function copyTexSubImage2D(target:GLenum, level:GLint, xoffset:GLint, yoffset:GLint, x:GLint, y:GLint, width:GLsizei, height:GLsizei):Void;
	@:native("glTexSubImage1D")
	public static function texSubImage1D(target:GLenum, level:GLint, xoffset:GLint, width:GLsizei, format:GLenum, type:GLenum, pixels:Pointer<Void>):Void;
	@:native("glTexSubImage2D")
	public static function texSubImage2D(target:GLenum, level:GLint, xoffset:GLint, yoffset:GLint, width:GLsizei, height:GLsizei, format:GLenum, type:GLenum,
		pixels:Pointer<Void>):Void;
	@:native("glBindTexture")
	public static function bindTexture(target:GLenum, texture:GLuint):Void;
	@:native("glDeleteTextures")
	public static function deleteTextures(n:GLsizei, textures:Pointer<GLuint>):Void;
	@:native("glGenTextures")
	public static function genTextures(n:GLsizei, textures:Pointer<GLuint>):Void;
	@:native("glIsTexture")
	public static function isTexture(texture:GLuint):GLboolean;
	@:native("glDrawRangeElements")
	public static function drawRangeElements(mode:GLenum, start:GLuint, end:GLuint, count:GLsizei, type:GLenum, indices:Pointer<Void>):Void;
	@:native("glTexImage3D")
	public static function texImage3D(target:GLenum, level:GLint, internalformat:GLint, width:GLsizei, height:GLsizei, depth:GLsizei, border:GLint,
		format:GLenum, type:GLenum, pixels:Pointer<Void>):Void;
	@:native("glTexSubImage3D")
	public static function texSubImage3D(target:GLenum, level:GLint, xoffset:GLint, yoffset:GLint, zoffset:GLint, width:GLsizei, height:GLsizei,
		depth:GLsizei, format:GLenum, type:GLenum, pixels:Pointer<Void>):Void;
	@:native("glCopyTexSubImage3D")
	public static function copyTexSubImage3D(target:GLenum, level:GLint, xoffset:GLint, yoffset:GLint, zoffset:GLint, x:GLint, y:GLint, width:GLsizei,
		height:GLsizei):Void;
	@:native("glActiveTexture")
	public static function activeTexture(texture:GLenum):Void;
	@:native("glSampleCoverage")
	public static function sampleCoverage(value:GLfloat, invert:GLboolean):Void;
	@:native("glCompressedTexImage3D")
	public static function compressedTexImage3D(target:GLenum, level:GLint, internalformat:GLenum, width:GLsizei, height:GLsizei, depth:GLsizei, border:GLint,
		imageSize:GLsizei, data:Pointer<Void>):Void;
	@:native("glCompressedTexImage2D")
	public static function compressedTexImage2D(target:GLenum, level:GLint, internalformat:GLenum, width:GLsizei, height:GLsizei, border:GLint,
		imageSize:GLsizei, data:Pointer<Void>):Void;
	@:native("glCompressedTexImage1D")
	public static function compressedTexImage1D(target:GLenum, level:GLint, internalformat:GLenum, width:GLsizei, border:GLint, imageSize:GLsizei,
		data:Pointer<Void>):Void;
	@:native("glCompressedTexSubImage3D")
	public static function compressedTexSubImage3D(target:GLenum, level:GLint, xoffset:GLint, yoffset:GLint, zoffset:GLint, width:GLsizei, height:GLsizei,
		depth:GLsizei, format:GLenum, imageSize:GLsizei, data:Pointer<Void>):Void;
	@:native("glCompressedTexSubImage2D")
	public static function compressedTexSubImage2D(target:GLenum, level:GLint, xoffset:GLint, yoffset:GLint, width:GLsizei, height:GLsizei, format:GLenum,
		imageSize:GLsizei, data:Pointer<Void>):Void;
	@:native("glCompressedTexSubImage1D")
	public static function compressedTexSubImage1D(target:GLenum, level:GLint, xoffset:GLint, width:GLsizei, format:GLenum, imageSize:GLsizei,
		data:Pointer<Void>):Void;
	@:native("glGetCompressedTexImage")
	public static function getCompressedTexImage(target:GLenum, level:GLint, img:Pointer<Void>):Void;
	@:native("glBlendFuncSeparate")
	public static function blendFuncSeparate(sfactorRGB:GLenum, dfactorRGB:GLenum, sfactorAlpha:GLenum, dfactorAlpha:GLenum):Void;
	@:native("glMultiDrawArrays")
	public static function multiDrawArrays(mode:GLenum, first:Pointer<GLint>, count:Pointer<GLsizei>, drawcount:GLsizei):Void;
	@:native("glMultiDrawElements")
	public static function multiDrawElements(mode:GLenum, count:Pointer<GLsizei>, type:GLenum, indices:Pointer<Pointer<Void>>, drawcount:GLsizei):Void;
	@:native("glPointParameterf")
	public static function pointParameterf(pname:GLenum, param:GLfloat):Void;
	@:native("glPointParameterfv")
	public static function pointParameterfv(pname:GLenum, params:Pointer<GLfloat>):Void;
	@:native("glPointParameteri")
	public static function pointParameteri(pname:GLenum, param:GLint):Void;
	@:native("glPointParameteriv")
	public static function pointParameteriv(pname:GLenum, params:Pointer<GLint>):Void;
	@:native("glBlendColor")
	public static function blendColor(red:GLfloat, green:GLfloat, blue:GLfloat, alpha:GLfloat):Void;
	@:native("glBlendEquation")
	public static function blendEquation(mode:GLenum):Void;
	@:native("glGenQueries")
	public static function genQueries(n:GLsizei, ids:Pointer<GLuint>):Void;
	@:native("glDeleteQueries")
	public static function deleteQueries(n:GLsizei, ids:Pointer<GLuint>):Void;
	@:native("glIsQuery")
	public static function isQuery(id:GLuint):GLboolean;
	@:native("glBeginQuery")
	public static function beginQuery(target:GLenum, id:GLuint):Void;
	@:native("glEndQuery")
	public static function endQuery(target:GLenum):Void;
	@:native("glGetQueryiv")
	public static function getQueryiv(target:GLenum, pname:GLenum, params:Pointer<GLint>):Void;
	@:native("glGetQueryObjectiv")
	public static function getQueryObjectiv(id:GLuint, pname:GLenum, params:Pointer<GLint>):Void;
	@:native("glGetQueryObjectuiv")
	public static function getQueryObjectuiv(id:GLuint, pname:GLenum, params:Pointer<GLuint>):Void;
	@:native("glBindBuffer")
	public static function bindBuffer(target:GLenum, buffer:GLuint):Void;
	@:native("glDeleteBuffers")
	public static function deleteBuffers(n:GLsizei, buffers:Pointer<GLuint>):Void;
	@:native("glGenBuffers")
	public static function genBuffers(n:GLsizei, buffers:Pointer<GLuint>):Void;
	@:native("glIsBuffer")
	public static function isBuffer(buffer:GLuint):GLboolean;
	@:native("glBufferData")
	public static function bufferData(target:GLenum, size:GLsizeiptr, data:Pointer<Void>, usage:GLenum):Void;
	@:native("glBufferSubData")
	public static function bufferSubData(target:GLenum, offset:GLintptr, size:GLsizeiptr, data:Pointer<Void>):Void;
	@:native("glGetBufferSubData")
	public static function getBufferSubData(target:GLenum, offset:GLintptr, size:GLsizeiptr, data:Pointer<Void>):Void;
	@:native("glMapBuffer")
	public static function mapBuffer(target:GLenum, access:GLenum):Pointer<Void>;
	@:native("glUnmapBuffer")
	public static function unmapBuffer(target:GLenum):GLboolean;
	@:native("glGetBufferParameteriv")
	public static function getBufferParameteriv(target:GLenum, pname:GLenum, params:Pointer<GLint>):Void;
	@:native("glGetBufferPointerv")
	public static function getBufferPointerv(target:GLenum, pname:GLenum, params:Pointer<Pointer<Void>>):Void;
	@:native("glBlendEquationSeparate")
	public static function blendEquationSeparate(modeRGB:GLenum, modeAlpha:GLenum):Void;
	@:native("glDrawBuffers")
	public static function drawBuffers(n:GLsizei, bufs:Pointer<GLenum>):Void;
	@:native("glStencilOpSeparate")
	public static function stencilOpSeparate(face:GLenum, sfail:GLenum, dpfail:GLenum, dppass:GLenum):Void;
	@:native("glStencilFuncSeparate")
	public static function stencilFuncSeparate(face:GLenum, func:GLenum, ref:GLint, mask:GLuint):Void;
	@:native("glStencilMaskSeparate")
	public static function stencilMaskSeparate(face:GLenum, mask:GLuint):Void;
	@:native("glAttachShader")
	public static function attachShader(program:GLuint, shader:GLuint):Void;
	@:native("glBindAttribLocation")
	public static function bindAttribLocation(program:GLuint, index:GLuint, name:Pointer<GLchar>):Void;
	@:native("glCompileShader")
	public static function compileShader(shader:GLuint):Void;
	@:native("glCreateProgram")
	public static function createProgram():GLuint;
	@:native("glCreateShader")
	public static function createShader(type:GLenum):GLuint;
	@:native("glDeleteProgram")
	public static function deleteProgram(program:GLuint):Void;
	@:native("glDeleteShader")
	public static function deleteShader(shader:GLuint):Void;
	@:native("glDetachShader")
	public static function detachShader(program:GLuint, shader:GLuint):Void;
	@:native("glDisableVertexAttribArray")
	public static function disableVertexAttribArray(index:GLuint):Void;
	@:native("glEnableVertexAttribArray")
	public static function enableVertexAttribArray(index:GLuint):Void;
	@:native("glGetActiveAttrib")
	public static function getActiveAttrib(program:GLuint, index:GLuint, bufSize:GLsizei, length:Pointer<GLsizei>, size:Pointer<GLint>, type:Pointer<GLenum>,
		name:Pointer<GLchar>):Void;
	@:native("glGetActiveUniform")
	public static function getActiveUniform(program:GLuint, index:GLuint, bufSize:GLsizei, length:Pointer<GLsizei>, size:Pointer<GLint>, type:Pointer<GLenum>,
		name:Pointer<GLchar>):Void;
	@:native("glGetAttachedShaders")
	public static function getAttachedShaders(program:GLuint, maxCount:GLsizei, count:Pointer<GLsizei>, shaders:Pointer<GLuint>):Void;
	@:native("glGetAttribLocation")
	public static function getAttribLocation(program:GLuint, name:Pointer<GLchar>):GLint;
	@:native("glGetProgramiv")
	public static function getProgramiv(program:GLuint, pname:GLenum, params:Pointer<GLint>):Void;
	@:native("glGetProgramInfoLog")
	public static function getProgramInfoLog(program:GLuint, bufSize:GLsizei, length:Pointer<GLsizei>, infoLog:Pointer<GLchar>):Void;
	@:native("glGetShaderiv")
	public static function getShaderiv(shader:GLuint, pname:GLenum, params:Pointer<GLint>):Void;
	@:native("glGetShaderInfoLog")
	public static function getShaderInfoLog(shader:GLuint, bufSize:GLsizei, length:Pointer<GLsizei>, infoLog:Pointer<GLchar>):Void;
	@:native("glGetShaderSource")
	public static function getShaderSource(shader:GLuint, bufSize:GLsizei, length:Pointer<GLsizei>, source:Pointer<GLchar>):Void;
	@:native("glGetUniformLocation")
	public static function getUniformLocation(program:GLuint, name:Pointer<GLchar>):GLint;
	@:native("glGetUniformfv")
	public static function getUniformfv(program:GLuint, location:GLint, params:Pointer<GLfloat>):Void;
	@:native("glGetUniformiv")
	public static function getUniformiv(program:GLuint, location:GLint, params:Pointer<GLint>):Void;
	@:native("glGetVertexAttribdv")
	public static function getVertexAttribdv(index:GLuint, pname:GLenum, params:Pointer<GLdouble>):Void;
	@:native("glGetVertexAttribfv")
	public static function getVertexAttribfv(index:GLuint, pname:GLenum, params:Pointer<GLfloat>):Void;
	@:native("glGetVertexAttribiv")
	public static function getVertexAttribiv(index:GLuint, pname:GLenum, params:Pointer<GLint>):Void;
	@:native("glGetVertexAttribPointerv")
	public static function getVertexAttribPointerv(index:GLuint, pname:GLenum, pointer:Pointer<Pointer<Void>>):Void;
	@:native("glIsProgram")
	public static function isProgram(program:GLuint):GLboolean;
	@:native("glIsShader")
	public static function isShader(shader:GLuint):GLboolean;
	@:native("glLinkProgram")
	public static function linkProgram(program:GLuint):Void;
	@:native("glShaderSource")
	public static function shaderSource(shader:GLuint, count:GLsizei, string:Pointer<Pointer<GLchar>>, length:Pointer<GLint>):Void;
	@:native("glUseProgram")
	public static function useProgram(program:GLuint):Void;
	@:native("glUniform1f")
	public static function uniform1f(location:GLint, v0:GLfloat):Void;
	@:native("glUniform2f")
	public static function uniform2f(location:GLint, v0:GLfloat, v1:GLfloat):Void;
	@:native("glUniform3f")
	public static function uniform3f(location:GLint, v0:GLfloat, v1:GLfloat, v2:GLfloat):Void;
	@:native("glUniform4f")
	public static function uniform4f(location:GLint, v0:GLfloat, v1:GLfloat, v2:GLfloat, v3:GLfloat):Void;
	@:native("glUniform1i")
	public static function uniform1i(location:GLint, v0:GLint):Void;
	@:native("glUniform2i")
	public static function uniform2i(location:GLint, v0:GLint, v1:GLint):Void;
	@:native("glUniform3i")
	public static function uniform3i(location:GLint, v0:GLint, v1:GLint, v2:GLint):Void;
	@:native("glUniform4i")
	public static function uniform4i(location:GLint, v0:GLint, v1:GLint, v2:GLint, v3:GLint):Void;
	@:native("glUniform1fv")
	public static function uniform1fv(location:GLint, count:GLsizei, value:Pointer<GLfloat>):Void;
	@:native("glUniform2fv")
	public static function uniform2fv(location:GLint, count:GLsizei, value:Pointer<GLfloat>):Void;
	@:native("glUniform3fv")
	public static function uniform3fv(location:GLint, count:GLsizei, value:Pointer<GLfloat>):Void;
	@:native("glUniform4fv")
	public static function uniform4fv(location:GLint, count:GLsizei, value:Pointer<GLfloat>):Void;
	@:native("glUniform1iv")
	public static function uniform1iv(location:GLint, count:GLsizei, value:Pointer<GLint>):Void;
	@:native("glUniform2iv")
	public static function uniform2iv(location:GLint, count:GLsizei, value:Pointer<GLint>):Void;
	@:native("glUniform3iv")
	public static function uniform3iv(location:GLint, count:GLsizei, value:Pointer<GLint>):Void;
	@:native("glUniform4iv")
	public static function uniform4iv(location:GLint, count:GLsizei, value:Pointer<GLint>):Void;
	@:native("glUniformMatrix2fv")
	public static function uniformMatrix2fv(location:GLint, count:GLsizei, transpose:GLboolean, value:Pointer<GLfloat>):Void;
	@:native("glUniformMatrix3fv")
	public static function uniformMatrix3fv(location:GLint, count:GLsizei, transpose:GLboolean, value:Pointer<GLfloat>):Void;
	@:native("glUniformMatrix4fv")
	public static function uniformMatrix4fv(location:GLint, count:GLsizei, transpose:GLboolean, value:Pointer<GLfloat>):Void;
	@:native("glValidateProgram")
	public static function validateProgram(program:GLuint):Void;
	@:native("glVertexAttrib1d")
	public static function vertexAttrib1d(index:GLuint, x:GLdouble):Void;
	@:native("glVertexAttrib1dv")
	public static function vertexAttrib1dv(index:GLuint, v:Pointer<GLdouble>):Void;
	@:native("glVertexAttrib1f")
	public static function vertexAttrib1f(index:GLuint, x:GLfloat):Void;
	@:native("glVertexAttrib1fv")
	public static function vertexAttrib1fv(index:GLuint, v:Pointer<GLfloat>):Void;
	@:native("glVertexAttrib1s")
	public static function vertexAttrib1s(index:GLuint, x:GLshort):Void;
	@:native("glVertexAttrib1sv")
	public static function vertexAttrib1sv(index:GLuint, v:Pointer<GLshort>):Void;
	@:native("glVertexAttrib2d")
	public static function vertexAttrib2d(index:GLuint, x:GLdouble, y:GLdouble):Void;
	@:native("glVertexAttrib2dv")
	public static function vertexAttrib2dv(index:GLuint, v:Pointer<GLdouble>):Void;
	@:native("glVertexAttrib2f")
	public static function vertexAttrib2f(index:GLuint, x:GLfloat, y:GLfloat):Void;
	@:native("glVertexAttrib2fv")
	public static function vertexAttrib2fv(index:GLuint, v:Pointer<GLfloat>):Void;
	@:native("glVertexAttrib2s")
	public static function vertexAttrib2s(index:GLuint, x:GLshort, y:GLshort):Void;
	@:native("glVertexAttrib2sv")
	public static function vertexAttrib2sv(index:GLuint, v:Pointer<GLshort>):Void;
	@:native("glVertexAttrib3d")
	public static function vertexAttrib3d(index:GLuint, x:GLdouble, y:GLdouble, z:GLdouble):Void;
	@:native("glVertexAttrib3dv")
	public static function vertexAttrib3dv(index:GLuint, v:Pointer<GLdouble>):Void;
	@:native("glVertexAttrib3f")
	public static function vertexAttrib3f(index:GLuint, x:GLfloat, y:GLfloat, z:GLfloat):Void;
	@:native("glVertexAttrib3fv")
	public static function vertexAttrib3fv(index:GLuint, v:Pointer<GLfloat>):Void;
	@:native("glVertexAttrib3s")
	public static function vertexAttrib3s(index:GLuint, x:GLshort, y:GLshort, z:GLshort):Void;
	@:native("glVertexAttrib3sv")
	public static function vertexAttrib3sv(index:GLuint, v:Pointer<GLshort>):Void;
	@:native("glVertexAttrib4Nbv")
	public static function vertexAttrib4Nbv(index:GLuint, v:Pointer<GLbyte>):Void;
	@:native("glVertexAttrib4Niv")
	public static function vertexAttrib4Niv(index:GLuint, v:Pointer<GLint>):Void;
	@:native("glVertexAttrib4Nsv")
	public static function vertexAttrib4Nsv(index:GLuint, v:Pointer<GLshort>):Void;
	@:native("glVertexAttrib4Nub")
	public static function vertexAttrib4Nub(index:GLuint, x:GLubyte, y:GLubyte, z:GLubyte, w:GLubyte):Void;
	@:native("glVertexAttrib4Nubv")
	public static function vertexAttrib4Nubv(index:GLuint, v:Pointer<GLubyte>):Void;
	@:native("glVertexAttrib4Nuiv")
	public static function vertexAttrib4Nuiv(index:GLuint, v:Pointer<GLuint>):Void;
	@:native("glVertexAttrib4Nusv")
	public static function vertexAttrib4Nusv(index:GLuint, v:Pointer<GLushort>):Void;
	@:native("glVertexAttrib4bv")
	public static function vertexAttrib4bv(index:GLuint, v:Pointer<GLbyte>):Void;
	@:native("glVertexAttrib4d")
	public static function vertexAttrib4d(index:GLuint, x:GLdouble, y:GLdouble, z:GLdouble, w:GLdouble):Void;
	@:native("glVertexAttrib4dv")
	public static function vertexAttrib4dv(index:GLuint, v:Pointer<GLdouble>):Void;
	@:native("glVertexAttrib4f")
	public static function vertexAttrib4f(index:GLuint, x:GLfloat, y:GLfloat, z:GLfloat, w:GLfloat):Void;
	@:native("glVertexAttrib4fv")
	public static function vertexAttrib4fv(index:GLuint, v:Pointer<GLfloat>):Void;
	@:native("glVertexAttrib4iv")
	public static function vertexAttrib4iv(index:GLuint, v:Pointer<GLint>):Void;
	@:native("glVertexAttrib4s")
	public static function vertexAttrib4s(index:GLuint, x:GLshort, y:GLshort, z:GLshort, w:GLshort):Void;
	@:native("glVertexAttrib4sv")
	public static function vertexAttrib4sv(index:GLuint, v:Pointer<GLshort>):Void;
	@:native("glVertexAttrib4ubv")
	public static function vertexAttrib4ubv(index:GLuint, v:Pointer<GLubyte>):Void;
	@:native("glVertexAttrib4uiv")
	public static function vertexAttrib4uiv(index:GLuint, v:Pointer<GLuint>):Void;
	@:native("glVertexAttrib4usv")
	public static function vertexAttrib4usv(index:GLuint, v:Pointer<GLushort>):Void;
	@:native("glVertexAttribPointer")
	public static function vertexAttribPointer(index:GLuint, size:GLint, type:GLenum, normalized:GLboolean, stride:GLsizei, pointer:Pointer<Void>):Void;
	@:native("glUniformMatrix2x3fv")
	public static function uniformMatrix2x3fv(location:GLint, count:GLsizei, transpose:GLboolean, value:Pointer<GLfloat>):Void;
	@:native("glUniformMatrix3x2fv")
	public static function uniformMatrix3x2fv(location:GLint, count:GLsizei, transpose:GLboolean, value:Pointer<GLfloat>):Void;
	@:native("glUniformMatrix2x4fv")
	public static function uniformMatrix2x4fv(location:GLint, count:GLsizei, transpose:GLboolean, value:Pointer<GLfloat>):Void;
	@:native("glUniformMatrix4x2fv")
	public static function uniformMatrix4x2fv(location:GLint, count:GLsizei, transpose:GLboolean, value:Pointer<GLfloat>):Void;
	@:native("glUniformMatrix3x4fv")
	public static function uniformMatrix3x4fv(location:GLint, count:GLsizei, transpose:GLboolean, value:Pointer<GLfloat>):Void;
	@:native("glUniformMatrix4x3fv")
	public static function uniformMatrix4x3fv(location:GLint, count:GLsizei, transpose:GLboolean, value:Pointer<GLfloat>):Void;
	@:native("glColorMaski")
	public static function colorMaski(index:GLuint, r:GLboolean, g:GLboolean, b:GLboolean, a:GLboolean):Void;
	@:native("glGetBooleani_v")
	public static function getBooleani_v(target:GLenum, index:GLuint, data:Pointer<GLboolean>):Void;
	@:native("glGetIntegeri_v")
	public static function getIntegeri_v(target:GLenum, index:GLuint, data:Pointer<GLint>):Void;
	@:native("glEnablei")
	public static function enablei(target:GLenum, index:GLuint):Void;
	@:native("glDisablei")
	public static function disablei(target:GLenum, index:GLuint):Void;
	@:native("glIsEnabledi")
	public static function isEnabledi(target:GLenum, index:GLuint):GLboolean;
	@:native("glBeginTransformFeedback")
	public static function beginTransformFeedback(primitiveMode:GLenum):Void;
	@:native("glEndTransformFeedback")
	public static function endTransformFeedback():Void;
	@:native("glBindBufferRange")
	public static function bindBufferRange(target:GLenum, index:GLuint, buffer:GLuint, offset:GLintptr, size:GLsizeiptr):Void;
	@:native("glBindBufferBase")
	public static function bindBufferBase(target:GLenum, index:GLuint, buffer:GLuint):Void;
	@:native("glTransformFeedbackVaryings")
	public static function transformFeedbackVaryings(program:GLuint, count:GLsizei, varyings:Pointer<Pointer<GLchar>>, bufferMode:GLenum):Void;
	@:native("glGetTransformFeedbackVarying")
	public static function getTransformFeedbackVarying(program:GLuint, index:GLuint, bufSize:GLsizei, length:Pointer<GLsizei>, size:Pointer<GLsizei>,
		type:Pointer<GLenum>, name:Pointer<GLchar>):Void;
	@:native("glClampColor")
	public static function clampColor(target:GLenum, clamp:GLenum):Void;
	@:native("glBeginConditionalRender")
	public static function beginConditionalRender(id:GLuint, mode:GLenum):Void;
	@:native("glEndConditionalRender")
	public static function endConditionalRender():Void;
	@:native("glVertexAttribIPointer")
	public static function vertexAttribIPointer(index:GLuint, size:GLint, type:GLenum, stride:GLsizei, pointer:Pointer<Void>):Void;
	@:native("glGetVertexAttribIiv")
	public static function getVertexAttribIiv(index:GLuint, pname:GLenum, params:Pointer<GLint>):Void;
	@:native("glGetVertexAttribIuiv")
	public static function getVertexAttribIuiv(index:GLuint, pname:GLenum, params:Pointer<GLuint>):Void;
	@:native("glVertexAttribI1i")
	public static function vertexAttribI1i(index:GLuint, x:GLint):Void;
	@:native("glVertexAttribI2i")
	public static function vertexAttribI2i(index:GLuint, x:GLint, y:GLint):Void;
	@:native("glVertexAttribI3i")
	public static function vertexAttribI3i(index:GLuint, x:GLint, y:GLint, z:GLint):Void;
	@:native("glVertexAttribI4i")
	public static function vertexAttribI4i(index:GLuint, x:GLint, y:GLint, z:GLint, w:GLint):Void;
	@:native("glVertexAttribI1ui")
	public static function vertexAttribI1ui(index:GLuint, x:GLuint):Void;
	@:native("glVertexAttribI2ui")
	public static function vertexAttribI2ui(index:GLuint, x:GLuint, y:GLuint):Void;
	@:native("glVertexAttribI3ui")
	public static function vertexAttribI3ui(index:GLuint, x:GLuint, y:GLuint, z:GLuint):Void;
	@:native("glVertexAttribI4ui")
	public static function vertexAttribI4ui(index:GLuint, x:GLuint, y:GLuint, z:GLuint, w:GLuint):Void;
	@:native("glVertexAttribI1iv")
	public static function vertexAttribI1iv(index:GLuint, v:Pointer<GLint>):Void;
	@:native("glVertexAttribI2iv")
	public static function vertexAttribI2iv(index:GLuint, v:Pointer<GLint>):Void;
	@:native("glVertexAttribI3iv")
	public static function vertexAttribI3iv(index:GLuint, v:Pointer<GLint>):Void;
	@:native("glVertexAttribI4iv")
	public static function vertexAttribI4iv(index:GLuint, v:Pointer<GLint>):Void;
	@:native("glVertexAttribI1uiv")
	public static function vertexAttribI1uiv(index:GLuint, v:Pointer<GLuint>):Void;
	@:native("glVertexAttribI2uiv")
	public static function vertexAttribI2uiv(index:GLuint, v:Pointer<GLuint>):Void;
	@:native("glVertexAttribI3uiv")
	public static function vertexAttribI3uiv(index:GLuint, v:Pointer<GLuint>):Void;
	@:native("glVertexAttribI4uiv")
	public static function vertexAttribI4uiv(index:GLuint, v:Pointer<GLuint>):Void;
	@:native("glVertexAttribI4bv")
	public static function vertexAttribI4bv(index:GLuint, v:Pointer<GLbyte>):Void;
	@:native("glVertexAttribI4sv")
	public static function vertexAttribI4sv(index:GLuint, v:Pointer<GLshort>):Void;
	@:native("glVertexAttribI4ubv")
	public static function vertexAttribI4ubv(index:GLuint, v:Pointer<GLubyte>):Void;
	@:native("glVertexAttribI4usv")
	public static function vertexAttribI4usv(index:GLuint, v:Pointer<GLushort>):Void;
	@:native("glGetUniformuiv")
	public static function getUniformuiv(program:GLuint, location:GLint, params:Pointer<GLuint>):Void;
	@:native("glBindFragDataLocation")
	public static function bindFragDataLocation(program:GLuint, color:GLuint, name:Pointer<GLchar>):Void;
	@:native("glGetFragDataLocation")
	public static function getFragDataLocation(program:GLuint, name:Pointer<GLchar>):GLint;
	@:native("glUniform1ui")
	public static function uniform1ui(location:GLint, v0:GLuint):Void;
	@:native("glUniform2ui")
	public static function uniform2ui(location:GLint, v0:GLuint, v1:GLuint):Void;
	@:native("glUniform3ui")
	public static function uniform3ui(location:GLint, v0:GLuint, v1:GLuint, v2:GLuint):Void;
	@:native("glUniform4ui")
	public static function uniform4ui(location:GLint, v0:GLuint, v1:GLuint, v2:GLuint, v3:GLuint):Void;
	@:native("glUniform1uiv")
	public static function uniform1uiv(location:GLint, count:GLsizei, value:Pointer<GLuint>):Void;
	@:native("glUniform2uiv")
	public static function uniform2uiv(location:GLint, count:GLsizei, value:Pointer<GLuint>):Void;
	@:native("glUniform3uiv")
	public static function uniform3uiv(location:GLint, count:GLsizei, value:Pointer<GLuint>):Void;
	@:native("glUniform4uiv")
	public static function uniform4uiv(location:GLint, count:GLsizei, value:Pointer<GLuint>):Void;
	@:native("glTexParameterIiv")
	public static function texParameterIiv(target:GLenum, pname:GLenum, params:Pointer<GLint>):Void;
	@:native("glTexParameterIuiv")
	public static function texParameterIuiv(target:GLenum, pname:GLenum, params:Pointer<GLuint>):Void;
	@:native("glGetTexParameterIiv")
	public static function getTexParameterIiv(target:GLenum, pname:GLenum, params:Pointer<GLint>):Void;
	@:native("glGetTexParameterIuiv")
	public static function getTexParameterIuiv(target:GLenum, pname:GLenum, params:Pointer<GLuint>):Void;
	@:native("glClearBufferiv")
	public static function clearBufferiv(buffer:GLenum, drawbuffer:GLint, value:Pointer<GLint>):Void;
	@:native("glClearBufferuiv")
	public static function clearBufferuiv(buffer:GLenum, drawbuffer:GLint, value:Pointer<GLuint>):Void;
	@:native("glClearBufferfv")
	public static function clearBufferfv(buffer:GLenum, drawbuffer:GLint, value:Pointer<GLfloat>):Void;
	@:native("glClearBufferfi")
	public static function clearBufferfi(buffer:GLenum, drawbuffer:GLint, depth:GLfloat, stencil:GLint):Void;
	@:native("glGetStringi")
	public static function getStringi(name:GLenum, index:GLuint):Pointer<GLubyte>;
	@:native("glIsRenderbuffer")
	public static function isRenderbuffer(renderbuffer:GLuint):GLboolean;
	@:native("glBindRenderbuffer")
	public static function bindRenderbuffer(target:GLenum, renderbuffer:GLuint):Void;
	@:native("glDeleteRenderbuffers")
	public static function deleteRenderbuffers(n:GLsizei, renderbuffers:Pointer<GLuint>):Void;
	@:native("glGenRenderbuffers")
	public static function genRenderbuffers(n:GLsizei, renderbuffers:Pointer<GLuint>):Void;
	@:native("glRenderbufferStorage")
	public static function renderbufferStorage(target:GLenum, internalformat:GLenum, width:GLsizei, height:GLsizei):Void;
	@:native("glGetRenderbufferParameteriv")
	public static function getRenderbufferParameteriv(target:GLenum, pname:GLenum, params:Pointer<GLint>):Void;
	@:native("glIsFramebuffer")
	public static function isFramebuffer(framebuffer:GLuint):GLboolean;
	@:native("glBindFramebuffer")
	public static function bindFramebuffer(target:GLenum, framebuffer:GLuint):Void;
	@:native("glDeleteFramebuffers")
	public static function deleteFramebuffers(n:GLsizei, framebuffers:Pointer<GLuint>):Void;
	@:native("glGenFramebuffers")
	public static function genFramebuffers(n:GLsizei, framebuffers:Pointer<GLuint>):Void;
	@:native("glCheckFramebufferStatus")
	public static function checkFramebufferStatus(target:GLenum):GLenum;
	@:native("glFramebufferTexture1D")
	public static function framebufferTexture1D(target:GLenum, attachment:GLenum, textarget:GLenum, texture:GLuint, level:GLint):Void;
	@:native("glFramebufferTexture2D")
	public static function framebufferTexture2D(target:GLenum, attachment:GLenum, textarget:GLenum, texture:GLuint, level:GLint):Void;
	@:native("glFramebufferTexture3D")
	public static function framebufferTexture3D(target:GLenum, attachment:GLenum, textarget:GLenum, texture:GLuint, level:GLint, zoffset:GLint):Void;
	@:native("glFramebufferRenderbuffer")
	public static function framebufferRenderbuffer(target:GLenum, attachment:GLenum, renderbuffertarget:GLenum, renderbuffer:GLuint):Void;
	@:native("glGetFramebufferAttachmentParameteriv")
	public static function getFramebufferAttachmentParameteriv(target:GLenum, attachment:GLenum, pname:GLenum, params:Pointer<GLint>):Void;
	@:native("glGenerateMipmap")
	public static function generateMipmap(target:GLenum):Void;
	@:native("glBlitFramebuffer")
	public static function blitFramebuffer(srcX0:GLint, srcY0:GLint, srcX1:GLint, srcY1:GLint, dstX0:GLint, dstY0:GLint, dstX1:GLint, dstY1:GLint,
		mask:GLbitfield, filter:GLenum):Void;
	@:native("glRenderbufferStorageMultisample")
	public static function renderbufferStorageMultisample(target:GLenum, samples:GLsizei, internalformat:GLenum, width:GLsizei, height:GLsizei):Void;
	@:native("glFramebufferTextureLayer")
	public static function framebufferTextureLayer(target:GLenum, attachment:GLenum, texture:GLuint, level:GLint, layer:GLint):Void;
	@:native("glMapBufferRange")
	public static function mapBufferRange(target:GLenum, offset:GLintptr, length:GLsizeiptr, access:GLbitfield):Pointer<Void>;
	@:native("glFlushMappedBufferRange")
	public static function flushMappedBufferRange(target:GLenum, offset:GLintptr, length:GLsizeiptr):Void;
	@:native("glBindVertexArray")
	public static function bindVertexArray(array:GLuint):Void;
	@:native("glDeleteVertexArrays")
	public static function deleteVertexArrays(n:GLsizei, arrays:Pointer<GLuint>):Void;
	@:native("glGenVertexArrays")
	public static function genVertexArrays(n:GLsizei, arrays:Pointer<GLuint>):Void;
	@:native("glIsVertexArray")
	public static function isVertexArray(array:GLuint):GLboolean;
	@:native("glDrawArraysInstanced")
	public static function drawArraysInstanced(mode:GLenum, first:GLint, count:GLsizei, instancecount:GLsizei):Void;
	@:native("glDrawElementsInstanced")
	public static function drawElementsInstanced(mode:GLenum, count:GLsizei, type:GLenum, indices:Pointer<Void>, instancecount:GLsizei):Void;
	@:native("glTexBuffer")
	public static function texBuffer(target:GLenum, internalformat:GLenum, buffer:GLuint):Void;
	@:native("glPrimitiveRestartIndex")
	public static function primitiveRestartIndex(index:GLuint):Void;
	@:native("glCopyBufferSubData")
	public static function copyBufferSubData(readTarget:GLenum, writeTarget:GLenum, readOffset:GLintptr, writeOffset:GLintptr, size:GLsizeiptr):Void;
	@:native("glGetUniformIndices")
	public static function getUniformIndices(program:GLuint, uniformCount:GLsizei, uniformNames:Pointer<Pointer<GLchar>>, uniformIndices:Pointer<GLuint>):Void;
	@:native("glGetActiveUniformsiv")
	public static function getActiveUniformsiv(program:GLuint, uniformCount:GLsizei, uniformIndices:Pointer<GLuint>, pname:GLenum, params:Pointer<GLint>):Void;
	@:native("glGetActiveUniformName")
	public static function getActiveUniformName(program:GLuint, uniformIndex:GLuint, bufSize:GLsizei, length:Pointer<GLsizei>,
		uniformName:Pointer<GLchar>):Void;
	@:native("glGetUniformBlockIndex")
	public static function getUniformBlockIndex(program:GLuint, uniformBlockName:Pointer<GLchar>):GLuint;
	@:native("glGetActiveUniformBlockiv")
	public static function getActiveUniformBlockiv(program:GLuint, uniformBlockIndex:GLuint, pname:GLenum, params:Pointer<GLint>):Void;
	@:native("glGetActiveUniformBlockName")
	public static function getActiveUniformBlockName(program:GLuint, uniformBlockIndex:GLuint, bufSize:GLsizei, length:Pointer<GLsizei>,
		uniformBlockName:Pointer<GLchar>):Void;
	@:native("glUniformBlockBinding")
	public static function uniformBlockBinding(program:GLuint, uniformBlockIndex:GLuint, uniformBlockBinding:GLuint):Void;
	@:native("glDrawElementsBaseVertex")
	public static function drawElementsBaseVertex(mode:GLenum, count:GLsizei, type:GLenum, indices:Pointer<Void>, basevertex:GLint):Void;
	@:native("glDrawRangeElementsBaseVertex")
	public static function drawRangeElementsBaseVertex(mode:GLenum, start:GLuint, end:GLuint, count:GLsizei, type:GLenum, indices:Pointer<Void>,
		basevertex:GLint):Void;
	@:native("glDrawElementsInstancedBaseVertex")
	public static function drawElementsInstancedBaseVertex(mode:GLenum, count:GLsizei, type:GLenum, indices:Pointer<Void>, instancecount:GLsizei,
		basevertex:GLint):Void;
	@:native("glMultiDrawElementsBaseVertex")
	public static function multiDrawElementsBaseVertex(mode:GLenum, count:Pointer<GLsizei>, type:GLenum, indices:Pointer<Pointer<Void>>, drawcount:GLsizei,
		basevertex:Pointer<GLint>):Void;
	@:native("glProvokingVertex")
	public static function provokingVertex(mode:GLenum):Void;
	@:native("glFenceSync")
	public static function fenceSync(condition:GLenum, flags:GLbitfield):GLsync;
	@:native("glIsSync")
	public static function isSync(sync:GLsync):GLboolean;
	@:native("glDeleteSync")
	public static function deleteSync(sync:GLsync):Void;
	@:native("glClientWaitSync")
	public static function clientWaitSync(sync:GLsync, flags:GLbitfield, timeout:GLuint64):GLenum;
	@:native("glWaitSync")
	public static function waitSync(sync:GLsync, flags:GLbitfield, timeout:GLuint64):Void;
	@:native("glGetInteger64v")
	public static function getInteger64v(pname:GLenum, data:Pointer<GLint64>):Void;
	@:native("glGetSynciv")
	public static function getSynciv(sync:GLsync, pname:GLenum, count:GLsizei, length:Pointer<GLsizei>, values:Pointer<GLint>):Void;
	@:native("glGetInteger64i_v")
	public static function getInteger64i_v(target:GLenum, index:GLuint, data:Pointer<GLint64>):Void;
	@:native("glGetBufferParameteri64v")
	public static function getBufferParameteri64v(target:GLenum, pname:GLenum, params:Pointer<GLint64>):Void;
	@:native("glFramebufferTexture")
	public static function framebufferTexture(target:GLenum, attachment:GLenum, texture:GLuint, level:GLint):Void;
	@:native("glTexImage2DMultisample")
	public static function texImage2DMultisample(target:GLenum, samples:GLsizei, internalformat:GLenum, width:GLsizei, height:GLsizei,
		fixedsamplelocations:GLboolean):Void;
	@:native("glTexImage3DMultisample")
	public static function texImage3DMultisample(target:GLenum, samples:GLsizei, internalformat:GLenum, width:GLsizei, height:GLsizei, depth:GLsizei,
		fixedsamplelocations:GLboolean):Void;
	@:native("glGetMultisamplefv")
	public static function getMultisamplefv(pname:GLenum, index:GLuint, val:Pointer<GLfloat>):Void;
	@:native("glSampleMaski")
	public static function sampleMaski(maskNumber:GLuint, mask:GLbitfield):Void;
	@:native("glBindFragDataLocationIndexed")
	public static function bindFragDataLocationIndexed(program:GLuint, colorNumber:GLuint, index:GLuint, name:Pointer<GLchar>):Void;
	@:native("glGetFragDataIndex")
	public static function getFragDataIndex(program:GLuint, name:Pointer<GLchar>):GLint;
	@:native("glGenSamplers")
	public static function genSamplers(count:GLsizei, samplers:Pointer<GLuint>):Void;
	@:native("glDeleteSamplers")
	public static function deleteSamplers(count:GLsizei, samplers:Pointer<GLuint>):Void;
	@:native("glIsSampler")
	public static function isSampler(sampler:GLuint):GLboolean;
	@:native("glBindSampler")
	public static function bindSampler(unit:GLuint, sampler:GLuint):Void;
	@:native("glSamplerParameteri")
	public static function samplerParameteri(sampler:GLuint, pname:GLenum, param:GLint):Void;
	@:native("glSamplerParameteriv")
	public static function samplerParameteriv(sampler:GLuint, pname:GLenum, param:Pointer<GLint>):Void;
	@:native("glSamplerParameterf")
	public static function samplerParameterf(sampler:GLuint, pname:GLenum, param:GLfloat):Void;
	@:native("glSamplerParameterfv")
	public static function samplerParameterfv(sampler:GLuint, pname:GLenum, param:Pointer<GLfloat>):Void;
	@:native("glSamplerParameterIiv")
	public static function samplerParameterIiv(sampler:GLuint, pname:GLenum, param:Pointer<GLint>):Void;
	@:native("glSamplerParameterIuiv")
	public static function samplerParameterIuiv(sampler:GLuint, pname:GLenum, param:Pointer<GLuint>):Void;
	@:native("glGetSamplerParameteriv")
	public static function getSamplerParameteriv(sampler:GLuint, pname:GLenum, params:Pointer<GLint>):Void;
	@:native("glGetSamplerParameterIiv")
	public static function getSamplerParameterIiv(sampler:GLuint, pname:GLenum, params:Pointer<GLint>):Void;
	@:native("glGetSamplerParameterfv")
	public static function getSamplerParameterfv(sampler:GLuint, pname:GLenum, params:Pointer<GLfloat>):Void;
	@:native("glGetSamplerParameterIuiv")
	public static function getSamplerParameterIuiv(sampler:GLuint, pname:GLenum, params:Pointer<GLuint>):Void;
	@:native("glQueryCounter")
	public static function queryCounter(id:GLuint, target:GLenum):Void;
	@:native("glGetQueryObjecti64v")
	public static function getQueryObjecti64v(id:GLuint, pname:GLenum, params:Pointer<GLint64>):Void;
	@:native("glGetQueryObjectui64v")
	public static function getQueryObjectui64v(id:GLuint, pname:GLenum, params:Pointer<GLuint64>):Void;
	@:native("glVertexAttribDivisor")
	public static function vertexAttribDivisor(index:GLuint, divisor:GLuint):Void;
	@:native("glVertexAttribP1ui")
	public static function vertexAttribP1ui(index:GLuint, type:GLenum, normalized:GLboolean, value:GLuint):Void;
	@:native("glVertexAttribP1uiv")
	public static function vertexAttribP1uiv(index:GLuint, type:GLenum, normalized:GLboolean, value:Pointer<GLuint>):Void;
	@:native("glVertexAttribP2ui")
	public static function vertexAttribP2ui(index:GLuint, type:GLenum, normalized:GLboolean, value:GLuint):Void;
	@:native("glVertexAttribP2uiv")
	public static function vertexAttribP2uiv(index:GLuint, type:GLenum, normalized:GLboolean, value:Pointer<GLuint>):Void;
	@:native("glVertexAttribP3ui")
	public static function vertexAttribP3ui(index:GLuint, type:GLenum, normalized:GLboolean, value:GLuint):Void;
	@:native("glVertexAttribP3uiv")
	public static function vertexAttribP3uiv(index:GLuint, type:GLenum, normalized:GLboolean, value:Pointer<GLuint>):Void;
	@:native("glVertexAttribP4ui")
	public static function vertexAttribP4ui(index:GLuint, type:GLenum, normalized:GLboolean, value:GLuint):Void;
	@:native("glVertexAttribP4uiv")
	public static function vertexAttribP4uiv(index:GLuint, type:GLenum, normalized:GLboolean, value:Pointer<GLuint>):Void;
	@:native("glVertexP2ui")
	public static function vertexP2ui(type:GLenum, value:GLuint):Void;
	@:native("glVertexP2uiv")
	public static function vertexP2uiv(type:GLenum, value:Pointer<GLuint>):Void;
	@:native("glVertexP3ui")
	public static function vertexP3ui(type:GLenum, value:GLuint):Void;
	@:native("glVertexP3uiv")
	public static function vertexP3uiv(type:GLenum, value:Pointer<GLuint>):Void;
	@:native("glVertexP4ui")
	public static function vertexP4ui(type:GLenum, value:GLuint):Void;
	@:native("glVertexP4uiv")
	public static function vertexP4uiv(type:GLenum, value:Pointer<GLuint>):Void;
	@:native("glTexCoordP1ui")
	public static function texCoordP1ui(type:GLenum, coords:GLuint):Void;
	@:native("glTexCoordP1uiv")
	public static function texCoordP1uiv(type:GLenum, coords:Pointer<GLuint>):Void;
	@:native("glTexCoordP2ui")
	public static function texCoordP2ui(type:GLenum, coords:GLuint):Void;
	@:native("glTexCoordP2uiv")
	public static function texCoordP2uiv(type:GLenum, coords:Pointer<GLuint>):Void;
	@:native("glTexCoordP3ui")
	public static function texCoordP3ui(type:GLenum, coords:GLuint):Void;
	@:native("glTexCoordP3uiv")
	public static function texCoordP3uiv(type:GLenum, coords:Pointer<GLuint>):Void;
	@:native("glTexCoordP4ui")
	public static function texCoordP4ui(type:GLenum, coords:GLuint):Void;
	@:native("glTexCoordP4uiv")
	public static function texCoordP4uiv(type:GLenum, coords:Pointer<GLuint>):Void;
	@:native("glMultiTexCoordP1ui")
	public static function multiTexCoordP1ui(texture:GLenum, type:GLenum, coords:GLuint):Void;
	@:native("glMultiTexCoordP1uiv")
	public static function multiTexCoordP1uiv(texture:GLenum, type:GLenum, coords:Pointer<GLuint>):Void;
	@:native("glMultiTexCoordP2ui")
	public static function multiTexCoordP2ui(texture:GLenum, type:GLenum, coords:GLuint):Void;
	@:native("glMultiTexCoordP2uiv")
	public static function multiTexCoordP2uiv(texture:GLenum, type:GLenum, coords:Pointer<GLuint>):Void;
	@:native("glMultiTexCoordP3ui")
	public static function multiTexCoordP3ui(texture:GLenum, type:GLenum, coords:GLuint):Void;
	@:native("glMultiTexCoordP3uiv")
	public static function multiTexCoordP3uiv(texture:GLenum, type:GLenum, coords:Pointer<GLuint>):Void;
	@:native("glMultiTexCoordP4ui")
	public static function multiTexCoordP4ui(texture:GLenum, type:GLenum, coords:GLuint):Void;
	@:native("glMultiTexCoordP4uiv")
	public static function multiTexCoordP4uiv(texture:GLenum, type:GLenum, coords:Pointer<GLuint>):Void;
	@:native("glNormalP3ui")
	public static function normalP3ui(type:GLenum, coords:GLuint):Void;
	@:native("glNormalP3uiv")
	public static function normalP3uiv(type:GLenum, coords:Pointer<GLuint>):Void;
	@:native("glColorP3ui")
	public static function colorP3ui(type:GLenum, color:GLuint):Void;
	@:native("glColorP3uiv")
	public static function colorP3uiv(type:GLenum, color:Pointer<GLuint>):Void;
	@:native("glColorP4ui")
	public static function colorP4ui(type:GLenum, color:GLuint):Void;
	@:native("glColorP4uiv")
	public static function colorP4uiv(type:GLenum, color:Pointer<GLuint>):Void;
	@:native("glSecondaryColorP3ui")
	public static function secondaryColorP3ui(type:GLenum, color:GLuint):Void;
	@:native("glSecondaryColorP3uiv")
	public static function secondaryColorP3uiv(type:GLenum, color:Pointer<GLuint>):Void;
}
