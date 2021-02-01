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

for (var i = 0; i < POINT_COUNT - 1; i++) {
	var head = points[i];
	var tail = points[i + 1];
	var segmentLength = point_distance(tail.x, tail.y, head.x, head.y);

	var directionFromTargetToTail = point_direction(target.x, target.y, tail.x, tail.y);
	var newTail = {
		x: target.x + lengthdir_x(segmentLength, directionFromTargetToTail),
		y: target.y + lengthdir_y(segmentLength, directionFromTargetToTail)
	};

	points[i] = target;
	target = newTail;
}
points[POINT_COUNT - 1] = target;
