// Helpful link on FABRIK:
// https://sean.cm/a/fabrik-algorithm-2d

var target = {
	x: mouse_x,
	y: mouse_y
};

// Don't attempt to move points until the mouse position is properly captured.
if (!mousePositionCaptured && target.x <= 0 && target.y <= 0) {
	exit;
}
mousePositionCaptured = true;

// Reach forward towards the mouse position.
for (var i = 0; i < POINT_COUNT - 1; i++) {
	var reachResult = fabrikReach(points[i], points[i + 1], target);

	points[i] = reachResult.newHead;
	target = reachResult.newTail;
}
points[POINT_COUNT - 1] = target;

// Reach backward towards the anchor.
target = anchor;
for (var i = POINT_COUNT - 1; i >= 1; i--) {
	var reachResult = fabrikReach(points[i], points[i - 1], target);

	points[i] = reachResult.newHead;
	target = reachResult.newTail;
}
points[0] = target;
