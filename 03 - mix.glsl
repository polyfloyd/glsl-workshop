// Deel 3 - mix

void mainImage( out vec4 fragColor, in vec2 fragCoord ) {
	vec2 uv = fragCoord/iResolution.xy;

	vec3 col1 = vec3(1, 0, 0);
	vec3 col2 = vec3(0, 0, 1);

	// Laat de twee kleuren in elkaar overlopen op basis van de X as.
	vec3 col = mix(col1, col2, uv.x);

	fragColor = vec4(col, 1.0);
}

// Opdracht:
// - Maak de vlag van Den Haag (tip, maak gebruik van de "step()" functie)
