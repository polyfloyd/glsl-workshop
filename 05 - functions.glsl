// Deel 5 - functies

float checkers(vec2 p) {
	float yOffset = step(mod(p.y, 2), 1);
	return step(mod(p.x + yOffset, 2), 1);
}

void mainImage( out vec4 fragColor, in vec2 fragCoord ) {
	vec2 uv = fragCoord/iResolution.xy;

	vec3 col = vec3(1, 0, 1) * checkers(fragCoord * .01 + iTime * 2);

	fragColor = vec4(col, 1.0);
}

// Opdracht:
// - Schrijf een nieuwe functie die iets leuks doet en een kleur (vec3)
//   returned. Laat beide functie outputs in elkaar overlopen met bijvoorbeeld
//   mix().
