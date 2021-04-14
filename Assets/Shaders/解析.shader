PBR解析

//漫反射系数
float3 F0 = lerp(unity_ColorSpaceDielectricSpec.rgb, Albedo, _Metallic);
float3 F = F0 + (1 - F0) * exp2((-5.55473 * vh - 6.98316) * vh);
float3 kd = (1 - F)*(1 - _Metallic);

float3 diffColor = kd * Albedo * lightColor * nl;

















