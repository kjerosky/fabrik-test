SEGMENT_LENGTH = 20;

anchor = {
	x: oCamera.VIEW_WIDTH / 2,
	y: oCamera.VIEW_HEIGHT / 2
};

// The last point is the anchor, and the first is the one actively
// reaching towards the target.
POINT_COUNT = 5;
points = array_create(POINT_COUNT);
points[POINT_COUNT - 1] = {
	x: anchor.x,
	y: anchor.y
};
for (var i = POINT_COUNT - 2; i >= 0; i--) {
	points[i] = {
		x: points[i + 1].x + SEGMENT_LENGTH,
		y: points[i + 1].y
	};
}

mousePositionCaptured = false;
