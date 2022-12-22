/*
	Author:
		Landric

	Description:
		Defines for internal wall/furniture and unit placements.

	Example Usage:
		#include "rooms.sqf"
*/

// [[furniture, [pos], dir], [unit, [pos], [stance]]]
LND_shoot_interiors = [	
	[
		[
			["Land_Shoot_House_Corner_F", [-5.5,-5.5,0], 0],
			["Land_Shoot_House_Corner_F", [5.5,-5.5,0], 270],
			["Land_Shoot_House_Corner_F", [5.5,5.5,0], 180],
			["Land_Shoot_House_Corner_F", [-5.5,5.5,0], 90],
			["Land_Shoot_House_Wall_Long_Crouch_F", [0,-4,0], 0],
			["Land_Shoot_House_Wall_Long_Crouch_F", [0,4,0], 180],
			["Land_Shoot_House_Wall_Long_Crouch_F", [4,0,0], 270],
			["Land_Shoot_House_Wall_Long_Crouch_F", [-4,0,0], 90]
		],
		[
			[[ 0, 0,0], ["MIDDLE"]],
			[[ 0,-3,0], ["MIDDLE"]],
			[[-3, 0,0], ["MIDDLE"]],
			[[ 0, 3,0], ["MIDDLE"]],
			[[ 3, 0,0], ["MIDDLE"]],
			[[ 5,-5,0], ["UP", "MIDDLE"]],
			[[-5,-5,0], ["UP", "MIDDLE"]],
			[[-5, 5,0], ["UP", "MIDDLE"]],
			[[ 5, 5,0], ["UP", "MIDDLE"]],
			[[-8, 8,0], ["UP"]],
			[[-8,-8,0], ["UP"]],
			[[ 8,-8,0], ["UP"]],
			[[ 8, 8,0], ["UP"]]
		]
	],
	[
		[
			["Land_Shoot_House_Corner_F", [-5.5,-5.5,0], 0],
			["Land_Shoot_House_Corner_F", [5.5,-5.5,0], 270],
			["Land_Shoot_House_Corner_F", [5.5,5.5,0], 180],
			["Land_Shoot_House_Corner_F", [-5.5,5.5,0], 90],
			["Land_Shoot_House_Wall_Long_Crouch_F", [0,-4,0], 0],
			["Land_Shoot_House_Wall_Long_Crouch_F", [0,4,0], 180],
			["Land_Shoot_House_Wall_Long_Crouch_F", [4,0,0], 270],
			["Land_Shoot_House_Wall_Long_Crouch_F", [-4,0,0], 90]
		],
		[
			[[ 0, 0,0], ["MIDDLE"]],
			[[ 0,-3,0], ["MIDDLE"]],
			[[-3, 0,0], ["MIDDLE"]],
			[[ 0, 3,0], ["MIDDLE"]],
			[[ 3, 0,0], ["MIDDLE"]],
			[[ 5,-5,0], ["UP", "MIDDLE"]],
			[[-5,-5,0], ["UP", "MIDDLE"]],
			[[-5, 5,0], ["UP", "MIDDLE"]],
			[[ 5, 5,0], ["UP", "MIDDLE"]],
			[[-8, 8,0], ["UP"]],
			[[-8,-8,0], ["UP"]],
			[[ 8,-8,0], ["UP"]],
			[[ 8, 8,0], ["UP"]]
		]
	],
	[
		[
			["Land_Shoot_House_Wall_Long_F",[-5,-5,0],45],
			["Land_Shoot_House_Wall_Long_F",[5,-5,0],315],
			["Land_Shoot_House_Wall_Long_F",[5,5,0],225],
			["Land_Shoot_House_Wall_Long_F",[-5,5,0],135],
			["Land_Shoot_House_Corner_F",[1,1,0],0],
			["Land_Shoot_House_Corner_F",[1,-1,0],90],
			["Land_Shoot_House_Corner_F",[-1,-1,0],180],
			["Land_Shoot_House_Corner_F",[-1,1,0],270],
			["Land_Shoot_House_Tunnel_F",[0,3,0],0],
			["Land_Shoot_House_Tunnel_F",[0,-3,0],180],
			["Land_Shoot_House_Tunnel_F",[-3,0,0],270],
			["Land_Shoot_House_Tunnel_F",[3,0,0],90]
		],
		[
			[[8,-8,0],["MIDDLE", "UP"]],
			[[3,-3,0],["MIDDLE", "UP"]],
			[[-3,-3,0],["MIDDLE", "UP"]],
			[[3,3,0],["MIDDLE", "UP"]],
			[[-3,3,0],["MIDDLE", "UP"]],
			[[0,0,0],["MIDDLE", "UP"]],
			[[0,3,0],["MIDDLE", "UP"]],
			[[-3,0,0],["MIDDLE", "UP"]],
			[[3,0,0],["MIDDLE", "UP"]],
			[[0,-3,0],["MIDDLE", "UP"]],
			[[8,8,0],["MIDDLE", "UP"]],
			[[-8,8,0],["MIDDLE", "UP"]],
			[[-8,-8,0],["MIDDLE", "UP"]]
		]
	],
	[
		[
			["Land_Shoot_House_Tunnel_Crouch_F",[4,4,0],90],
			["Land_Shoot_House_Tunnel_Crouch_F",[-4,-4,0],90],
			["Land_Shoot_House_Tunnel_Crouch_F",[2.5,0,0],180],
			["Land_Shoot_House_Tunnel_Crouch_F",[-4,4,0],90],
			["Land_Shoot_House_Tunnel_Crouch_F",[-2.5,0,0],180],
			["Land_Shoot_House_Tunnel_Crouch_F",[4,-4,0],90],
			["Land_Shoot_House_Wall_Crouch_F",[5.4,4,0],270],
			["Land_Shoot_House_Wall_Crouch_F",[2.6,4,0],270],
			["Land_Shoot_House_Wall_Crouch_F",[-5.4,4,0],270],
			["Land_Shoot_House_Wall_Crouch_F",[-2.6,4,0],270],
			["Land_Shoot_House_Wall_Crouch_F",[-2.5,1.4,0],0],
			["Land_Shoot_House_Wall_Crouch_F",[-2.5,-1.4,0],0],
			["Land_Shoot_House_Wall_Crouch_F",[2.5,1.4,0],0],
			["Land_Shoot_House_Wall_Crouch_F",[2.5,-1.4,0],0],
			["Land_Shoot_House_Wall_Crouch_F",[2.6,-4,0],270],
			["Land_Shoot_House_Wall_Crouch_F",[5.4,-4,0],270],
			["Land_Shoot_House_Wall_Crouch_F",[-5.4,-4,0],270],
			["Land_Shoot_House_Wall_Crouch_F",[-2.6,-4,0],270]
		],
		[
			[[4.5,0,0],["UP"]],
			[[0,0,0],["UP"]],
			[[-4.5,0,0],["UP"]],
			[[0,4,0],["UP"]],
			[[0,-4,0],["UP"]]
		]
	],
	[
		[
			["Land_Shoot_House_Wall_Long_F",[3,-6,0],180],
			["Land_Shoot_House_Wall_Long_F",[5,-4,0],90],
			["Land_Shoot_House_Wall_Long_F",[-5,0,0],90],
			["Land_Shoot_House_Wall_Long_F",[-5,-4,0],270],
			["Land_Shoot_House_Wall_Long_F",[-3,-6,0],180],
			["Land_Shoot_House_Wall_Long_F",[0,-4,0],0],
			["Land_Shoot_House_Wall_Long_F",[-5,4,0],270],
			["Land_Shoot_House_Wall_Long_F",[0,-2,0],180],
			["Land_Shoot_House_Wall_Long_F",[5,2,0],90],
			["Land_Shoot_House_Wall_Long_F",[3,4,0],0],
			["Land_Shoot_House_Wall_Long_F",[-1,6,0],180],
			["Land_Shoot_House_Wall_Long_F",[3,6,0],0],
			["Land_Shoot_House_Wall_Long_F",[-3,2,0],180],
			["Land_Shoot_House_Wall_Long_F",[2,0,0],270],
			["Land_Shoot_House_Wall_Long_F",[-3,0,0],180]
		],
		[
			[[-4,1,0],["UP"]],
			[[3.5,3,0],["UP"]],
			[[1,-1,0],["UP"]],
			[[3.8,-4,0],["UP"]],
			[[-4,-4,0],["UP"]],
			[[0,5,0],["UP"]],
			[[0,-3,0],["UP"]]
		]
	],
	[
		[
			["Land_Shoot_House_Wall_Long_F",[2,-4,0],90],
			["Land_Shoot_House_Wall_Long_F",[-2,-4,0],270],
			["Land_Shoot_House_Wall_Long_Prone_F",[0,0,0],270],
			["Land_Shoot_House_Wall_Long_Prone_F",[0,0,0],180],
			["Land_Shoot_House_Wall_Long_Prone_F",[0,0,0],90],
			["Land_Shoot_House_Wall_Long_F",[4,2,0],0],
			["Land_Shoot_House_Wall_Long_F",[4,-2,0],180],
			["Land_Shoot_House_Wall_Long_Prone_F",[0,0,0],0],
			["Land_Shoot_House_Wall_Long_F",[-4,-2,0],180],
			["Land_Shoot_House_Wall_Long_F",[2.2,4,0],88],
			["Land_Shoot_House_Wall_Long_F",[-2,4,0],270],
			["Land_Shoot_House_Wall_Long_F",[-4,2,0],0]
		],
		[
			[[1,1,0],["UP"]],
			[[1,-1,0],["UP"]],
			[[-1,-1,0],["UP"]],
			[[-1,1,0],["UP"]],
			[[4,4,0],["UP"]],
			[[4,-4,0],["UP"]],
			[[-4,-4,0],["UP"]],
			[[-4,4,0],["UP"]]
		]
	],
	[
		[
			["Land_Shoot_House_Wall_Long_Prone_F",[-4,6,0],180],
			["Land_Shoot_House_Wall_Long_Prone_F",[0,4,0],180],
			["Land_Shoot_House_Wall_Long_Prone_F",[-0,-4,0],360],
			["Land_Shoot_House_Wall_Long_Prone_F",[4,6,0],180],
			["Land_Shoot_House_Wall_Long_Prone_F",[-4,-6,0],360],
			["Land_Shoot_House_Wall_Long_Prone_F",[4,-6,0],360],
			["Land_Shoot_House_Wall_Long_Prone_F",[6,0,0],270],
			["Land_Shoot_House_Wall_Long_Prone_F",[-6,0,0],90],
			["Land_Shoot_House_Wall_Prone_F",[6,5,0],90],
			["Land_Shoot_House_Wall_Prone_F",[6,-5,0],90],
			["Land_Shoot_House_Wall_Prone_F",[-6,-5,0],90],
			["Land_Shoot_House_Wall_Prone_F",[-6,5,0],90],
			["Land_Shoot_House_Wall_Crouch_F",[2,0,0],90],
			["Land_Shoot_House_Wall_Crouch_F",[-2,0,0],90]
		],
		[
			[[-5,-5,0],["MIDDLE"]],
			[[-5,0,0],["MIDDLE"]],
			[[-5,5,0],["MIDDLE"]],
			[[5,5,0],["MIDDLE"]],
			[[5,-5,0],["MIDDLE"]],
			[[4,0,0],["MIDDLE"]],
			[[0,0,0],["MIDDLE"]],
			[[0,-3,0],["MIDDLE"]],
			[[0,3,0],["MIDDLE"]]
		]
	],
	[
		[
			["Land_Shoot_House_Panels_F",[-1,4,0],360],
			["Land_Shoot_House_Panels_F",[-3,6,0],180],
			["Land_Shoot_House_Panels_F",[-5,6,0],180],
			["Land_Shoot_House_Panels_F",[1,4,0],360],
			["Land_Shoot_House_Panels_F",[1,6,0],180],
			["Land_Shoot_House_Panels_F",[-1,6,0],180],
			["Land_Shoot_House_Panels_F",[-3,4,0],360],
			["Land_Shoot_House_Panels_F",[-5,4,0],360],
			["Land_Shoot_House_Panels_F",[3,6,0],180],
			["Land_Shoot_House_Panels_F",[5,4,0],360],
			["Land_Shoot_House_Panels_F",[5,6,0],180],
			["Land_Shoot_House_Panels_F",[3,4,0],360],
			["Land_Shoot_House_Panels_F",[-5,2,0],180],
			["Land_Shoot_House_Panels_F",[-3,2,0],180],
			["Land_Shoot_House_Panels_F",[1,0,0],360],
			["Land_Shoot_House_Panels_F",[-1,0,0],360],
			["Land_Shoot_House_Panels_F",[-1,2,0],180],
			["Land_Shoot_House_Panels_F",[1,2,0],180],
			["Land_Shoot_House_Panels_F",[-3,0,0],360],
			["Land_Shoot_House_Panels_F",[-5,0,0],360],
			["Land_Shoot_House_Panels_F",[3,2,0],180],
			["Land_Shoot_House_Panels_F",[5,0,0],360],
			["Land_Shoot_House_Panels_F",[5,2,0],180],
			["Land_Shoot_House_Panels_F",[3,0,0],360],
			["Land_Shoot_House_Panels_F",[-5,-2,0],180],
			["Land_Shoot_House_Panels_F",[-3,-2,0],180],
			["Land_Shoot_House_Panels_F",[1,-4,0],360],
			["Land_Shoot_House_Panels_F",[-1,-4,0],360],
			["Land_Shoot_House_Panels_F",[-1,-2,0],180],
			["Land_Shoot_House_Panels_F",[1,-2,0],180],
			["Land_Shoot_House_Panels_F",[-3,-4,0],360],
			["Land_Shoot_House_Panels_F",[-5,-4,0],360],
			["Land_Shoot_House_Panels_F",[3,-2,0],180],
			["Land_Shoot_House_Panels_F",[5,-4,0],360],
			["Land_Shoot_House_Panels_F",[5,-2,0],180],
			["Land_Shoot_House_Panels_F",[3,-4,0],360],
			["Land_Shoot_House_Panels_F",[-5,-6,0],180],
			["Land_Shoot_House_Panels_F",[-3,-6,0],180],
			["Land_Shoot_House_Panels_F",[-1,-6,0],180],
			["Land_Shoot_House_Panels_F",[1,-6,0],180],
			["Land_Shoot_House_Panels_F",[3,-6,0],180],
			["Land_Shoot_House_Panels_F",[5,-6,0],180]
		],
		[
			[[-3,-5,0],["MIDDLE", "UP"]],
			[[-3,-3,0],["MIDDLE", "UP"]],
			[[-3,-1,0],["MIDDLE", "UP"]],
			[[-3,1,0],["MIDDLE", "UP"]],
			[[-3,3,0],["MIDDLE", "UP"]],
			[[-3,5,0],["MIDDLE", "UP"]],
			[[3,-5,0],["MIDDLE", "UP"]],
			[[3,-3,0],["MIDDLE", "UP"]],
			[[3,-1,0],["MIDDLE", "UP"]],
			[[3,1,0],["MIDDLE", "UP"]],
			[[3,3,0],["MIDDLE", "UP"]],
			[[3,5,0],["MIDDLE", "UP"]]
		]
	],
	[
		[
			["Land_Shoot_House_Corner_Crouch_F",[-0.5,-0.5,0],180],
			["Land_Shoot_House_Corner_Crouch_F",[0.5,-0.5,0],90],
			["Land_Shoot_House_Corner_Crouch_F",[-0.5,0.5,0],270],
			["Land_Shoot_House_Corner_Crouch_F",[0.5,0.5,0],0],
			["Land_Shoot_House_Tunnel_Prone_F",[-5,0,0],270],
			["Land_Shoot_House_Tunnel_Prone_F",[0,5,0],0],
			["Land_Shoot_House_Tunnel_Prone_F",[5,0,0],90],
			["Land_Shoot_House_Tunnel_Prone_F",[0,-5,0],180]
		],
		[
			[[-5,0,0],["DOWN"]],
			[[0,5,0],["DOWN"]],
			[[5,0,0],["DOWN"]],
			[[0,-5,0],["DOWN"]],
			[[-6,-6,0],["UP"]],
			[[6,-6,0],["UP"]],
			[[-6,6,0],["UP"]],
			[[6,6,0],["UP"]]
		]
	],
	[
		[
			["Land_Shoot_House_Wall_Long_F",[2,4,0],270],
			["Land_Shoot_House_Wall_Long_F",[-4,2,0],0],
			["Land_Shoot_House_Wall_Long_F",[0,4,0],90],
			["Land_Shoot_House_Wall_Long_F",[2,6,0],0],
			["Land_Shoot_House_Wall_Long_F",[2,-2,0],180],
			["Land_Shoot_House_Wall_Long_F",[4,4,0],90],
			["Land_Shoot_House_Wall_Long_F",[6,0,0],90],
			["Land_Shoot_House_Wall_Long_F",[-2,4,0],270],
			["Land_Shoot_House_Wall_Long_F",[-4,-2,0],180],
			["Land_Shoot_House_Wall_Long_F",[-6,-2,0],90],
			["Land_Shoot_House_Wall_Long_F",[-4,-6,0],180],
			["Land_Shoot_House_Wall_Long_F",[2,-6,0],180],
			["Land_Shoot_House_Wall_Long_F",[-4,0,0],0],
			["Land_Shoot_House_Wall_Long_F",[6,-4,0],90],
			["Land_Shoot_House_Wall_Long_F",[2,-4,0],180],
			["Land_Shoot_House_Panels_Windows_F",[5,-4,0],180],
			["Land_Shoot_House_Panels_Windows_F",[-1,0,0],0],
			["Land_Shoot_House_Wall_F",[-5,6,0],0],
			["Land_Shoot_House_Wall_F",[-6,5,0],90],
			["Land_Shoot_House_Wall_F",[6,5,0],90],
			["Land_Shoot_House_Wall_F",[1,0,0],0],
			["Land_Shoot_House_Wall_F",[5,6,0],0],
			["Land_Shoot_House_Wall_F",[-6,-5,0],90],
			["Land_Shoot_House_Wall_F",[-3,-4,0],180]
		],
		[
			[[1,5,0],["UP", "MIDDLE"]],
			[[3,5,0],["UP", "MIDDLE"]],
			[[5,5,0],["UP", "MIDDLE"]],
			[[-5,5,0],["UP", "MIDDLE"]],
			[[-3,3,0],["UP", "MIDDLE"]],
			[[-5,-1,0],["UP", "MIDDLE"]],
			[[-1,-1,0],["UP", "MIDDLE"]],
			[[-5,-3,0],["UP", "MIDDLE"]],
			[[-5,-5,0],["UP", "MIDDLE"]],
			[[3,-5,0],["UP", "MIDDLE"]],
			[[5,-3,0],["UP", "MIDDLE"]],
			[[3,-1,0],["UP", "MIDDLE"]]
		]
	],
	[
		[
			// This is intentionally empty!!
		],
		[
			[[-4,4,0],["UP", "MIDDLE"]],
			[[0,4,0],["UP", "MIDDLE"]],
			[[4,4,0],["UP", "MIDDLE"]],
			[[-4,0,0],["UP", "MIDDLE"]],
			[[0,0,0],["UP", "MIDDLE"]],
			[[4,0,0],["UP", "MIDDLE"]],
			[[-4,-4,0],["UP", "MIDDLE"]],
			[[0,-4,0],["UP", "MIDDLE"]],
			[[4,-4,0],["UP", "MIDDLE"]]
		]
	],
	[
		[
			["Land_Shoot_House_Wall_Long_F",[6,-4,0],270],
			["Land_Shoot_House_Wall_Long_F",[0,-6,0],0],
			["Land_Shoot_House_Wall_Long_F",[0,-2,0],180],
			["Land_Shoot_House_Wall_Long_F",[4,-6,0],0],
			["Land_Shoot_House_Wall_Long_F",[-4,-6,0],0],
			["Land_Shoot_House_Wall_Long_F",[4,-2,0],180],
			["Land_Shoot_House_Wall_Long_F",[0,-4,0],180],
			["Land_Shoot_House_Wall_Long_F",[-4,-4,0],180],
			["Land_Shoot_House_Wall_Long_F",[-6,-2,0],270],
			["Land_Shoot_House_Wall_Long_F",[-4,0,0],360],
			["Land_Shoot_House_Wall_Long_F",[0,0,0],360],
			["Land_Shoot_House_Wall_Long_F",[6,0,0],90],
			["Land_Shoot_House_Wall_Long_F",[4,2,0],0],
			["Land_Shoot_House_Wall_Long_F",[0,2,0],360],
			["Land_Shoot_House_Wall_Long_F",[-6,2,0],90],
			["Land_Shoot_House_Wall_Long_F",[-4,4,0],180],
			["Land_Shoot_House_Wall_Long_F",[0,4,0],180],
			["Land_Shoot_House_Wall_Long_F",[6,4,0],270],
			["Land_Shoot_House_Wall_Long_F",[4,6,0],180],
			["Land_Shoot_House_Wall_Long_F",[0,6,0],180],
			["Land_Shoot_House_Wall_Long_F",[-4,6,0],180],
			["Land_Shoot_House_Panels_F",[3,4,0],180],
			["Land_Shoot_House_Panels_F",[3,0,0],0],
			["Land_Shoot_House_Panels_F",[-3,-2,0],180],
			["Land_Shoot_House_Panels_F",[-3,2,0],0],
			["Land_Shoot_House_Panels_F",[3,-4,0],180]
		],
		[
			[[0,5,0],["UP"]],
			[[5,5,0],["UP"]],
			[[5,3,0],["UP"]],
			[[0,3,0],["UP"]],
			[[-5,3,0],["UP"]],
			[[-5,1,0],["UP"]],
			[[5,1,0],["UP"]],
			[[5,-1,0],["UP"]],
			[[-5,-1,0],["UP"]],
			[[-5,-3,0],["UP"]],
			[[5,-3,0],["UP"]],
			[[5,-5,0],["UP"]],
			[[0,-5,0],["UP"]],
			[[0,-3,0],["UP"]],
			[[0,-1,0],["UP"]],
			[[0,1,0],["UP"]]
		]
	],
	[
		[
			["Land_Shoot_House_Panels_F",[5,6,0],180],
			["Land_Shoot_House_Panels_F",[-5,6,0],180],
			["Land_Shoot_House_Wall_Long_F",[-2,6,0],180],
			["Land_Shoot_House_Wall_Long_F",[0,0,0],90],
			["Land_Shoot_House_Wall_Long_F",[2,6,0],180],
			["Land_Shoot_House_Wall_Long_F",[0,4,0],90],
			["Land_Shoot_House_Wall_Long_F",[0,-4,0],90]
		],
		[
			[[3,3,0],["UP"]],
			[[3,-3,0],["UP"]],
			[[-3,-3,0],["UP"]],
			[[-3,3,0],["UP"]]
		]
	],
	[
		[
			["Land_Shoot_House_Wall_Long_Crouch_F",[4,2,0],270],
			["Land_Shoot_House_Wall_Long_Crouch_F",[-4,-2,0],90],
			["Land_Shoot_House_Wall_Long_Crouch_F",[-2,4,0],180],
			["Land_Shoot_House_Wall_Long_Crouch_F",[2,4,0],180],
			["Land_Shoot_House_Wall_Long_Crouch_F",[4,-2,0],270],
			["Land_Shoot_House_Wall_Long_Crouch_F",[-4,2,0],90],
			["Land_Shoot_House_Wall_Long_Crouch_F",[2,-4,0],0],
			["Land_Shoot_House_Wall_Long_Crouch_F",[-2,-4,0],0]
		],
		[
			[[-2,2,0],["UP"]],
			[[2,2,0],["UP"]],
			[[2,-2,0],["UP"]],
			[[-2,-2,0],["UP"]]
		]
	],
	[
		[
			["Land_Shoot_House_Wall_Long_F",[-6,-2,0],90],
			["Land_Shoot_House_Wall_Long_F",[-6,2,0],90],
			["Land_Shoot_House_Wall_Long_F",[-4,4,0],180],
			["Land_Shoot_House_Wall_Long_F",[0,4,0],180],
			["Land_Shoot_House_Wall_Long_F",[6,2,0],270],
			["Land_Shoot_House_Wall_Long_F",[0,2,0],270],
			["Land_Shoot_House_Wall_Long_F",[6,-2,0],270],
			["Land_Shoot_House_Wall_Long_F",[4,4,0],180],
			["Land_Shoot_House_Wall_Long_F",[0,-2,0],270]
		],
		[
			[[3,1,0],["UP"]],
			[[-3,1,0],["UP"]],
			[[0,6,0],["UP"]]
		]
	],
	[
		[
			["Land_Shoot_House_Panels_F",[-4,-3,0],90],
			["Land_Shoot_House_Panels_F",[5,-4,0],0],
			["Land_Shoot_House_Wall_Long_F",[-4,0,0],90],
			["Land_Shoot_House_Wall_Long_F",[-2,-4,0],0],
			["Land_Shoot_House_Wall_Long_F",[-4,4,0],90],
			["Land_Shoot_House_Wall_Long_F",[2,-4,0],0]
		],
		[
			[[-2,-2,0],["UP", "MIDDLE"]],
			[[4,0,0],["UP", "MIDDLE"]],
			[[0,4,0],["UP", "MIDDLE"]],
			[[-6,-6,0],["UP", "MIDDLE"]],
			[[4,-6,0],["UP", "MIDDLE"]],
			[[-6,4,0],["UP", "MIDDLE"]]
		]
	],
	[
		[
			["Land_Shoot_House_Wall_Long_F",[-6,-4,0],90],
			["Land_Shoot_House_Wall_Long_F",[-4,4,0],225],
			["Land_Shoot_House_Wall_Long_F",[-6,4,0],90],
			["Land_Shoot_House_Wall_Long_F",[6,-4,0],90],
			["Land_Shoot_House_Wall_Long_F",[6,0,0],90],
			["Land_Shoot_House_Wall_Long_F",[-1,1,0],225],
			["Land_Shoot_House_Wall_Long_F",[6,4,0],90],
			["Land_Shoot_House_Wall_Long_F",[-6,0,0],90],
			["Land_Shoot_House_Wall_Long_F",[1,-1,0],225],
			["Land_Shoot_House_Wall_Long_F",[4,-4,0],225]
		],
		[
			[[-4,0,0],["UP", "MIDDLE"]],
			[[4,0,0],["UP", "MIDDLE"]],
			[[0,-4,0],["UP", "MIDDLE"]],
			[[0,4,0],["UP", "MIDDLE"]],
			[[4,6,0],["UP", "MIDDLE"]],
			[[-4,-6,0],["UP", "MIDDLE"]],
			[[4,-6,0],["UP", "MIDDLE"]],
			[[-4,6,0],["UP", "MIDDLE"]]
		]
	],
	[
		[
			["Land_Shoot_House_Panels_F",[4,2,0],270],
			["Land_Shoot_House_Tunnel_F",[-3.5,0,0],270],
			["Land_Shoot_House_Wall_Long_F",[2.5,4.5,0],225],
			["Land_Shoot_House_Wall_Long_F",[-1,-6,0],0],
			["Land_Shoot_House_Wall_Long_F",[2.5,-4.5,0],315],
			["Land_Shoot_House_Wall_Long_F",[-4,3,0],90],
			["Land_Shoot_House_Wall_Long_F",[-4,-3,0],90],
			["Land_Shoot_House_Wall_Long_F",[4,-1,0],270],
			["Land_Shoot_House_Wall_Long_F",[-1,6,0],180],
			["Land_Shoot_House_Corner_F",[-4,-6,0],0],
			["Land_Shoot_House_Corner_F",[-4,6,0],90]
		],
		[
			[[-3,3,0],["UP", "MIDDLE"]],
			[[-3,-3,0],["UP", "MIDDLE"]],
			[[2,0,0],["UP", "MIDDLE"]],
			[[0,-4,0],["UP", "MIDDLE"]],
			[[0,4,0],["UP", "MIDDLE"]],
			[[5,0,0],["UP", "MIDDLE"]],
			[[-1,-7,0],["UP", "MIDDLE"]],
			[[-1,7,0],["UP", "MIDDLE"]]
		]
	],
	[
		[
			["Land_Shoot_House_Wall_Long_F",[-4,-4,0],0],
			["Land_Shoot_House_Wall_Long_F",[-2,0,0],90],
			["Land_Shoot_House_Wall_Long_F",[0,0,0],0],
			["Land_Shoot_House_Wall_Long_F",[4,-4,0],0],
			["Land_Shoot_House_Wall_Long_F",[4,4,0],180],
			["Land_Shoot_House_Wall_Long_F",[2,0,0],270],
			["Land_Shoot_House_Wall_Long_F",[-4,4,0],180],
			["Land_Shoot_House_Wall_Long_F",[-6,0,0],270],
			["Land_Shoot_House_Wall_Long_F",[6,0,0],90],
			["Land_Shoot_House_Wall_Long_F",[0,-6,0],90],
			["Land_Shoot_House_Wall_Long_F",[0,6,0],90]
		],
		[
			[[-4,-6,0],["UP", "MIDDLE", "DOWN", "AUTO"]],
			[[4,-6,0],["UP", "MIDDLE", "DOWN", "AUTO"]],
			[[1,-1,0],["UP", "MIDDLE", "DOWN", "AUTO"]],
			[[-1,-1,0],["UP", "MIDDLE", "DOWN", "AUTO"]],
			[[-1,1,0],["UP", "MIDDLE", "DOWN", "AUTO"]],
			[[1,1,0],["UP", "MIDDLE", "DOWN", "AUTO"]],
			[[5,0,0],["UP", "MIDDLE", "DOWN", "AUTO"]],
			[[3,0,0],["UP", "MIDDLE", "DOWN", "AUTO"]],
			[[-5,0,0],["UP", "MIDDLE", "DOWN", "AUTO"]],
			[[-3,0,0],["UP", "MIDDLE", "DOWN", "AUTO"]],
			[[0,-3,0],["UP", "MIDDLE", "DOWN", "AUTO"]],
			[[0,3,0],["UP", "MIDDLE", "DOWN", "AUTO"]],
			[[4,6,0],["UP", "MIDDLE", "DOWN", "AUTO"]],
			[[-4,6,0],["UP", "MIDDLE", "DOWN", "AUTO"]],
			[[7,-7,0],["UP", "MIDDLE", "DOWN", "AUTO"]],
			[[-7,-7,0],["UP", "MIDDLE", "DOWN", "AUTO"]],
			[[-7,7,0],["UP", "MIDDLE", "DOWN", "AUTO"]],
			[[7,7,0],["UP", "MIDDLE", "DOWN", "AUTO"]]
		]
	],
	[
		[
			["Land_Shoot_House_Wall_F",[0,-1,0],0],
			["Land_Shoot_House_Wall_F",[0,1,0],0],
			["Land_Shoot_House_Wall_F",[1,0,0],270],
			["Land_Shoot_House_Wall_F",[-1,0.1,0],270],
			["Land_Shoot_House_Wall_F",[-4,-3,0],0],
			["Land_Shoot_House_Wall_F",[-3,-4,0],270],
			["Land_Shoot_House_Wall_F",[-4,-5,0],0],
			["Land_Shoot_House_Wall_F",[-5,-4,0],270],
			["Land_Shoot_House_Wall_F",[4,-3,0],0],
			["Land_Shoot_House_Wall_F",[5,-4,0],270],
			["Land_Shoot_House_Wall_F",[4,-5,0],0],
			["Land_Shoot_House_Wall_F",[3,-4,0],270],
			["Land_Shoot_House_Wall_F",[0,-5,0],0],
			["Land_Shoot_House_Wall_F",[1,-6,0],270],
			["Land_Shoot_House_Wall_F",[0,-7,0],0],
			["Land_Shoot_House_Wall_F",[-1,-6,0],270],
			["Land_Shoot_House_Wall_F",[-4,5,0],0],
			["Land_Shoot_House_Wall_F",[-3,4,0],270],
			["Land_Shoot_House_Wall_F",[-4,3,0],0],
			["Land_Shoot_House_Wall_F",[-5,4,0],270],
			["Land_Shoot_House_Wall_F",[4,5,0],0],
			["Land_Shoot_House_Wall_F",[5,4,0],270],
			["Land_Shoot_House_Wall_F",[4,3,0],0],
			["Land_Shoot_House_Wall_F",[3,4,0],270],
			["Land_Shoot_House_Wall_F",[0,7,0],0],
			["Land_Shoot_House_Wall_F",[1,6,0],270],
			["Land_Shoot_House_Wall_F",[0,5,0],0],
			["Land_Shoot_House_Wall_F",[-1,6,0],270],
			["Land_Shoot_House_Wall_F",[-4,1,0],0],
			["Land_Shoot_House_Wall_F",[-3,0,0],270],
			["Land_Shoot_House_Wall_F",[-4,-0.9,0],0],
			["Land_Shoot_House_Wall_F",[-5,0.1,0],270],
			["Land_Shoot_House_Wall_F",[4,1,0],0],
			["Land_Shoot_House_Wall_F",[5,0,0],270],
			["Land_Shoot_House_Wall_F",[4,-1,0],0],
			["Land_Shoot_House_Wall_F",[3,0,0],270]
		],
		[
			[[-1,-3,0],["UP", "MIDDLE"]],
			[[1,-3,0],["UP", "MIDDLE"]],
			[[1,3,0],["UP", "MIDDLE"]],
			[[-1,3,0],["UP", "MIDDLE"]],
			[[-2,0,0],["UP", "MIDDLE"]],
			[[2,0,0],["UP", "MIDDLE"]],
			[[4,2,0],["UP", "MIDDLE"]],
			[[-4,2,0],["UP", "MIDDLE"]],
			[[-4,-2,0],["UP", "MIDDLE"]],
			[[4,-2,0],["UP", "MIDDLE"]],
			[[-4,-6,0],["UP", "MIDDLE"]],
			[[4,-6,0],["UP", "MIDDLE"]],
			[[4,6,0],["UP", "MIDDLE"]],
			[[-3.9,6.1,0],["UP", "MIDDLE"]],
			[[-6,4,0],["UP", "MIDDLE"]],
			[[-6,0.1,0],["UP", "MIDDLE"]],
			[[-6,-4,0],["UP", "MIDDLE"]],
			[[6,-4,0],["UP", "MIDDLE"]],
			[[6,0,0],["UP", "MIDDLE"]],
			[[6,4,0],["UP", "MIDDLE"]]
		]
	],
	[
		[
			["Land_Shoot_House_Wall_Crouch_F",[0,3,0],0],
			["Land_Shoot_House_Wall_Crouch_F",[5,4,0],90],
			["Land_Shoot_House_Wall_Crouch_F",[0,-3,0],180],
			["Land_Shoot_House_Wall_Crouch_F",[-5,-4,0],270],
			["Land_Shoot_House_Wall_Prone_F",[-5,4,2.815],270],
			["Land_Shoot_House_Wall_Prone_F",[0,-3,2.815],180],
			["Land_Shoot_House_Wall_Prone_F",[0,3,2.815],0],
			["Land_Shoot_House_Wall_Prone_F",[5,-4,2.815],90],
			["Land_Shoot_House_Wall_Crouch_F",[-5,4,0],270],
			["Land_Shoot_House_Wall_Crouch_F",[5,-4,0],90],
			["Land_Shoot_House_Wall_Prone_F",[5,4,2.815],90],
			["Land_Shoot_House_Wall_Prone_F",[-5,-4,2.815],270],
			["Land_Shoot_House_Wall_F",[4,-3,0],0],
			["Land_Shoot_House_Wall_F",[4,-5,0],0],
			["Land_Shoot_House_Wall_F",[3,-4,0],270],
			["Land_Shoot_House_Wall_F",[4,5,0],0],
			["Land_Shoot_House_Wall_F",[4,3,0],0],
			["Land_Shoot_House_Wall_F",[3,4,0],270],
			["Land_Shoot_House_Wall_F",[-4,3,0],180],
			["Land_Shoot_House_Wall_F",[-4,5,0],180],
			["Land_Shoot_House_Wall_F",[-3,4,0],90],
			["Land_Shoot_House_Wall_F",[-4,-5,0],180],
			["Land_Shoot_House_Wall_F",[-4,-3,0],180],
			["Land_Shoot_House_Wall_F",[-3,-4,0],90],
			["Land_Shoot_House_Wall_F",[1,-2,0],90],
			["Land_Shoot_House_Wall_F",[-1,-2,0],90],
			["Land_Shoot_House_Wall_F",[0,-1,0],360],
			["Land_Shoot_House_Wall_F",[-1,2,0],270],
			["Land_Shoot_House_Wall_F",[1,2,0],270],
			["Land_Shoot_House_Wall_F",[0,1,0],180]
		],
		[
			[[-4,4,0],["UP"]],
			[[0,2,0],["UP"]],
			[[4,4,0],["UP"]],
			[[4,-4,0],["UP"]],
			[[0,-2,0],["UP"]],
			[[-4,-4,0],["UP"]]
		]
	]
];

