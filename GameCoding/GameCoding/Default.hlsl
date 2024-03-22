
// 쉐이더의 사용방법
// 총 두가지
// 1. 빌드된 쉐이더파일 (.cso)파일을 빌드해서 사용
// 2. 프로그램이 실행될 때 쉐이더 코드를 읽고 컴파일해서 동적으로 사용하는 방법

struct VS_INPUT
{
	float4 position : POSITION;
	float4 color : COLOR;
};

// SV : system value 무조건 있어야된다는 뜻이라네여
struct VS_OUTPUT
{
	float4 position : SV_POSITION;
	float4 color : COLOR;
};

// IA - VS - RS - PS - OM
// 위치와 관련
VS_OUTPUT VS(VS_INPUT input)
{
	VS_OUTPUT output;

	output.position = input.position;
	output.color = input.color;

	return output;
}

// 색상과 관련
float4 PS(VS_OUTPUT input) : SV_Target
{
	return input.color;
}

//PS_OUTPUT PS(PS_INPUT input)
//{
//
//}