#pragma once
#include "Types.h"

struct Vertex
{
	Vec3 position;
	//Color color;
	Vec2 uv;
};

struct TransformData
{
	//Vec3 offset;
	//float dummy; // 16바이트 정렬을 해야해서 추가함.

	Matrix matWorld = Matrix::Identity;
	Matrix matView = Matrix::Identity;
	Matrix matProjection = Matrix::Identity;
};