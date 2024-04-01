#pragma once

class Game
{
public:
	Game();
	~Game();

public:
	void Init(HWND hwnd);
	void Update();
	void Render();

private:

	void CreateRasterizerState();
	void CreateSamplerState();
	void CreateBlendState();
	// Shader Resource View

private:
	HWND _hwnd;
	//uint32 _width = 0;
	//uint32 _height = 0;
	
	shared_ptr<Graphics> _graphics;
	//Graphics* _graphics;

private:
	// Geometry
	//vector<Vertex> _vertices;
	//vector<uint32> _indices;
	
	shared_ptr<Geometry<VertexTextureData>> _geometry;

	//ComPtr<ID3D11Buffer> _vertexBuffer = nullptr;
	shared_ptr<VertexBuffer> _vertexBuffer;
	//ComPtr<ID3D11Buffer> _indexBuffer = nullptr;
	shared_ptr<IndexBuffer> _indexBuffer;
	//ComPtr<ID3D11InputLayout> _inputLayout = nullptr;
	shared_ptr<InputLayout> _inputLayout;

	// VS
	shared_ptr<VertexShader> _vertexShader;
	//ComPtr<ID3D11VertexShader> _vertexShader = nullptr;
	//ComPtr<ID3DBlob> _vsBlob = nullptr;

	// RAS
	ComPtr<ID3D11RasterizerState> _rasterizerState = nullptr;

	// PS
	shared_ptr<PixelShader> _pixelShader;
	//ComPtr<ID3D11PixelShader> _pixelShader = nullptr;
	//ComPtr<ID3DBlob> _psBlob = nullptr;

	// SRV
	//ComPtr<ID3D11ShaderResourceView> _shaderResourceView = nullptr;
	//ComPtr<ID3D11ShaderResourceView> _shaderResourceView2 = nullptr;
	shared_ptr<Texture> _texture1;

	ComPtr<ID3D11SamplerState> _samplerState;
	ComPtr<ID3D11BlendState> _blendState;

	// [ CPU <-> RAM ] [ GPU <-> VRAM ]
private:
	// SRT
	TransformData _transformData;
	shared_ptr<ConstantBuffer<TransformData>> _constantBuffer;
	//ComPtr<ID3D11Buffer> _constantBuffer;

	uint64 _time = 0;

	Vec3 _localPosition = { 0.f, 0.f, 0.f };
	Vec3 _localRotation = { 0.f, 0.f, 0.f };
	Vec3 _localScale = { 1.f, 1.f, 1.f };
};

