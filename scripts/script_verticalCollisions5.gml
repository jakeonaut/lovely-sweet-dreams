/// script_verticalCollisions5(obj)
var obj = argument0;

// top collision
solid_obj = collision_rectangle(x-lb/2, y-tb+yvel-1, x+rb/2, y, obj, false, true);
if (solid_obj) {
    yvel = 0.5;
    y = solid_obj.y+(solid_obj.sprite_height/2)+tb;
}
// bottom collision
solid_obj = collision_rectangle(x-lb/2, y, x+rb/2, y+bb+yvel+1, obj, false, true);
if (solid_obj) {
    yvel = 0;
    y = solid_obj.y-(solid_obj.sprite_height/2)-bb;
} else {
    on_ground = false
}
