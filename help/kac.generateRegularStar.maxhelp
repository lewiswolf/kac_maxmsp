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
					"name": "regular-star-helpfile-2",
					"numinlets": 1,
					"numoutlets": 2,
					"outlettype": ["jit_matrix", ""],
					"patching_rect": [244.0, 315.0, 200.0, 200.0],
					"sync": 1
				}
			},
			{
				"box": {
					"id": "obj-8",
					"maxclass": "newobj",
					"numinlets": 1,
					"numoutlets": 2,
					"outlettype": ["bang", "int"],
					"patching_rect": [137.5, 206.5, 29.5, 22.0],
					"text": "t b i"
				}
			},
			{
				"box": {
					"id": "obj-4",
					"maxclass": "newobj",
					"numinlets": 1,
					"numoutlets": 1,
					"outlettype": [""],
					"patching_rect": [137.5, 137.5, 70.0, 22.0],
					"text": "loadmess 3"
				}
			},
			{
				"box": {
					"id": "obj-6",
					"maxclass": "number",
					"minimum": 1,
					"numinlets": 1,
					"numoutlets": 2,
					"outlettype": ["", "bang"],
					"parameter_enable": 0,
					"patching_rect": [137.5, 171.5, 50.0, 22.0]
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
									"id": "obj-1",
									"maxclass": "newobj",
									"numinlets": 1,
									"numoutlets": 2,
									"outlettype": ["bang", ""],
									"patching_rect": [638.0, 179.0, 62.0, 22.0],
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
									"patching_rect": [638.0, 149.0, 130.0, 22.0],
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
									"patching_rect": [638.0, 342.0, 455.0, 22.0],
									"text": "jit.gl.sketch @drawto regular-star-helpfile-2 @gl_color 0. 0. 0. 0. @position 0. 0. -0.5"
								}
							},
							{
								"box": {
									"id": "obj-54",
									"maxclass": "newobj",
									"numinlets": 1,
									"numoutlets": 2,
									"outlettype": ["", "reset"],
									"patching_rect": [638.0, 119.0, 151.0, 22.0],
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
									"patching_rect": [681.0, 243.0, 62.0, 22.0],
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
									"patching_rect": [681.0, 209.0, 53.0, 22.0],
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
									"patching_rect": [638.0, 278.0, 57.0, 22.0],
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
									"patching_rect": [638.0, 307.0, 66.0, 22.0],
									"text": "prepend tri"
								}
							},
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
									"patching_rect": [50.0, 342.0, 544.0, 22.0],
									"text": "jit.gl.sketch @drawto regular-star-helpfile-1 @gl_color 0. 0. 0. 0. @line_width 1.5 @position 0. 0. -0.5"
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
									"patching_rect": [50.0, 40.0, 30.0, 30.0],
									"varname": "u387002168"
								}
							}
						],
						"lines": [
							{
								"patchline": {
									"destination": ["obj-46", 0],
									"source": ["obj-1", 1]
								}
							},
							{
								"patchline": {
									"destination": ["obj-47", 0],
									"source": ["obj-1", 0]
								}
							},
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
									"destination": ["obj-1", 0],
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
									"midpoints": [690.5, 271.5020077228546, 647.5, 271.5020077228546],
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
									"midpoints": [779.5, 334.6426327228546, 647.5, 334.6426327228546],
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
									"order": 1,
									"source": ["obj-63", 0]
								}
							},
							{
								"patchline": {
									"destination": ["obj-54", 0],
									"midpoints": [59.5, 83.28125, 647.5, 83.28125],
									"order": 0,
									"source": ["obj-63", 0]
								}
							}
						]
					},
					"patching_rect": [25.0, 281.0, 83.0, 22.0],
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
					"name": "regular-star-helpfile-1",
					"numinlets": 1,
					"numoutlets": 2,
					"outlettype": ["jit_matrix", ""],
					"patching_rect": [25.0, 315.0, 200.0, 200.0],
					"sync": 1
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
					"text": "Generate a regular star polygon via a specified Schläfli symbol. \nparameters:\n    {p, q}: Schläfli symbol."
				}
			},
			{
				"box": {
					"border": 0,
					"filename": "helpdetails.js",
					"id": "obj-2",
					"ignoreclick": 1,
					"jsarguments": ["kac.generateRegularStar"],
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
					"id": "obj-86",
					"linecount": 12,
					"maxclass": "message",
					"numinlets": 2,
					"numoutlets": 1,
					"outlettype": [""],
					"patching_rect": [461.0, 315.0, 133.0, 169.0],
					"text": "1. 0. 0.5 0.207107 0.707107 0.707107 0.207107 0.5 0. 1. -0.207107 0.5 -0.707107 0.707107 -0.5 0.207107 -1. 0. -0.5 -0.207107 -0.707107 -0.707107 -0.207107 -0.5 -0. -1. 0.207107 -0.5 0.707107 -0.707107 0.5 -0.207107"
				}
			},
			{
				"box": {
					"id": "obj-36",
					"maxclass": "newobj",
					"numinlets": 1,
					"numoutlets": 1,
					"outlettype": [""],
					"patching_rect": [25.0, 138.0, 70.0, 22.0],
					"text": "loadmess 8"
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
					"patching_rect": [25.0, 172.0, 50.0, 22.0]
				}
			},
			{
				"box": {
					"id": "obj-1",
					"maxclass": "newobj",
					"numinlets": 2,
					"numoutlets": 1,
					"outlettype": [""],
					"patching_rect": [25.0, 241.0, 142.0, 22.0],
					"text": "kac.generateRegularStar"
				}
			}
		],
		"lines": [
			{
				"patchline": {
					"destination": ["obj-64", 0],
					"order": 1,
					"source": ["obj-1", 0]
				}
			},
			{
				"patchline": {
					"destination": ["obj-86", 1],
					"midpoints": [34.5, 271.9453125, 584.5, 271.9453125],
					"order": 0,
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
					"destination": ["obj-6", 0],
					"source": ["obj-4", 0]
				}
			},
			{
				"patchline": {
					"destination": ["obj-1", 0],
					"source": ["obj-5", 0]
				}
			},
			{
				"patchline": {
					"destination": ["obj-8", 0],
					"source": ["obj-6", 0]
				}
			},
			{
				"patchline": {
					"destination": ["obj-1", 1],
					"source": ["obj-8", 1]
				}
			},
			{
				"patchline": {
					"destination": ["obj-1", 0],
					"midpoints": [147.0, 234.75, 34.5, 234.75],
					"source": ["obj-8", 0]
				}
			}
		],
		"autosave": 0
	}
}
