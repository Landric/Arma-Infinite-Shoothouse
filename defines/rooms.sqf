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
			["Land_Shoot_House_Corner_F", [-5.5,-5.5], 0],
			["Land_Shoot_House_Corner_F", [5.5,-5.5], 270],
			["Land_Shoot_House_Corner_F", [5.5,5.5], 180],
			["Land_Shoot_House_Corner_F", [-5.5,5.5], 90],
			["Land_Shoot_House_Wall_Long_Crouch_F", [0,-4], 0],
			["Land_Shoot_House_Wall_Long_Crouch_F", [0,4], 180],
			["Land_Shoot_House_Wall_Long_Crouch_F", [4,0], 270],
			["Land_Shoot_House_Wall_Long_Crouch_F", [-4,0], 90]
		],
		[
			[[ 0, 0], ["MIDDLE"]],
			[[ 0,-3], ["MIDDLE"]],
			[[-3, 0], ["MIDDLE"]],
			[[ 0, 3], ["MIDDLE"]],
			[[ 3, 0], ["MIDDLE"]],
			[[ 5,-5], ["UP", "MIDDLE"]],
			[[-5,-5], ["UP", "MIDDLE"]],
			[[-5, 5], ["UP", "MIDDLE"]],
			[[ 5, 5], ["UP", "MIDDLE"]],
			[[-8, 8], ["UP"]],
			[[-8,-8], ["UP"]],
			[[ 8,-8], ["UP"]],
			[[ 8, 8], ["UP"]]
		]
	],
	[
		[
			["Land_Shoot_House_Corner_F", [-5.5,-5.5], 0],
			["Land_Shoot_House_Corner_F", [5.5,-5.5], 270],
			["Land_Shoot_House_Corner_F", [5.5,5.5], 180],
			["Land_Shoot_House_Corner_F", [-5.5,5.5], 90],
			["Land_Shoot_House_Wall_Long_Crouch_F", [0,-4], 0],
			["Land_Shoot_House_Wall_Long_Crouch_F", [0,4], 180],
			["Land_Shoot_House_Wall_Long_Crouch_F", [4,0], 270],
			["Land_Shoot_House_Wall_Long_Crouch_F", [-4,0], 90]
		],
		[
			[[ 0, 0], ["MIDDLE"]],
			[[ 0,-3], ["MIDDLE"]],
			[[-3, 0], ["MIDDLE"]],
			[[ 0, 3], ["MIDDLE"]],
			[[ 3, 0], ["MIDDLE"]],
			[[ 5,-5], ["UP", "MIDDLE"]],
			[[-5,-5], ["UP", "MIDDLE"]],
			[[-5, 5], ["UP", "MIDDLE"]],
			[[ 5, 5], ["UP", "MIDDLE"]],
			[[-8, 8], ["UP"]],
			[[-8,-8], ["UP"]],
			[[ 8,-8], ["UP"]],
			[[ 8, 8], ["UP"]]
		]
	],
	[
		[
			["Land_Shoot_House_Wall_Long_F",[-5,-5],45],
			["Land_Shoot_House_Wall_Long_F",[5,-5],315],
			["Land_Shoot_House_Wall_Long_F",[5,5],225],
			["Land_Shoot_House_Wall_Long_F",[-5,5],135],
			["Land_Shoot_House_Corner_F",[1,1],0],
			["Land_Shoot_House_Corner_F",[1,-1],90],
			["Land_Shoot_House_Corner_F",[-1,-1],180],
			["Land_Shoot_House_Corner_F",[-1,1],270],
			["Land_Shoot_House_Tunnel_F",[0,3],0],
			["Land_Shoot_House_Tunnel_F",[0,-3],180],
			["Land_Shoot_House_Tunnel_F",[-3,0],270],
			["Land_Shoot_House_Tunnel_F",[3,0],90]
		],
		[
			[[8,-8],["MIDDLE", "UP"]],
			[[3,-3],["MIDDLE", "UP"]],
			[[-3,-3],["MIDDLE", "UP"]],
			[[3,3],["MIDDLE", "UP"]],
			[[-3,3],["MIDDLE", "UP"]],
			[[0,0],["MIDDLE", "UP"]],
			[[0,3],["MIDDLE", "UP"]],
			[[-3,0],["MIDDLE", "UP"]],
			[[3,0],["MIDDLE", "UP"]],
			[[0,-3],["MIDDLE", "UP"]],
			[[8,8],["MIDDLE", "UP"]],
			[[-8,8],["MIDDLE", "UP"]],
			[[-8,-8],["MIDDLE", "UP"]]
		]
	],
	[
		[
			["Land_Shoot_House_Tunnel_Crouch_F",[4,4],90],
			["Land_Shoot_House_Tunnel_Crouch_F",[-4,-4],90],
			["Land_Shoot_House_Tunnel_Crouch_F",[2.5,0],180],
			["Land_Shoot_House_Tunnel_Crouch_F",[-4,4],90],
			["Land_Shoot_House_Tunnel_Crouch_F",[-2.5,0],180],
			["Land_Shoot_House_Tunnel_Crouch_F",[4,-4],90],
			["Land_Shoot_House_Wall_Crouch_F",[5.4,4],270],
			["Land_Shoot_House_Wall_Crouch_F",[2.6,4],270],
			["Land_Shoot_House_Wall_Crouch_F",[-5.4,4],270],
			["Land_Shoot_House_Wall_Crouch_F",[-2.6,4],270],
			["Land_Shoot_House_Wall_Crouch_F",[-2.5,1.4],0],
			["Land_Shoot_House_Wall_Crouch_F",[-2.5,-1.4],0],
			["Land_Shoot_House_Wall_Crouch_F",[2.5,1.4],0],
			["Land_Shoot_House_Wall_Crouch_F",[2.5,-1.4],0],
			["Land_Shoot_House_Wall_Crouch_F",[2.6,-4],270],
			["Land_Shoot_House_Wall_Crouch_F",[5.4,-4],270],
			["Land_Shoot_House_Wall_Crouch_F",[-5.4,-4],270],
			["Land_Shoot_House_Wall_Crouch_F",[-2.6,-4],270]
		],
		[
			[[4.5,0],["UP"]],
			[[0,0],["UP"]],
			[[-4.5,0],["UP"]],
			[[0,4],["UP"]],
			[[0,-4],["UP"]]
		]
	],
	[
		[
			["Land_Shoot_House_Wall_Long_F",[3,-6],180],
			["Land_Shoot_House_Wall_Long_F",[5,-4],90],
			["Land_Shoot_House_Wall_Long_F",[-5,0],90],
			["Land_Shoot_House_Wall_Long_F",[-5,-4],270],
			["Land_Shoot_House_Wall_Long_F",[-3,-6],180],
			["Land_Shoot_House_Wall_Long_F",[0,-4],0],
			["Land_Shoot_House_Wall_Long_F",[-5,4],270],
			["Land_Shoot_House_Wall_Long_F",[0,-2],180],
			["Land_Shoot_House_Wall_Long_F",[5,2],90],
			["Land_Shoot_House_Wall_Long_F",[3,4],0],
			["Land_Shoot_House_Wall_Long_F",[-1,6],180],
			["Land_Shoot_House_Wall_Long_F",[3,6],0],
			["Land_Shoot_House_Wall_Long_F",[-3,2],180],
			["Land_Shoot_House_Wall_Long_F",[2,0],270],
			["Land_Shoot_House_Wall_Long_F",[-3,0],180]
		],
		[
			[[-4,1],["UP"]],
			[[3.5,3],["UP"]],
			[[1,-1],["UP"]],
			[[3.8,-4],["UP"]],
			[[-4,-4],["UP"]],
			[[0,5],["UP"]],
			[[0,-3],["UP"]]
		]
	],
	[
		[
			["Land_Shoot_House_Wall_Long_F",[2,-4],90],
			["Land_Shoot_House_Wall_Long_F",[-2,-4],270],
			["Land_Shoot_House_Wall_Long_Prone_F",[0,0],270],
			["Land_Shoot_House_Wall_Long_Prone_F",[0,0],180],
			["Land_Shoot_House_Wall_Long_Prone_F",[0,0],90],
			["Land_Shoot_House_Wall_Long_F",[4,2],0],
			["Land_Shoot_House_Wall_Long_F",[4,-2],180],
			["Land_Shoot_House_Wall_Long_Prone_F",[0,0],0],
			["Land_Shoot_House_Wall_Long_F",[-4,-2],180],
			["Land_Shoot_House_Wall_Long_F",[2.2,4],88],
			["Land_Shoot_House_Wall_Long_F",[-2,4],270],
			["Land_Shoot_House_Wall_Long_F",[-4,2],0]
		],
		[
			[[1,1],["UP"]],
			[[1,-1],["UP"]],
			[[-1,-1],["UP"]],
			[[-1,1],["UP"]],
			[[4,4],["UP"]],
			[[4,-4],["UP"]],
			[[-4,-4],["UP"]],
			[[-4,4],["UP"]]
		]
	],
	[
		[
			["Land_Shoot_House_Wall_Long_Prone_F",[-4,6],180],
			["Land_Shoot_House_Wall_Long_Prone_F",[0,4],180],
			["Land_Shoot_House_Wall_Long_Prone_F",[-0,-4],360],
			["Land_Shoot_House_Wall_Long_Prone_F",[4,6],180],
			["Land_Shoot_House_Wall_Long_Prone_F",[-4,-6],360],
			["Land_Shoot_House_Wall_Long_Prone_F",[4,-6],360],
			["Land_Shoot_House_Wall_Long_Prone_F",[6,0],270],
			["Land_Shoot_House_Wall_Long_Prone_F",[-6,0],90],
			["Land_Shoot_House_Wall_Prone_F",[6,5],90],
			["Land_Shoot_House_Wall_Prone_F",[6,-5],90],
			["Land_Shoot_House_Wall_Prone_F",[-6,-5],90],
			["Land_Shoot_House_Wall_Prone_F",[-6,5],90],
			["Land_Shoot_House_Wall_Crouch_F",[2,0],90],
			["Land_Shoot_House_Wall_Crouch_F",[-2,0],90]
		],
		[
			[[-5,-5],["MIDDLE"]],
			[[-5,0],["MIDDLE"]],
			[[-5,5],["MIDDLE"]],
			[[5,5],["MIDDLE"]],
			[[5,-5],["MIDDLE"]],
			[[4,0],["MIDDLE"]],
			[[0,0],["MIDDLE"]],
			[[0,-3],["MIDDLE"]],
			[[0,3],["MIDDLE"]]
		]
	],
	[
		[
			["Land_Shoot_House_Panels_F",[-1,4],360],
			["Land_Shoot_House_Panels_F",[-3,6],180],
			["Land_Shoot_House_Panels_F",[-5,6],180],
			["Land_Shoot_House_Panels_F",[1,4],360],
			["Land_Shoot_House_Panels_F",[1,6],180],
			["Land_Shoot_House_Panels_F",[-1,6],180],
			["Land_Shoot_House_Panels_F",[-3,4],360],
			["Land_Shoot_House_Panels_F",[-5,4],360],
			["Land_Shoot_House_Panels_F",[3,6],180],
			["Land_Shoot_House_Panels_F",[5,4],360],
			["Land_Shoot_House_Panels_F",[5,6],180],
			["Land_Shoot_House_Panels_F",[3,4],360],
			["Land_Shoot_House_Panels_F",[-5,2],180],
			["Land_Shoot_House_Panels_F",[-3,2],180],
			["Land_Shoot_House_Panels_F",[1,0],360],
			["Land_Shoot_House_Panels_F",[-1,0],360],
			["Land_Shoot_House_Panels_F",[-1,2],180],
			["Land_Shoot_House_Panels_F",[1,2],180],
			["Land_Shoot_House_Panels_F",[-3,0],360],
			["Land_Shoot_House_Panels_F",[-5,0],360],
			["Land_Shoot_House_Panels_F",[3,2],180],
			["Land_Shoot_House_Panels_F",[5,0],360],
			["Land_Shoot_House_Panels_F",[5,2],180],
			["Land_Shoot_House_Panels_F",[3,0],360],
			["Land_Shoot_House_Panels_F",[-5,-2],180],
			["Land_Shoot_House_Panels_F",[-3,-2],180],
			["Land_Shoot_House_Panels_F",[1,-4],360],
			["Land_Shoot_House_Panels_F",[-1,-4],360],
			["Land_Shoot_House_Panels_F",[-1,-2],180],
			["Land_Shoot_House_Panels_F",[1,-2],180],
			["Land_Shoot_House_Panels_F",[-3,-4],360],
			["Land_Shoot_House_Panels_F",[-5,-4],360],
			["Land_Shoot_House_Panels_F",[3,-2],180],
			["Land_Shoot_House_Panels_F",[5,-4],360],
			["Land_Shoot_House_Panels_F",[5,-2],180],
			["Land_Shoot_House_Panels_F",[3,-4],360],
			["Land_Shoot_House_Panels_F",[-5,-6],180],
			["Land_Shoot_House_Panels_F",[-3,-6],180],
			["Land_Shoot_House_Panels_F",[-1,-6],180],
			["Land_Shoot_House_Panels_F",[1,-6],180],
			["Land_Shoot_House_Panels_F",[3,-6],180],
			["Land_Shoot_House_Panels_F",[5,-6],180]
		],
		[
			[[-3,-5],["MIDDLE", "UP"]],
			[[-3,-3],["MIDDLE", "UP"]],
			[[-3,-1],["MIDDLE", "UP"]],
			[[-3,1],["MIDDLE", "UP"]],
			[[-3,3],["MIDDLE", "UP"]],
			[[-3,5],["MIDDLE", "UP"]],
			[[3,-5],["MIDDLE", "UP"]],
			[[3,-3],["MIDDLE", "UP"]],
			[[3,-1],["MIDDLE", "UP"]],
			[[3,1],["MIDDLE", "UP"]],
			[[3,3],["MIDDLE", "UP"]],
			[[3,5],["MIDDLE", "UP"]]
		]
	],
	[
		[
			["Land_Shoot_House_Corner_Crouch_F",[-0.5,-0.5],180],
			["Land_Shoot_House_Corner_Crouch_F",[0.5,-0.5],90],
			["Land_Shoot_House_Corner_Crouch_F",[-0.5,0.5],270],
			["Land_Shoot_House_Corner_Crouch_F",[0.5,0.5],0],
			["Land_Shoot_House_Tunnel_Prone_F",[-5,0],270],
			["Land_Shoot_House_Tunnel_Prone_F",[0,5],0],
			["Land_Shoot_House_Tunnel_Prone_F",[5,0],90],
			["Land_Shoot_House_Tunnel_Prone_F",[0,-5],180]
		],
		[
			[[-5,0],["DOWN"]],
			[[0,5],["DOWN"]],
			[[5,0],["DOWN"]],
			[[0,-5],["DOWN"]],
			[[-6,-6],["UP"]],
			[[6,-6],["UP"]],
			[[-6,6],["UP"]],
			[[6,6],["UP"]]
		]
	],
	[
		[
			["Land_Shoot_House_Wall_Long_F",[2,4],270],
			["Land_Shoot_House_Wall_Long_F",[-4,2],0],
			["Land_Shoot_House_Wall_Long_F",[0,4],90],
			["Land_Shoot_House_Wall_Long_F",[2,6],0],
			["Land_Shoot_House_Wall_Long_F",[2,-2],180],
			["Land_Shoot_House_Wall_Long_F",[4,4],90],
			["Land_Shoot_House_Wall_Long_F",[6,0],90],
			["Land_Shoot_House_Wall_Long_F",[-2,4],270],
			["Land_Shoot_House_Wall_Long_F",[-4,-2],180],
			["Land_Shoot_House_Wall_Long_F",[-6,-2],90],
			["Land_Shoot_House_Wall_Long_F",[-4,-6],180],
			["Land_Shoot_House_Wall_Long_F",[2,-6],180],
			["Land_Shoot_House_Wall_Long_F",[-4,0],0],
			["Land_Shoot_House_Wall_Long_F",[6,-4],90],
			["Land_Shoot_House_Wall_Long_F",[2,-4],180],
			["Land_Shoot_House_Panels_Windows_F",[5,-4],180],
			["Land_Shoot_House_Panels_Windows_F",[-1,0],0],
			["Land_Shoot_House_Wall_F",[-5,6],0],
			["Land_Shoot_House_Wall_F",[-6,5],90],
			["Land_Shoot_House_Wall_F",[6,5],90],
			["Land_Shoot_House_Wall_F",[1,0],0],
			["Land_Shoot_House_Wall_F",[5,6],0],
			["Land_Shoot_House_Wall_F",[-6,-5],90],
			["Land_Shoot_House_Wall_F",[-3,-4],180]
		],
		[
			[[1,5],["UP", "MIDDLE"]],
			[[3,5],["UP", "MIDDLE"]],
			[[5,5],["UP", "MIDDLE"]],
			[[-5,5],["UP", "MIDDLE"]],
			[[-3,3],["UP", "MIDDLE"]],
			[[-5,-1],["UP", "MIDDLE"]],
			[[-1,-1],["UP", "MIDDLE"]],
			[[-5,-3],["UP", "MIDDLE"]],
			[[-5,-5],["UP", "MIDDLE"]],
			[[3,-5],["UP", "MIDDLE"]],
			[[5,-3],["UP", "MIDDLE"]],
			[[3,-1],["UP", "MIDDLE"]]
		]
	],
	[
		[
			// This is intentionally empty!!
		],
		[
			[[-4,4],["UP", "MIDDLE"]],
			[[0,4],["UP", "MIDDLE"]],
			[[4,4],["UP", "MIDDLE"]],
			[[-4,0],["UP", "MIDDLE"]],
			[[0,0],["UP", "MIDDLE"]],
			[[4,0],["UP", "MIDDLE"]],
			[[-4,-4],["UP", "MIDDLE"]],
			[[0,-4],["UP", "MIDDLE"]],
			[[4,-4],["UP", "MIDDLE"]]
		]
	],
	[
		[
			["Land_Shoot_House_Wall_Long_F",[6,-4],270],
			["Land_Shoot_House_Wall_Long_F",[0,-6],0],
			["Land_Shoot_House_Wall_Long_F",[0,-2],180],
			["Land_Shoot_House_Wall_Long_F",[4,-6],0],
			["Land_Shoot_House_Wall_Long_F",[-4,-6],0],
			["Land_Shoot_House_Wall_Long_F",[4,-2],180],
			["Land_Shoot_House_Wall_Long_F",[0,-4],180],
			["Land_Shoot_House_Wall_Long_F",[-4,-4],180],
			["Land_Shoot_House_Wall_Long_F",[-6,-2],270],
			["Land_Shoot_House_Wall_Long_F",[-4,0],360],
			["Land_Shoot_House_Wall_Long_F",[0,0],360],
			["Land_Shoot_House_Wall_Long_F",[6,0],90],
			["Land_Shoot_House_Wall_Long_F",[4,2],0],
			["Land_Shoot_House_Wall_Long_F",[0,2],360],
			["Land_Shoot_House_Wall_Long_F",[-6,2],90],
			["Land_Shoot_House_Wall_Long_F",[-4,4],180],
			["Land_Shoot_House_Wall_Long_F",[0,4],180],
			["Land_Shoot_House_Wall_Long_F",[6,4],270],
			["Land_Shoot_House_Wall_Long_F",[4,6],180],
			["Land_Shoot_House_Wall_Long_F",[0,6],180],
			["Land_Shoot_House_Wall_Long_F",[-4,6],180],
			["Land_Shoot_House_Panels_F",[3,4],180],
			["Land_Shoot_House_Panels_F",[3,0],0],
			["Land_Shoot_House_Panels_F",[-3,-2],180],
			["Land_Shoot_House_Panels_F",[-3,2],0],
			["Land_Shoot_House_Panels_F",[3,-4],180]
		],
		[
			[[0,5],["UP"]],
			[[5,5],["UP"]],
			[[5,3],["UP"]],
			[[0,3],["UP"]],
			[[-5,3],["UP"]],
			[[-5,1],["UP"]],
			[[5,1],["UP"]],
			[[5,-1],["UP"]],
			[[-5,-1],["UP"]],
			[[-5,-3],["UP"]],
			[[5,-3],["UP"]],
			[[5,-5],["UP"]],
			[[0,-5],["UP"]],
			[[0,-3],["UP"]],
			[[0,-1],["UP"]],
			[[0,1],["UP"]]
		]
	],
	[
		[
			["Land_Shoot_House_Panels_F",[5,6],180],
			["Land_Shoot_House_Panels_F",[-5,6],180],
			["Land_Shoot_House_Wall_Long_F",[-2,6],180],
			["Land_Shoot_House_Wall_Long_F",[0,0],90],
			["Land_Shoot_House_Wall_Long_F",[2,6],180],
			["Land_Shoot_House_Wall_Long_F",[0,4],90],
			["Land_Shoot_House_Wall_Long_F",[0,-4],90]
		],
		[
			[[3,3],["UP"]],
			[[3,-3],["UP"]],
			[[-3,-3],["UP"]],
			[[-3,3],["UP"]]
		]
	],
	[
		[
			["Land_Shoot_House_Wall_Long_Crouch_F",[4,2],270],
			["Land_Shoot_House_Wall_Long_Crouch_F",[-4,-2],90],
			["Land_Shoot_House_Wall_Long_Crouch_F",[-2,4],180],
			["Land_Shoot_House_Wall_Long_Crouch_F",[2,4],180],
			["Land_Shoot_House_Wall_Long_Crouch_F",[4,-2],270],
			["Land_Shoot_House_Wall_Long_Crouch_F",[-4,2],90],
			["Land_Shoot_House_Wall_Long_Crouch_F",[2,-4],0],
			["Land_Shoot_House_Wall_Long_Crouch_F",[-2,-4],0]
		],
		[
			[[-2,2],["UP"]],
			[[2,2],["UP"]],
			[[2,-2],["UP"]],
			[[-2,-2],["UP"]]
		]
	],
	[
		[
			["Land_Shoot_House_Wall_Long_F",[-6,-2],90],
			["Land_Shoot_House_Wall_Long_F",[-6,2],90],
			["Land_Shoot_House_Wall_Long_F",[-4,4],180],
			["Land_Shoot_House_Wall_Long_F",[0,4],180],
			["Land_Shoot_House_Wall_Long_F",[6,2],270],
			["Land_Shoot_House_Wall_Long_F",[0,2],270],
			["Land_Shoot_House_Wall_Long_F",[6,-2],270],
			["Land_Shoot_House_Wall_Long_F",[4,4],180],
			["Land_Shoot_House_Wall_Long_F",[0,-2],270]
		],
		[
			[[3,1],["UP"]],
			[[-3,1],["UP"]],
			[[0,6],["UP"]]
		]
	],
	[
		[
			["Land_Shoot_House_Panels_F",[-4,-3],90],
			["Land_Shoot_House_Panels_F",[5,-4],0],
			["Land_Shoot_House_Wall_Long_F",[-4,0],90],
			["Land_Shoot_House_Wall_Long_F",[-2,-4],0],
			["Land_Shoot_House_Wall_Long_F",[-4,4],90],
			["Land_Shoot_House_Wall_Long_F",[2,-4],0]
		],
		[
			[[-2,-2],["UP", "MIDDLE"]],
			[[4,0],["UP", "MIDDLE"]],
			[[0,4],["UP", "MIDDLE"]],
			[[-6,-6],["UP", "MIDDLE"]],
			[[4,-6],["UP", "MIDDLE"]],
			[[-6,4],["UP", "MIDDLE"]]
		]
	],
	[
		[
			["Land_Shoot_House_Wall_Long_F",[-6,-4],90],
			["Land_Shoot_House_Wall_Long_F",[-4,4],225],
			["Land_Shoot_House_Wall_Long_F",[-6,4],90],
			["Land_Shoot_House_Wall_Long_F",[6,-4],90],
			["Land_Shoot_House_Wall_Long_F",[6,0],90],
			["Land_Shoot_House_Wall_Long_F",[-1,1],225],
			["Land_Shoot_House_Wall_Long_F",[6,4],90],
			["Land_Shoot_House_Wall_Long_F",[-6,0],90],
			["Land_Shoot_House_Wall_Long_F",[1,-1],225],
			["Land_Shoot_House_Wall_Long_F",[4,-4],225]
		],
		[
			[[-4,0],["UP", "MIDDLE"]],
			[[4,0],["UP", "MIDDLE"]],
			[[0,-4],["UP", "MIDDLE"]],
			[[0,4],["UP", "MIDDLE"]],
			[[4,6],["UP", "MIDDLE"]],
			[[-4,-6],["UP", "MIDDLE"]],
			[[4,-6],["UP", "MIDDLE"]],
			[[-4,6],["UP", "MIDDLE"]]
		]
	],
	[
		[
			["Land_Shoot_House_Panels_F",[4,2],270],
			["Land_Shoot_House_Tunnel_F",[-3.5,0],270],
			["Land_Shoot_House_Wall_Long_F",[2.5,4.5],225],
			["Land_Shoot_House_Wall_Long_F",[-1,-6],0],
			["Land_Shoot_House_Wall_Long_F",[2.5,-4.5],315],
			["Land_Shoot_House_Wall_Long_F",[-4,3],90],
			["Land_Shoot_House_Wall_Long_F",[-4,-3],90],
			["Land_Shoot_House_Wall_Long_F",[4,-1],270],
			["Land_Shoot_House_Wall_Long_F",[-1,6],180],
			["Land_Shoot_House_Corner_F",[-4,-6],0],
			["Land_Shoot_House_Corner_F",[-4,6],90]
		],
		[
			[[-3,3],["UP", "MIDDLE"]],
			[[-3,-3],["UP", "MIDDLE"]],
			[[2,0],["UP", "MIDDLE"]],
			[[0,-4],["UP", "MIDDLE"]],
			[[0,4],["UP", "MIDDLE"]],
			[[5,0],["UP", "MIDDLE"]],
			[[-1,-7],["UP", "MIDDLE"]],
			[[-1,7],["UP", "MIDDLE"]]
		]
	]
];

