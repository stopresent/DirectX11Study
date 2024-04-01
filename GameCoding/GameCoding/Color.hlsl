
// ���̴��� �����
// �� �ΰ���
// 1. ����� ���̴����� (.cso)������ �����ؼ� ���
// 2. ���α׷��� ����� �� ���̴� �ڵ带 �а� �������ؼ� �������� ����ϴ� ���

struct VS_INPUT
{
	float4 position : POSITION;
	float4 color : COLOR;
};

// SV : system value ������ �־�ߵȴٴ� ���̶�׿�
struct VS_OUTPUT
{
	float4 position : SV_POSITION;
	float4 color : COLOR;
};

cbuffer TransformData : register(b0)
{
	//float4 offset;
	row_major matrix matWorld;
	row_major matrix matView;
	row_major matrix matProjection;
}

// IA - VS - RS - PS - OM
// ��ġ�� ����
VS_OUTPUT VS(VS_INPUT input)
{
	VS_OUTPUT output;

	// WVP
	float4 position = mul(input.position, matWorld); // W
	position = mul(position, matView); // V
	position = mul(position, matProjection); // P

	output.position = position;
	output.color = input.color;

	return output;
}

Texture2D texture0 : register(t0);
Texture2D texture1 : register(t1);
SamplerState sampler0 : register(s0);

// ����� ����
float4 PS(VS_OUTPUT input) : SV_Target
{
	float4 color = input.color;

	return color;
}