#version 450

in vec3 pos;
in vec2 tex;
in vec3 nor;
in vec3 bitangent;
in vec3 tangent;
uniform mat4 V;
uniform mat4 P;
uniform mat4 M;

//The time of the frame
uniform float time;

// Add animation parameters you need here
// See the comments in the SceneParameters and ShaderProgram structs/classes for how to add them on the CPU side

#define M_PI 3.1415926535897932384626433832795

void main() {

	// Don't remove these dummy calculations when working with DirectX, otherwise, the program will not run since the attributes are optimized away
	vec3 dontremoveme = nor; vec2 meneither = tex; dontremoveme = bitangent; dontremoveme = tangent;


	/************************************************************************/
	/* Exercise P6.2: Implement the characteristic PacMan eating animation   /
	 * here. See the video on the website for reference.                     /
	/************************************************************************/

    // Set the position of the vertex
	gl_Position = P * V * M * vec4(pos, 1.0);
}
