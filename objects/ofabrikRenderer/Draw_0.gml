draw_set_color(c_green);
for (var i = 0; i < POINT_COUNT - 1; i++) {
	var current = points[i];
	var next = points[i + 1];
	draw_line(current.x, current.y, next.x, next.y);
}

draw_set_color(c_lime);
for (var i = 0; i < POINT_COUNT; i++) {
	draw_point(points[i].x, points[i].y);
}
