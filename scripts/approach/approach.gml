///@arg current_value
///@arg target_value
///@arg change_amount


var _current_value = argument0;
var _target_value = argument1;
var _change_amount = argument2;

if _current_value < _target_value
{
	_current_value += _change_amount;
	_current_value = min(_current_value,_target_value);
}
else
{
	_current_value -= _change_amount;
	_current_value = max(_current_value,_target_value);
}

return _current_value;