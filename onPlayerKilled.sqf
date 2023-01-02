
private _highScore = profileNamespace getVariable ["LND_shoot_highScore", 0];

if(_highScore < LND_shoot_score) then {
	profileNamespace setVariable ["LND_shoot_highScore", LND_shoot_score];
	titleText [format ["<t size='6'>You are Dead!</t><br/><br/><t size='3'>Final Score: %1</t><br/><br/><t size='2'>New High Score!</t>", LND_shoot_score], "PLAIN", -1, true, true];
}
else{
	titleText [format ["<t size='6'>You are Dead!</t><br/><br/><t size='3'>Final Score: %1</t><br/><br/><t size='2'>High Score: %2</t>", LND_shoot_score, _highScore], "PLAIN", -1, true, true];
};

