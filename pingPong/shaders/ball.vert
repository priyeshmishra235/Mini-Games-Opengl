#version 330 core

layout(location = 0) in vec2 aPos;
layout(location = 1) in vec2 aTex;

out vec2 texCoord;

uniform mat4 model;
uniform mat4 projection;

void main() {
    vec4 position = vec4(aPos, 0.0, 1.0);
    gl_Position = projection * model * position;
    texCoord = aTex;
}
