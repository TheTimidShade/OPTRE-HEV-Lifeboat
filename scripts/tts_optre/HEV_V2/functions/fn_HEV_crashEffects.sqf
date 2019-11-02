//Crash effects for HEV script

_HEV = _this select 0;
_id = clientOwner;
	
enableCamShake true;
playSound "crashlanding";
playSound "crashringing";

[_HEV, ["crashlanding", 300]] remoteExec ["say3D", -_id];
		
cutText ["", "WHITE IN", 1];
addCamShake [8,3,25];

"DynamicBlur" ppEffectEnable true;   
"DynamicBlur" ppEffectAdjust [10];
"DynamicBlur" ppEffectCommit 0;     
"DynamicBlur" ppEffectAdjust [0];
"DynamicBlur" ppEffectCommit 6;  
sleep 6;
"radialBlur" ppEffectEnable false;