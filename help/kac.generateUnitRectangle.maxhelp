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
		"rect": [34.0, 143.0, 1372.0, 723.0],
		"boxes": [
			{
				"box": {
					"id": "obj-19",
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
						"rect": [34.0, 143.0, 1372.0, 723.0],
						"boxes": [
							{
								"box": {
									"id": "obj-19",
									"maxclass": "newobj",
									"numinlets": 1,
									"numoutlets": 1,
									"outlettype": [""],
									"patching_rect": [118.0, 160.0, 62.0, 22.0],
									"text": "append 0."
								}
							},
							{
								"box": {
									"id": "obj-20",
									"maxclass": "newobj",
									"numinlets": 2,
									"numoutlets": 2,
									"outlettype": ["", ""],
									"patching_rect": [118.0, 130.0, 53.0, 22.0],
									"text": "list.iter 2"
								}
							},
							{
								"box": {
									"id": "obj-21",
									"maxclass": "newobj",
									"numinlets": 2,
									"numoutlets": 2,
									"outlettype": ["", ""],
									"patching_rect": [50.0, 192.0, 57.0, 22.0],
									"text": "list.group"
								}
							},
							{
								"box": {
									"id": "obj-22",
									"maxclass": "newobj",
									"numinlets": 1,
									"numoutlets": 3,
									"outlettype": ["bang", "", "reset"],
									"patching_rect": [50.0, 100.0, 155.0, 22.0],
									"text": "t b l reset"
								}
							},
							{
								"box": {
									"id": "obj-2",
									"maxclass": "newobj",
									"numinlets": 1,
									"numoutlets": 1,
									"outlettype": [""],
									"patching_rect": [496.0, 160.0, 62.0, 22.0],
									"text": "append 0."
								}
							},
							{
								"box": {
									"id": "obj-3",
									"maxclass": "newobj",
									"numinlets": 2,
									"numoutlets": 2,
									"outlettype": ["", ""],
									"patching_rect": [496.0, 130.0, 53.0, 22.0],
									"text": "list.iter 2"
								}
							},
							{
								"box": {
									"id": "obj-5",
									"maxclass": "newobj",
									"numinlets": 2,
									"numoutlets": 2,
									"outlettype": ["", ""],
									"patching_rect": [428.0, 192.0, 57.0, 22.0],
									"text": "list.group"
								}
							},
							{
								"box": {
									"id": "obj-6",
									"maxclass": "newobj",
									"numinlets": 1,
									"numoutlets": 3,
									"outlettype": ["bang", "", "reset"],
									"patching_rect": [428.0, 100.0, 155.0, 22.0],
									"text": "t b l reset"
								}
							},
							{
								"box": {
									"id": "obj-17",
									"maxclass": "newobj",
									"numinlets": 1,
									"numoutlets": 2,
									"outlettype": ["", ""],
									"patching_rect": [428.0, 257.0, 441.0, 22.0],
									"text": "jit.gl.sketch @drawto unit-rectangle-helpfile-2 @gl_color 0. 0. 0. 0. @line_width 1."
								}
							},
							{
								"box": {
									"id": "obj-16",
									"maxclass": "newobj",
									"numinlets": 1,
									"numoutlets": 1,
									"outlettype": [""],
									"patching_rect": [428.0, 223.0, 113.0, 22.0],
									"text": "prepend framequad"
								}
							},
							{
								"box": {
									"id": "obj-8",
									"maxclass": "newobj",
									"numinlets": 1,
									"numoutlets": 1,
									"outlettype": [""],
									"patching_rect": [50.0, 223.0, 83.0, 22.0],
									"text": "prepend quad"
								}
							},
							{
								"box": {
									"id": "obj-4",
									"maxclass": "newobj",
									"numinlets": 1,
									"numoutlets": 2,
									"outlettype": ["", ""],
									"patching_rect": [50.0, 257.0, 359.0, 22.0],
									"text": "jit.gl.sketch @drawto unit-rectangle-helpfile-1 @gl_color 0. 0. 0. 0."
								}
							},
							{
								"box": {
									"comment": "",
									"id": "obj-18",
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
									"destination": ["obj-17", 0],
									"source": ["obj-16", 0]
								}
							},
							{
								"patchline": {
									"destination": ["obj-22", 0],
									"order": 1,
									"source": ["obj-18", 0]
								}
							},
							{
								"patchline": {
									"destination": ["obj-6", 0],
									"midpoints": [59.5, 85.0, 437.5, 85.0],
									"order": 0,
									"source": ["obj-18", 0]
								}
							},
							{
								"patchline": {
									"destination": ["obj-21", 0],
									"midpoints": [127.5, 187.0, 59.5, 187.0],
									"source": ["obj-19", 0]
								}
							},
							{
								"patchline": {
									"destination": ["obj-5", 0],
									"midpoints": [505.5, 187.0, 437.5, 187.0],
									"source": ["obj-2", 0]
								}
							},
							{
								"patchline": {
									"destination": ["obj-19", 0],
									"source": ["obj-20", 0]
								}
							},
							{
								"patchline": {
									"destination": ["obj-8", 0],
									"source": ["obj-21", 0]
								}
							},
							{
								"patchline": {
									"destination": ["obj-20", 0],
									"source": ["obj-22", 1]
								}
							},
							{
								"patchline": {
									"destination": ["obj-21", 0],
									"source": ["obj-22", 0]
								}
							},
							{
								"patchline": {
									"destination": ["obj-4", 0],
									"midpoints": [195.5, 251.53616333007812, 59.5, 251.53616333007812],
									"source": ["obj-22", 2]
								}
							},
							{
								"patchline": {
									"destination": ["obj-2", 0],
									"source": ["obj-3", 0]
								}
							},
							{
								"patchline": {
									"destination": ["obj-16", 0],
									"source": ["obj-5", 0]
								}
							},
							{
								"patchline": {
									"destination": ["obj-17", 0],
									"midpoints": [573.5, 251.51467895507812, 437.5, 251.51467895507812],
									"source": ["obj-6", 2]
								}
							},
							{
								"patchline": {
									"destination": ["obj-3", 0],
									"source": ["obj-6", 1]
								}
							},
							{
								"patchline": {
									"destination": ["obj-5", 0],
									"source": ["obj-6", 0]
								}
							},
							{
								"patchline": {
									"destination": ["obj-4", 0],
									"source": ["obj-8", 0]
								}
							}
						]
					},
					"patching_rect": [29.0, 250.0, 91.0, 22.0],
					"text": "p plot rectangle"
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
					"name": "unit-rectangle-helpfile-2",
					"numinlets": 1,
					"numoutlets": 2,
					"outlettype": ["jit_matrix", ""],
					"patching_rect": [243.2000036239624, 302.40000450611115, 200.0, 200.0],
					"sync": 1
				}
			},
			{
				"box": {
					"auto_handle": 0,
					"enable": 1,
					"erase_color": [1.0, 1.0, 1.0, 1.0],
					"fps": 30.0,
					"gizmos": 0,
					"id": "obj-6",
					"maxclass": "jit.pworld",
					"name": "unit-rectangle-helpfile-1",
					"numinlets": 1,
					"numoutlets": 2,
					"outlettype": ["jit_matrix", ""],
					"patching_rect": [28.800000429153442, 302.40000450611115, 200.0, 200.0],
					"sync": 1
				}
			},
			{
				"box": {
					"format": 6,
					"id": "obj-5",
					"maxclass": "flonum",
					"numinlets": 1,
					"numoutlets": 2,
					"outlettype": ["", "bang"],
					"parameter_enable": 0,
					"patching_rect": [29.0, 173.0, 50.0, 22.0]
				}
			},
			{
				"box": {
					"fontname": "Arial",
					"id": "obj-3",
					"linecount": 3,
					"maxclass": "comment",
					"numinlets": 1,
					"numoutlets": 0,
					"patching_rect": [25.0, 65.0, 608.0, 47.0],
					"text": "Generate a unit rectangle with a specific aspect ratio. \nparameters:\n    epsilon: The aspect ratio."
				}
			},
			{
				"box": {
					"border": 0,
					"filename": "helpdetails.js",
					"id": "obj-2",
					"ignoreclick": 1,
					"jsarguments": ["kac.generateUnitRectangle"],
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
					"maxclass": "message",
					"numinlets": 2,
					"numoutlets": 1,
					"outlettype": [""],
					"patching_rect": [141.0, 250.0, 196.80000293254852, 22.0],
					"text": "-0.5 -0.5 -0.5 0.5 0.5 0.5 0.5 -0.5"
				}
			},
			{
				"box": {
					"id": "obj-36",
					"maxclass": "newobj",
					"numinlets": 1,
					"numoutlets": 1,
					"outlettype": [""],
					"patching_rect": [29.0, 138.0, 73.0, 22.0],
					"text": "loadmess 1."
				}
			},
			{
				"box": {
					"id": "obj-1",
					"maxclass": "newobj",
					"numinlets": 1,
					"numoutlets": 1,
					"outlettype": [""],
					"patching_rect": [29.0, 207.0, 153.0, 22.0],
					"text": "kac.generateUnitRectangle"
				}
			}
		],
		"lines": [
			{
				"patchline": {
					"destination": ["obj-19", 0],
					"order": 1,
					"source": ["obj-1", 0]
				}
			},
			{
				"patchline": {
					"destination": ["obj-86", 1],
					"midpoints": [38.5, 236.25, 328.3000029325485, 236.25],
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
