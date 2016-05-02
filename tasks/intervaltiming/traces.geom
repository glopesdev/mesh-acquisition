#version 400
layout(lines) in;
layout(line_strip, max_vertices = 2) out;
uniform int buffer_size = 200;

void main()
{
  if(gl_PrimitiveIDIn % buffer_size != (buffer_size - 1))
  {
    gl_Position = gl_in[0].gl_Position;
    EmitVertex();

    gl_Position = gl_in[1].gl_Position;
    EmitVertex();
  }
  EndPrimitive();
}
