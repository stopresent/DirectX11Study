
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

// IA - VS - RS - PS - OM
// ��ġ�� ����
VS_OUTPUT VS(VS_INPUT input)
{
	VS_OUTPUT output;

	output.position = input.position;
	output.color = input.color;

	return output;
}

// ����� ����
float4 PS(VS_OUTPUT input) : SV_Target
{
	return input.color;
}

//PS_OUTPUT PS(PS_INPUT input)
//{
//
//}