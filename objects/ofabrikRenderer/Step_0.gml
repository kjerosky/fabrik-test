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

var head = points[0];
var tail = points[1];

var segmentLength = point_distance(tail.x, tail.y, head.x, head.y);

var newHead = target;
var directionFromNewHeadToTail = point_direction(newHead.x, newHead.y, tail.x, tail.y);

var newTail = {
	x: newHead.x + lengthdir_x(segmentLength, directionFromNewHeadToTail),
	y: newHead.y + lengthdir_y(segmentLength, directionFromNewHeadToTail)
};

points[0] = newHead;
points[1] = newTail;
