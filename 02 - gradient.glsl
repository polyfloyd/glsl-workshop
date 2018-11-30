// Deel 2 - gradient

void mainImage( out vec4 fragColor, in vec2 fragCoord ) {
	vec2 uv = fragCoord/iResolution.xy;

	// Een basiskleur met een coefficient die bepaald hoe zichtbaar de kleur is.
	vec3 col = vec3(0, 0, 1) * uv.x;

	fragColor = vec4(col, 1.0);
}

// Opdracht:
// - Maak twee vlakken met een harde scheiding (tip, gebruik de "step()"
//   functie).
// - Laat de kleur knipperen op basis van de tijd (tip, gebruik de "iTime"
//   variabele en de "sin()" functie).
