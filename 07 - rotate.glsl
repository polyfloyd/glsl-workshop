// Deel 7 - rotate

// Ruimtelijke transformaties kunnen worden opgeslagen in een matrix. De
// transformatie kan worden toegepast op een of meerdere vectoren door de
// matrix en de vector te vermenigvuldigen.
//
// Deze functie bouwt een matrix rotatiematrix die rond de 0 coördinaat draait.
mat2 rotate(float angrad) {
	return mat2(
		 cos(angrad), sin(angrad),
		-sin(angrad), cos(angrad)
	);
}

void mainImage( out vec4 fragColor, in vec2 fragCoord ) {
	vec2 uv = fragCoord/iResolution.xy;

	float r = iTime;
	vec2 texUV = uv * rotate(r);

	vec3 col = texture(iChannel0, texUV).rgb;

	fragColor = vec4(col, 1.0);
}

// Opdracht:
// - Laat de afbeelding rond het midden draaien
// - Draai op basis van de afstand tot het midden en kijk wat er gebeurt!
