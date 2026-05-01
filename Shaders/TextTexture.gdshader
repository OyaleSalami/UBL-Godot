shader_type canvas_item;

uniform sampler2D text_texture;
uniform vec4 tint_color : source_color = vec4(1.0); // Default to white

void vertex() {
	// Called for every vertex the material is visible on.
}

void fragment() 
{
    // Get the texture color
    vec4 tex_color = texture(text_texture, UV);
    
    // Multiply texture color by your custom tint color
    vec3 final_rgb = tex_color.rgb * tint_color.rgb;
    
    // Maintain the text's original alpha (transparency)
    float alpha = texture(TEXTURE, UV).a * tint_color.a;
    
    COLOR = vec4(final_rgb, alpha);
}

//void light() {
//	// Called for every pixel for every light affecting the CanvasItem.
//	// Uncomment to replace the default light processing function with this one.
//}
