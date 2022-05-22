varying vec2 v_vTexcoord;
varying vec4 v_vColour;
void main() {
    vec4 source = v_vColour * texture2D( gm_BaseTexture, v_vTexcoord );
    float brightness = dot( vec3( 0, 0, 0 ), source.rgb );
    gl_FragColor = vec4( vec3( brightness ), source.a );
}
