
varying vec2 vUv;
uniform float time;

void main() {

    vUv = uv;
    vec3 newpos = position;
    newpos.x += sin(position.y * 10.0 + time) * 0.1;
    newpos.y += sin(position.x * 5.0 + time) * 0.1;



    vec4 mvPosition = modelViewMatrix * vec4(newpos, 1.0);

    gl_PointSize = ( 30.0 / -mvPosition.z );

    gl_Position = projectionMatrix * mvPosition;
}