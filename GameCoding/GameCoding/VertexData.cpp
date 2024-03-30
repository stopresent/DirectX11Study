#include "pch.h"
#include "VertexData.h"

vector<D3D11_INPUT_ELEMENT_DESC> VertexTextureData::desc =
{
	{ "POSITION", 0, DXGI_FORMAT_R32G32B32_FLOAT, 0, 0, D3D11_INPUT_PER_VERTEX_DATA, 0 },
	// Ver3�� 12����Ʈ�� �����ϹǷ� color�� 12���� �����Ѵٰ� �˷������.
	// D3D11_APPEND_ALIGNED_ELEMENT �� �ڵ����� �������
	{ "TEXCOORD", 0, DXGI_FORMAT_R32G32_FLOAT, 0, D3D11_APPEND_ALIGNED_ELEMENT, D3D11_INPUT_PER_VERTEX_DATA, 0 },
};

vector<D3D11_INPUT_ELEMENT_DESC> VertexColorData::desc =
{
	{ "POSITION", 0, DXGI_FORMAT_R32G32B32_FLOAT, 0, 0, D3D11_INPUT_PER_VERTEX_DATA, 0 },
	// Ver3�� 12����Ʈ�� �����ϹǷ� color�� 12���� �����Ѵٰ� �˷������.
	// D3D11_APPEND_ALIGNED_ELEMENT �� �ڵ����� �������
	{ "COLOR", 0, DXGI_FORMAT_R32G32B32A32_FLOAT, 0, D3D11_APPEND_ALIGNED_ELEMENT, D3D11_INPUT_PER_VERTEX_DATA, 0 },
};