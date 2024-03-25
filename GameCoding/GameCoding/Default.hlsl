
// ���̴��� �����
// �� �ΰ���
// 1. ����� ���̴����� (.cso)������ �����ؼ� ���
// 2. ���α׷��� ����� �� ���̴� �ڵ带 �а� �������ؼ� �������� ����ϴ� ���

struct VS_INPUT
{
	float4 position : POSITION;
	//float4 color : COLOR;
	float2 uv : TEXCOORD;
};

// SV : system value ������ �־�ߵȴٴ� ���̶�׿�
struct VS_OUTPUT
{
	float4 position : SV_POSITION;
	//float4 color : COLOR;
	float2 uv : TEXCOORD;
};

// IA - VS - RS - PS - OM
// ��ġ�� ����
VS_OUTPUT VS(VS_INPUT input)
{
	VS_OUTPUT output;

	output.position = input.position;
	//output.color = input.color;
	output.uv = input.uv;

	return output;
}

Texture2D texture0 : register(t0);
Texture2D texture1 : register(t1);
SamplerState sampler0 : register(s0);

// ����� ����
float4 PS(VS_OUTPUT input) : SV_Target
{
	float4 color = texture0.Sample(sampler0, input.uv);

	return color;
}

//PS_OUTPUT PS(PS_INPUT input)
//{
//
//}