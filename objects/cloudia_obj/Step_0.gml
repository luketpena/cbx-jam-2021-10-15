/// @description Movement Controller
var _left = keyboard_check(vk_left) || keyboard_check(ord("A"));
var _right = keyboard_check(vk_right) || keyboard_check(ord("D"));
var _up = keyboard_check(vk_up) || keyboard_check(ord("W"));
var _down = keyboard_check(vk_down) || keyboard_check(ord("S"));
//var _hspd = _right - _left;
//var _vspd = _down - _up;


   // var _spd = 4;
   // var _dir = point_direction(0, 0, _hspd, _vspd);
   // var _xadd = lengthdir_x(_spd, _dir);
   // var _yadd = lengthdir_y(_spd, _dir);
   var moveX = (_right - _left) * movespd;
      var moveY = (_down - _up) * movespd;
   hspd = approach(hspd, moveX, accel);
    vspd = approach(vspd, moveY, accel);
   x += hspd;
   y += vspd;
    //x = x + _xadd;
   // y = y + _yadd;
