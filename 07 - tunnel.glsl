// Deel 7 - tunnel

const float PI = 3.1415;

void mainImage( out vec4 fragColor, in vec2 fragCoord ) {
	// Door 0.5 van uv af te halen bewegen we het 0 punt naar het midden van
	// het scherm.
	vec2 uv = fragCoord/iResolution.xy - 0.5;

	vec2 tunnelUV = vec2(
		// Voor de X-as nemen we logaritme van de afstand tot het midden.
		log(length(uv) * 2.),
		// De Y loopt in een boog rond het midden. Met de atan() functie kunnen
		// we de hoek van een vector berekenen. De return waarde ligt in
		// [-PI, PI].
		(atan(uv.y, uv.x) / PI) * .5 + .5
	);

	vec2 texUV = tunnelUV;
	vec3 col = texture(iChannel0, texUV).rgb;

	fragColor = vec4(col, 1.0);
}

// Opdracht:
// - Laat de tunnel zoomen op basis van de tijd
// - Laat de tunnel draaien op basis van de tijd
