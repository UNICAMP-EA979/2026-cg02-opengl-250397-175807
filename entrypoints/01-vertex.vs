#version 330 core
// Recebe a position no location = 0
layout (location = 0) in vec3 position;
// e as uniforms mat4 modelTransformation, viewTransformation e projectionMatrix
uniform mat4 modelTransformation;
uniform mat4 viewTransformation;
uniform mat4 projectionMatrix;
// 
// Converte a position para o clip space usando as transformações e armazena em gl_Position.

// SEU CÓDIGO AQUI //////////////////////////////////////////////////////////////////////////

void main()
{
    // Tomando cuidado com a ordem, que é projection, view e model
    gl_Position = projectionMatrix * viewTransformation * modelTransformation * vec4(position, 1.0);
}

/////////////////////////////////////////////////////////////////////////////////////////////