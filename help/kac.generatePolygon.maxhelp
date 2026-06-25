{
	"patcher": {
		"fileversion": 1,
		"appversion": {
			"major": 9,
			"minor": 1,
			"revision": 4,
			"architecture": "x64",
			"modernui": 1
		},
		"classnamespace": "box",
		"rect": [59.0, 167.0, 1276.0, 879.0],
		"boxes": [
			{
				"box": {
					"auto_handle": 0,
					"enable": 1,
					"erase_color": [1.0, 1.0, 1.0, 1.0],
					"fps": 30.0,
					"gizmos": 0,
					"id": "obj-11",
					"maxclass": "jit.pworld",
					"name": "simple-polygon-helpfile-2",
					"numinlets": 1,
					"numoutlets": 2,
					"outlettype": ["jit_matrix", ""],
					"patching_rect": [417.4392524957657, 359.0, 200.0, 200.0],
					"sync": 1
				}
			},
			{
				"box": {
					"id": "obj-9",
					"maxclass": "newobj",
					"numinlets": 1,
					"numoutlets": 0,
					"patcher": {
						"fileversion": 1,
						"appversion": {
							"major": 9,
							"minor": 1,
							"revision": 4,
							"architecture": "x64",
							"modernui": 1
						},
						"classnamespace": "box",
						"rect": [59.0, 167.0, 1651.0, 879.0],
						"boxes": [
							{
								"box": {
									"id": "obj-7",
									"maxclass": "newobj",
									"numinlets": 1,
									"numoutlets": 2,
									"outlettype": ["bang", ""],
									"patching_rect": [45.07743714253107, 136.0, 62.0, 22.0],
									"text": "t b l"
								}
							},
							{
								"box": {
									"id": "obj-39",
									"maxclass": "newobj",
									"numinlets": 1,
									"numoutlets": 1,
									"outlettype": [""],
									"patching_rect": [45.07743714253107, 106.0, 130.0, 22.0],
									"text": "kac.triangulatePolygon"
								}
							},
							{
								"box": {
									"id": "obj-29",
									"maxclass": "newobj",
									"numinlets": 1,
									"numoutlets": 2,
									"outlettype": ["", ""],
									"patching_rect": [45.07743714253107, 299.0, 475.0, 22.0],
									"text": "jit.gl.sketch @drawto simple-polygon-helpfile-2 @gl_color 0. 0. 0. 0. @position 0. 0. -0.5"
								}
							},
							{
								"box": {
									"id": "obj-54",
									"maxclass": "newobj",
									"numinlets": 1,
									"numoutlets": 2,
									"outlettype": ["", "reset"],
									"patching_rect": [45.07743714253107, 76.0, 151.0, 22.0],
									"text": "t l reset"
								}
							},
							{
								"box": {
									"id": "obj-43",
									"maxclass": "newobj",
									"numinlets": 1,
									"numoutlets": 1,
									"outlettype": [""],
									"patching_rect": [88.07743714253107, 200.0, 62.0, 22.0],
									"text": "append 0."
								}
							},
							{
								"box": {
									"id": "obj-46",
									"maxclass": "newobj",
									"numinlets": 2,
									"numoutlets": 2,
									"outlettype": ["", ""],
									"patching_rect": [88.07743714253107, 166.0, 53.0, 22.0],
									"text": "list.iter 2"
								}
							},
							{
								"box": {
									"id": "obj-47",
									"maxclass": "newobj",
									"numinlets": 2,
									"numoutlets": 2,
									"outlettype": ["", ""],
									"patching_rect": [45.07743714253107, 235.0, 57.0, 22.0],
									"text": "list.group"
								}
							},
							{
								"box": {
									"id": "obj-41",
									"maxclass": "newobj",
									"numinlets": 1,
									"numoutlets": 1,
									"outlettype": [""],
									"patching_rect": [45.07743714253107, 264.0, 66.0, 22.0],
									"text": "prepend tri"
								}
							},
							{
								"box": {
									"comment": "",
									"id": "obj-87",
									"index": 1,
									"maxclass": "inlet",
									"numinlets": 0,
									"numoutlets": 1,
									"outlettype": [""],
									"patching_rect": [45.07743714253107, 28.255804777145386, 30.0, 30.0]
								}
							}
						],
						"lines": [
							{
								"patchline": {
									"destination": ["obj-7", 0],
									"source": ["obj-39", 0]
								}
							},
							{
								"patchline": {
									"destination": ["obj-29", 0],
									"source": ["obj-41", 0]
								}
							},
							{
								"patchline": {
									"destination": ["obj-47", 0],
									"midpoints": [
										97.57743714253107, 228.7578125, 54.57743714253107, 228.7578125
									],
									"source": ["obj-43", 0]
								}
							},
							{
								"patchline": {
									"destination": ["obj-43", 0],
									"source": ["obj-46", 0]
								}
							},
							{
								"patchline": {
									"destination": ["obj-41", 0],
									"source": ["obj-47", 0]
								}
							},
							{
								"patchline": {
									"destination": ["obj-29", 0],
									"midpoints": [
										186.57743714253107, 291.8984375, 54.57743714253107, 291.8984375
									],
									"source": ["obj-54", 1]
								}
							},
							{
								"patchline": {
									"destination": ["obj-39", 0],
									"source": ["obj-54", 0]
								}
							},
							{
								"patchline": {
									"destination": ["obj-46", 0],
									"source": ["obj-7", 1]
								}
							},
							{
								"patchline": {
									"destination": ["obj-47", 0],
									"source": ["obj-7", 0]
								}
							},
							{
								"patchline": {
									"destination": ["obj-54", 0],
									"source": ["obj-87", 0]
								}
							}
						]
					},
					"patching_rect": [417.4392524957657, 317.0, 90.0, 22.0],
					"text": "p paint polygon"
				}
			},
			{
				"box": {
					"id": "obj-12",
					"linecount": 17,
					"maxclass": "message",
					"numinlets": 2,
					"numoutlets": 1,
					"outlettype": [""],
					"patching_rect": [653.0, 359.0, 122.0, 236.0],
					"text": "-1. -0.013573 -0.484276 -0.143677 -0.563635 -0.24252 0.351381 -0.628549 0.625236 -0.658065 0.853151 -0.638895 1. -0.013573 0.55914 0.029836 0.757564 -0.425805 0.16602 -0.259301 0.350803 -0.021145 -0.386218 -0.093341 0.203331 0.000367 0.194453 0.339507 -0.223482 0.658065 -0.311525 0.531784 -0.549323 0.07181"
				}
			},
			{
				"box": {
					"id": "obj-4",
					"maxclass": "newobj",
					"numinlets": 1,
					"numoutlets": 1,
					"outlettype": [""],
					"patching_rect": [417.4392524957657, 280.5, 225.0, 22.0],
					"text": "kac.normalisePolygon @signed_norm -1"
				}
			},
			{
				"box": {
					"id": "obj-64",
					"maxclass": "newobj",
					"numinlets": 1,
					"numoutlets": 0,
					"patcher": {
						"fileversion": 1,
						"appversion": {
							"major": 9,
							"minor": 1,
							"revision": 4,
							"architecture": "x64",
							"modernui": 1
						},
						"classnamespace": "box",
						"rect": [59.0, 167.0, 1651.0, 879.0],
						"boxes": [
							{
								"box": {
									"id": "obj-57",
									"maxclass": "newobj",
									"numinlets": 1,
									"numoutlets": 1,
									"outlettype": [""],
									"patching_rect": [209.0, 170.0, 62.0, 22.0],
									"text": "append 0."
								}
							},
							{
								"box": {
									"id": "obj-56",
									"maxclass": "newobj",
									"numinlets": 2,
									"numoutlets": 2,
									"outlettype": ["", ""],
									"patching_rect": [209.0, 135.0, 61.0, 22.0],
									"text": "list.slice 2"
								}
							},
							{
								"box": {
									"id": "obj-27",
									"maxclass": "newobj",
									"numinlets": 1,
									"numoutlets": 2,
									"outlettype": ["", ""],
									"patching_rect": [130.00001019239426, 226.0, 29.5, 22.0],
									"text": "t l l"
								}
							},
							{
								"box": {
									"id": "obj-25",
									"maxclass": "newobj",
									"numinlets": 2,
									"numoutlets": 2,
									"outlettype": ["", ""],
									"patching_rect": [130.00001019239426, 170.0, 53.0, 22.0],
									"text": "list.iter 2"
								}
							},
							{
								"box": {
									"id": "obj-26",
									"maxclass": "newobj",
									"numinlets": 1,
									"numoutlets": 1,
									"outlettype": [""],
									"patching_rect": [130.00001019239426, 200.0, 62.0, 22.0],
									"text": "append 0."
								}
							},
							{
								"box": {
									"id": "obj-24",
									"maxclass": "newobj",
									"numinlets": 2,
									"numoutlets": 1,
									"outlettype": [""],
									"patching_rect": [50.0, 272.0, 99.00001019239426, 22.0],
									"text": "join"
								}
							},
							{
								"box": {
									"id": "obj-23",
									"maxclass": "newobj",
									"numinlets": 1,
									"numoutlets": 1,
									"outlettype": [""],
									"patching_rect": [50.0, 170.0, 62.0, 22.0],
									"text": "append 0."
								}
							},
							{
								"box": {
									"id": "obj-16",
									"maxclass": "newobj",
									"numinlets": 2,
									"numoutlets": 2,
									"outlettype": ["", ""],
									"patching_rect": [50.0, 135.0, 99.00001019239426, 22.0],
									"text": "list.slice 2"
								}
							},
							{
								"box": {
									"id": "obj-14",
									"maxclass": "newobj",
									"numinlets": 1,
									"numoutlets": 1,
									"outlettype": [""],
									"patching_rect": [50.0, 301.0, 121.0, 22.0],
									"text": "prepend linesegment"
								}
							},
							{
								"box": {
									"id": "obj-11",
									"maxclass": "newobj",
									"numinlets": 1,
									"numoutlets": 3,
									"outlettype": ["", "", "reset"],
									"patching_rect": [50.0, 100.0, 337.0, 22.0],
									"text": "t l l reset"
								}
							},
							{
								"box": {
									"id": "obj-7",
									"maxclass": "newobj",
									"numinlets": 1,
									"numoutlets": 2,
									"outlettype": ["", ""],
									"patching_rect": [50.0, 342.0, 563.0, 22.0],
									"text": "jit.gl.sketch @drawto simple-polygon-helpfile-1 @gl_color 0. 0. 0. 0. @line_width 1.5 @position 0. 0. -0.5"
								}
							},
							{
								"box": {
									"comment": "",
									"id": "obj-63",
									"index": 1,
									"maxclass": "inlet",
									"numinlets": 0,
									"numoutlets": 1,
									"outlettype": [""],
									"patching_rect": [50.0, 40.0, 30.0, 30.0]
								}
							}
						],
						"lines": [
							{
								"patchline": {
									"destination": ["obj-16", 0],
									"source": ["obj-11", 0]
								}
							},
							{
								"patchline": {
									"destination": ["obj-56", 0],
									"source": ["obj-11", 1]
								}
							},
							{
								"patchline": {
									"destination": ["obj-7", 0],
									"midpoints": [377.5, 332.53509521484375, 59.5, 332.53509521484375],
									"source": ["obj-11", 2]
								}
							},
							{
								"patchline": {
									"destination": ["obj-7", 0],
									"source": ["obj-14", 0]
								}
							},
							{
								"patchline": {
									"destination": ["obj-23", 0],
									"source": ["obj-16", 0]
								}
							},
							{
								"patchline": {
									"destination": ["obj-25", 0],
									"source": ["obj-16", 1]
								}
							},
							{
								"patchline": {
									"destination": ["obj-24", 0],
									"source": ["obj-23", 0]
								}
							},
							{
								"patchline": {
									"destination": ["obj-14", 0],
									"source": ["obj-24", 0]
								}
							},
							{
								"patchline": {
									"destination": ["obj-26", 0],
									"source": ["obj-25", 0]
								}
							},
							{
								"patchline": {
									"destination": ["obj-27", 0],
									"source": ["obj-26", 0]
								}
							},
							{
								"patchline": {
									"destination": ["obj-24", 0],
									"midpoints": [
										150.00001019239426, 255.865966796875, 59.5, 255.865966796875
									],
									"source": ["obj-27", 1]
								}
							},
							{
								"patchline": {
									"destination": ["obj-24", 1],
									"source": ["obj-27", 0]
								}
							},
							{
								"patchline": {
									"destination": ["obj-57", 0],
									"source": ["obj-56", 0]
								}
							},
							{
								"patchline": {
									"destination": ["obj-24", 1],
									"midpoints": [
										218.5, 263.60272216796875, 139.50001019239426, 263.60272216796875
									],
									"source": ["obj-57", 0]
								}
							},
							{
								"patchline": {
									"destination": ["obj-11", 0],
									"source": ["obj-63", 0]
								}
							}
						]
					},
					"patching_rect": [29.0, 251.0, 83.0, 22.0],
					"text": "p plot polygon"
				}
			},
			{
				"box": {
					"auto_handle": 0,
					"enable": 1,
					"erase_color": [1.0, 1.0, 1.0, 1.0],
					"fps": 30.0,
					"gizmos": 0,
					"id": "obj-15",
					"maxclass": "jit.pworld",
					"name": "simple-polygon-helpfile-1",
					"numinlets": 1,
					"numoutlets": 2,
					"outlettype": ["jit_matrix", ""],
					"patching_rect": [29.0, 285.0, 200.0, 200.0],
					"sync": 1
				}
			},
			{
				"box": {
					"id": "obj-86",
					"linecount": 17,
					"maxclass": "message",
					"numinlets": 2,
					"numoutlets": 1,
					"outlettype": [""],
					"patching_rect": [259.71962624788284, 280.5, 127.0, 236.0],
					"text": "0.124069 0.540992 0.662998 0.511678 0.21326 0.01857 0.072085 0.313931 -0.216805 -0.436648 -0.020623 0.18126 -0.354147 0.337822 -0.866924 0.087293 -0.787226 -0.059675 -0.456556 -0.514535 -0.59318 -0.993587 -0.215704 -0.556348 -0.158411 -0.681523 0.661966 0.018654 0.823999 0.270105 0.916398 0.500676 0.380929 0.947786"
				}
			},
			{
				"box": {
					"id": "obj-1",
					"maxclass": "newobj",
					"numinlets": 1,
					"numoutlets": 1,
					"outlettype": [""],
					"patching_rect": [29.0, 207.0, 121.0, 22.0],
					"text": "kac.generatePolygon"
				}
			},
			{
				"box": {
					"id": "obj-3",
					"linecount": 3,
					"maxclass": "comment",
					"numinlets": 1,
					"numoutlets": 0,
					"patching_rect": [25.0, 65.0, 702.0, 47.0],
					"text": "Generate a random simple polygon with a specified number of vertices. (WARNING: This is slow for large numbers of vertices...)\nparameters:\n    N: The number of vertices."
				}
			},
			{
				"box": {
					"border": 0,
					"filename": "helpdetails.js",
					"id": "obj-2",
					"ignoreclick": 1,
					"jsarguments": ["kac.generatePolygon"],
					"maxclass": "jsui",
					"numinlets": 1,
					"numoutlets": 1,
					"outlettype": [""],
					"parameter_enable": 0,
					"patching_rect": [26.0, 13.0, 607.0, 53.0]
				}
			},
			{
				"box": {
					"id": "obj-36",
					"maxclass": "newobj",
					"numinlets": 1,
					"numoutlets": 1,
					"outlettype": [""],
					"patching_rect": [29.0, 138.0, 70.0, 22.0],
					"text": "loadmess 3"
				}
			},
			{
				"box": {
					"id": "obj-5",
					"maxclass": "number",
					"minimum": 3,
					"numinlets": 1,
					"numoutlets": 2,
					"outlettype": ["", "bang"],
					"parameter_enable": 0,
					"patching_rect": [29.0, 172.0, 50.0, 22.0]
				}
			}
		],
		"lines": [
			{
				"patchline": {
					"destination": ["obj-4", 0],
					"midpoints": [38.5, 239.89524156297557, 426.9392524957657, 239.89524156297557],
					"order": 0,
					"source": ["obj-1", 0]
				}
			},
			{
				"patchline": {
					"destination": ["obj-64", 0],
					"order": 2,
					"source": ["obj-1", 0]
				}
			},
			{
				"patchline": {
					"destination": ["obj-86", 1],
					"midpoints": [38.5, 240.00426147552207, 377.21962624788284, 240.00426147552207],
					"order": 1,
					"source": ["obj-1", 0]
				}
			},
			{
				"patchline": {
					"destination": ["obj-5", 0],
					"source": ["obj-36", 0]
				}
			},
			{
				"patchline": {
					"destination": ["obj-12", 1],
					"midpoints": [426.9392524957657, 309.2999997437, 765.5, 309.2999997437],
					"order": 0,
					"source": ["obj-4", 0]
				}
			},
			{
				"patchline": {
					"destination": ["obj-9", 0],
					"order": 1,
					"source": ["obj-4", 0]
				}
			},
			{
				"patchline": {
					"destination": ["obj-1", 0],
					"source": ["obj-5", 0]
				}
			}
		],
		"autosave": 0
	}
}
