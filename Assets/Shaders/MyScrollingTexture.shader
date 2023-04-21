Shader "Custom/MyScrollingTexture"
{
    Properties
    {
        _MainTex ("Water", 2D) = "white" {}
        _ScrollX ("Scroll X", Range(-20, 5)) = 1
        _ScrollY ("Scroll Y", Range(-20, 5)) = 1
    }
    SubShader
    {
        CGPROGRAM
        // Physically based Standard lighting model, and enable shadows on all light types
        #pragma surface surf Lambert

        sampler2D _MainTex;
        float _ScrollX;
        float _ScrollY;

        struct Input
        {
            float2 uv_MainTex;
        };

        void surf (Input IN, inout SurfaceOutput o)
        {
            _ScrollX *= _Time;
            _ScrollY *= _Time;
            float3 water = (tex2D(_MainTex, IN.uv_MainTex + float2(_ScrollX, _ScrollY))).rgb;
                o.Albedo = water/ 2.0;
        }
        ENDCG
    }
    FallBack "Diffuse"
}
