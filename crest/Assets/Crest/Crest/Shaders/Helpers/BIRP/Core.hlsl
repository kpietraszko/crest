// Crest Ocean System

// Adds functions from SRP.

#ifndef BUILTIN_PIPELINE_CORE_INCLUDED
#define BUILTIN_PIPELINE_CORE_INCLUDED

#include "Common.hlsl"

// Taken from:
// com.unity.shadergraph@12.0.0/Editor/Generation/Targets/BuiltIn/ShaderLibrary/Core.hlsl

// Stereo-related bits
#if defined(UNITY_STEREO_INSTANCING_ENABLED) || defined(UNITY_STEREO_MULTIVIEW_ENABLED)

	#define SLICE_ARRAY_INDEX   unity_StereoEyeIndex

	#define TEXTURE2D_X(textureName)                                        TEXTURE2D_ARRAY(textureName)
	// #define TEXTURE2D_X_PARAM(textureName, samplerName)                     TEXTURE2D_ARRAY_PARAM(textureName, samplerName)
	// #define TEXTURE2D_X_ARGS(textureName, samplerName)                      TEXTURE2D_ARRAY_ARGS(textureName, samplerName)
	// #define TEXTURE2D_X_HALF(textureName)                                   TEXTURE2D_ARRAY_HALF(textureName)
	// #define TEXTURE2D_X_FLOAT(textureName)                                  TEXTURE2D_ARRAY_FLOAT(textureName)

	#define LOAD_TEXTURE2D_X(textureName, unCoord2)                         LOAD_TEXTURE2D_ARRAY(textureName, unCoord2, SLICE_ARRAY_INDEX)
	// #define LOAD_TEXTURE2D_X_LOD(textureName, unCoord2, lod)                LOAD_TEXTURE2D_ARRAY_LOD(textureName, unCoord2, SLICE_ARRAY_INDEX, lod)
	#define SAMPLE_TEXTURE2D_X(textureName, samplerName, coord2)            SAMPLE_TEXTURE2D_ARRAY(textureName, samplerName, coord2, SLICE_ARRAY_INDEX)
	// #define SAMPLE_TEXTURE2D_X_LOD(textureName, samplerName, coord2, lod)   SAMPLE_TEXTURE2D_ARRAY_LOD(textureName, samplerName, coord2, SLICE_ARRAY_INDEX, lod)
	// #define GATHER_TEXTURE2D_X(textureName, samplerName, coord2)            GATHER_TEXTURE2D_ARRAY(textureName, samplerName, coord2, SLICE_ARRAY_INDEX)
	// #define GATHER_RED_TEXTURE2D_X(textureName, samplerName, coord2)        GATHER_RED_TEXTURE2D(textureName, samplerName, float3(coord2, SLICE_ARRAY_INDEX))
	// #define GATHER_GREEN_TEXTURE2D_X(textureName, samplerName, coord2)      GATHER_GREEN_TEXTURE2D(textureName, samplerName, float3(coord2, SLICE_ARRAY_INDEX))
	// #define GATHER_BLUE_TEXTURE2D_X(textureName, samplerName, coord2)       GATHER_BLUE_TEXTURE2D(textureName, samplerName, float3(coord2, SLICE_ARRAY_INDEX))

	#define SAMPLE_DEPTH_TEXTURE_X(textureName, samplerName, coord2)          SAMPLE_TEXTURE2D_X(textureName, samplerName, coord2).r
	// #define SAMPLE_DEPTH_TEXTURE_LOD_X(textureName, samplerName, coord2, lod) SAMPLE_TEXTURE2D_LOD_X(textureName, samplerName, coord2, lod).r

#else // UNITY_STEREO

	#define SLICE_ARRAY_INDEX       0

	#define TEXTURE2D_X(textureName)                                        TEXTURE2D(textureName)
	// #define TEXTURE2D_X_PARAM(textureName, samplerName)                     TEXTURE2D_PARAM(textureName, samplerName)
	// #define TEXTURE2D_X_ARGS(textureName, samplerName)                      TEXTURE2D_ARGS(textureName, samplerName)
	// #define TEXTURE2D_X_HALF(textureName)                                   TEXTURE2D_HALF(textureName)
	// #define TEXTURE2D_X_FLOAT(textureName)                                  TEXTURE2D_FLOAT(textureName)

	#define LOAD_TEXTURE2D_X(textureName, unCoord2)                         LOAD_TEXTURE2D(textureName, unCoord2)
	// #define LOAD_TEXTURE2D_X_LOD(textureName, unCoord2, lod)                LOAD_TEXTURE2D_LOD(textureName, unCoord2, lod)
	#define SAMPLE_TEXTURE2D_X(textureName, samplerName, coord2)            SAMPLE_TEXTURE2D(textureName, samplerName, coord2)
	// #define SAMPLE_TEXTURE2D_X_LOD(textureName, samplerName, coord2, lod)   SAMPLE_TEXTURE2D_LOD(textureName, samplerName, coord2, lod)
	// #define GATHER_TEXTURE2D_X(textureName, samplerName, coord2)            GATHER_TEXTURE2D(textureName, samplerName, coord2)
	// #define GATHER_RED_TEXTURE2D_X(textureName, samplerName, coord2)        GATHER_RED_TEXTURE2D(textureName, samplerName, coord2)
	// #define GATHER_GREEN_TEXTURE2D_X(textureName, samplerName, coord2)      GATHER_GREEN_TEXTURE2D(textureName, samplerName, coord2)
	// #define GATHER_BLUE_TEXTURE2D_X(textureName, samplerName, coord2)       GATHER_BLUE_TEXTURE2D(textureName, samplerName, coord2)

	#define SAMPLE_DEPTH_TEXTURE_X(textureName, samplerName, coord2)          SAMPLE_TEXTURE2D_X(textureName, samplerName, coord2).r
	// #define SAMPLE_DEPTH_TEXTURE_LOD_X(textureName, samplerName, coord2, lod) SAMPLE_TEXTURE2D_LOD_X(textureName, samplerName, coord2, lod).r

#endif // UNITY_STEREO

#endif // BUILTIN_PIPELINE_CORE_INCLUDED
