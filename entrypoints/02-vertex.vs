#version 330 core

// Utilize como base o 01-vertex.vs
// Adicione o input da UV na location=1, e crie uma nova saída para fornecer a UV ao fragment

// SEU CÓDIGO AQUI //////////////////////////////////////////////////////////////////////////
layout (location = 0) in vec3 aPos;  // Posição do vértice
layout (location = 1) in vec2 aTexCoord; // Coordenada da textura (UV)

out vec2 uv;

uniform mat4 modelTransformation;
uniform mat4 viewTransformation;
uniform mat4 projectionMatrix;

void main()
{
    gl_Position = projectionMatrix * viewTransformation * modelTransformation * vec4(aPos, 1.0);
    uv = aTexCoord;
}

/////////////////////////////////////////////////////////////////////////////////////////////