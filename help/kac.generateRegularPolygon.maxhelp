{
	"patcher": {
		"fileversion": 1,
		"appversion": {
			"major": 9,
			"minor": 1,
			"revision": 2,
			"architecture": "x64",
			"modernui": 1
		},
		"classnamespace": "box",
		"rect": [-1483.0, 239.0, 1005.0, 639.0],
		"boxes": [
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
							"revision": 2,
							"architecture": "x64",
							"modernui": 1
						},
						"classnamespace": "box",
						"rect": [-1483.0, 239.0, 1332.0, 639.0],
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
									"patching_rect": [50.0, 342.0, 566.0, 22.0],
									"text": "jit.gl.sketch @drawto regular-polygon-helpfile-1 @gl_color 0. 0. 0. 0. @line_width 1.5 @position 0. 0. -0.5"
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
					"patching_rect": [29.0, 247.0, 83.0, 22.0],
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
					"name": "regular-polygon-helpfile-1",
					"numinlets": 1,
					"numoutlets": 2,
					"outlettype": ["jit_matrix", ""],
					"patching_rect": [29.0, 280.5, 200.0, 200.0],
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
					"text": "Generate a regular polygon with a specified number of vertices. \nparameters:\n    N: The number of vertices."
				}
			},
			{
				"box": {
					"border": 0,
					"filename": "helpdetails.js",
					"id": "obj-2",
					"ignoreclick": 1,
					"jsarguments": ["kac.generateRegularPolygon"],
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
					"linecount": 5,
					"maxclass": "message",
					"numinlets": 2,
					"numoutlets": 1,
					"outlettype": [""],
					"patching_rect": [259.71962624788284, 280.5, 127.0, 76.0],
					"text": "0.951057 0.309017 0.587785 -0.809017 -0.587785 -0.809017 -0.951057 0.309017 -0. 1."
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
			},
			{
				"box": {
					"id": "obj-1",
					"maxclass": "newobj",
					"numinlets": 1,
					"numoutlets": 1,
					"outlettype": [""],
					"patching_rect": [29.0, 207.0, 163.0, 22.0],
					"text": "kac.generateRegularPolygon"
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
					"midpoints": [38.5, 236.25, 377.21962624788284, 236.25],
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
					"destination": ["obj-1", 0],
					"source": ["obj-5", 0]
				}
			}
		],
		"autosave": 0
	}
}
