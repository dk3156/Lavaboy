
uniform sampler2D diffuse;
varying vec2 texCoordVar;

void main() {
    gl_FragColor = texture2D(diffuse, texCoordVar);
}

void main()
{
    vec4 colour = texture2D(diffuse, texCoordVar);
    vec3 luminance = vec3(dot(vec3(0.2126,0.7,0.07), colour.rgb));
    vec3 interpolation = mix(luminance, colour.rgb, 0.5);
    gl_FragColor = vec4(colour.r, colour.b, colour.r, color.a);
}

