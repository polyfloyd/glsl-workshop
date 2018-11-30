// Deel 1 - main

// mainImage wordt voor iedere pixel in het beel 1 keer uitgevoerd.
//
// fragColor is een RGBA vector van de uiteindelijke kleur van de pixel. Dit is
// de return waarde.
//
// fragCoord is de XY positie van de pixel waar we een kleur voor berekenen.
void mainImage( out vec4 fragColor, in vec2 fragCoord ) {
	// Normalizeer het coordinatenstelsel naar [0, 1]. Hierdoor blijft de
	// animatie hetzelfde ongeacht van de resolutie waar we voor renderen.
	//
	// We delen een 2D vector door nog een 2D vector.
	//
	// iResolution is de resolutie van het venster, zoals (1920, 1080). Dit is
	// een 4D vector, dus we moeten alleen de X en Y kolommen met `.xy`. Dit
	// wordt in GLSL "swizzling" genoemd.
	vec2 uv = fragCoord/iResolution.xy;

	// Bereken een kleur voor de pixel.
	vec3 col = vec3(1, 0, 0);

	// Schrijf de berekende kleur naar de output. De 1.0 is het alphacomponent.
	fragColor = vec4(col, 1.0);
}

// Opdracht:
// - Maak het hele scherm blauw
// - Maak het hele scherm magenta
// - Maak het hele scherm oranje
