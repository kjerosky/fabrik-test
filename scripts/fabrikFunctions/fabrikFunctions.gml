// Takes a segment and returns the result of reaching for a target point.
// Parameters:
//   head: { x: number, y: number }
//   tail: { x: number, y: number }
//   target: { x: number, y: number }
// Returns:
//   {
//     newHead: { x: number, y: number },
//     newTail: { x: number, y: number }
//   }
function fabrikReach(head, tail, target){
	var segmentLength = point_distance(tail.x, tail.y, head.x, head.y);
	var directionFromTargetToTail = point_direction(target.x, target.y, tail.x, tail.y);
	var movedTail = {
		x: target.x + lengthdir_x(segmentLength, directionFromTargetToTail),
		y: target.y + lengthdir_y(segmentLength, directionFromTargetToTail)
	};

	return {
		newHead: target,
		newTail: movedTail
	};
}
