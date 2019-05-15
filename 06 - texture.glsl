// Deel 6 - texture

void mainImage( out vec4 fragColor, in vec2 fragCoord ) {
	vec2 uv = fragCoord/iResolution.xy;

	// iChannel0 is een "sampler2D" dedeclareerd door Shadertoy.
	//
	// De texture functie interpoleert een kleur op basis van een coordinaat in
	// [0, 1].
	vec3 col = texture(iChannel0, uv).rgb;

	fragColor = vec4(col, 1.0);
}

// Opdracht:
// - Spiegel de afbeelding over de Y as
// - Toon de afbeelding in zwart-wit (tip, gebruik de "length()" functie op de texture)
