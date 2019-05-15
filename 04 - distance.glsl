// Deel 4 - distance

void mainImage( out vec4 fragColor, in vec2 fragCoord ) {
	vec2 uv = fragCoord/iResolution.xy;

	// Berekend de afstand tot het midden van het scherm.
	float dist = distance(uv, vec2(.5));

	// Inverteer de afstand en laat deze wat sneller oplopen.
	float sphere = 1. - dist * 4.;

	vec3 col = vec3(0, 0, 1) * sphere;

	fragColor = vec4(col, 1.0);
}

// Opdracht:
// - Maak de vlag van Japan
// - Maak de vlag van Groenland (tip, gebruik een if/else constructie of bedenk
//   een manier om twee floats te XORen)
