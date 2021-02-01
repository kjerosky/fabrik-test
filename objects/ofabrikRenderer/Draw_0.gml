draw_set_color(c_green);
for (var i = 0; i < POINT_COUNT - 1; i++) {
	var current = points[i];
	var next = points[i + 1];
	draw_line(current.x, current.y, next.x, next.y);
}

draw_set_color(c_lime);
for (var i = 0; i < POINT_COUNT; i++) {
	draw_circle(points[i].x, points[i].y, POINT_DRAW_RADIUS, false);
}

draw_set_color(c_red);
if (mousePositionCaptured) {
	window_set_cursor(cr_none);
	draw_line(mouse_x - 2, mouse_y - 2, mouse_x + 3, mouse_y + 3);
	draw_line(mouse_x - 2, mouse_y + 3, mouse_x + 3, mouse_y - 2);
} else {
	draw_set_halign(fa_center);
	draw_set_valign(fa_top);
	draw_text(oCamera.VIEW_WIDTH / 2, 0, "Move the mouse to begin!");
}
