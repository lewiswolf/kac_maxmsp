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
		"rect": [34.0, 199.0, 1002.0, 667.0],
		"boxes": [
			{
				"box": {
					"id": "obj-4",
					"linecount": 2,
					"maxclass": "newobj",
					"numinlets": 1,
					"numoutlets": 1,
					"outlettype": [""],
					"patching_rect": [128.0, 433.0, 170.0, 35.0],
					"text": "kac.normaliseConvexPolygon @signed_norm 1"
				}
			},
			{
				"box": {
					"id": "obj-38",
					"maxclass": "newobj",
					"numinlets": 1,
					"numoutlets": 2,
					"outlettype": ["float", "float"],
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
						"rect": [62.0, 120.0, 1340.0, 580.0],
						"boxes": [
							{
								"box": {
									"id": "obj-4",
									"maxclass": "newobj",
									"numinlets": 2,
									"numoutlets": 1,
									"outlettype": ["float"],
									"patching_rect": [96.0, 151.8, 31.0, 22.0],
									"text": "* -1."
								}
							},
							{
								"box": {
									"id": "obj-22",
									"maxclass": "newobj",
									"numinlets": 1,
									"numoutlets": 5,
									"outlettype": ["int", "float", "float", "float", "int"],
									"patching_rect": [28.0, 121.60000000000001, 155.0, 22.0],
									"text": "unpack 0 0. 0. 0. 0"
								}
							},
							{
								"box": {
									"id": "obj-16",
									"maxclass": "newobj",
									"numinlets": 1,
									"numoutlets": 1,
									"outlettype": [""],
									"patching_rect": [28.0, 91.4, 108.0, 22.0],
									"text": "vexpr ($f1 * 2.) - 1."
								}
							},
							{
								"box": {
									"id": "obj-12",
									"maxclass": "newobj",
									"numinlets": 2,
									"numoutlets": 2,
									"outlettype": ["", ""],
									"patching_rect": [28.0, 61.2, 66.0, 22.0],
									"text": "route node"
								}
							},
							{
								"box": {
									"comment": "",
									"id": "obj-35",
									"index": 1,
									"maxclass": "inlet",
									"numinlets": 0,
									"numoutlets": 1,
									"outlettype": [""],
									"patching_rect": [28.0, 23.0, 30.0, 30.0]
								}
							},
							{
								"box": {
									"comment": "",
									"id": "obj-36",
									"index": 1,
									"maxclass": "outlet",
									"numinlets": 1,
									"numoutlets": 0,
									"patching_rect": [62.0, 182.0, 30.0, 30.0]
								}
							},
							{
								"box": {
									"comment": "",
									"id": "obj-37",
									"index": 2,
									"maxclass": "outlet",
									"numinlets": 1,
									"numoutlets": 0,
									"patching_rect": [96.0, 182.0, 30.0, 30.0]
								}
							}
						],
						"lines": [
							{
								"patchline": {
									"destination": ["obj-16", 0],
									"source": ["obj-12", 0]
								}
							},
							{
								"patchline": {
									"destination": ["obj-22", 0],
									"source": ["obj-16", 0]
								}
							},
							{
								"patchline": {
									"destination": ["obj-36", 0],
									"source": ["obj-22", 1]
								}
							},
							{
								"patchline": {
									"destination": ["obj-4", 0],
									"source": ["obj-22", 2]
								}
							},
							{
								"patchline": {
									"destination": ["obj-12", 0],
									"source": ["obj-35", 0]
								}
							},
							{
								"patchline": {
									"destination": ["obj-37", 0],
									"source": ["obj-4", 0]
								}
							}
						]
					},
					"patching_rect": [66.0, 266.42857142857144, 142.0, 22.0],
					"text": "p extract coordinates"
				}
			},
			{
				"box": {
					"format": 6,
					"id": "obj-17",
					"maxclass": "flonum",
					"maximum": 6.283185307179586,
					"minimum": -6.283185307179586,
					"numinlets": 1,
					"numoutlets": 2,
					"outlettype": ["", "bang"],
					"parameter_enable": 0,
					"patching_rect": [189.0, 363.0, 50.0, 22.0]
				}
			},
			{
				"box": {
					"format": 6,
					"id": "obj-14",
					"maxclass": "flonum",
					"maximum": 1.0,
					"minimum": -1.0,
					"numinlets": 1,
					"numoutlets": 2,
					"outlettype": ["", "bang"],
					"parameter_enable": 0,
					"patching_rect": [66.0, 363.0714285714286, 50.0, 22.0]
				}
			},
			{
				"box": {
					"id": "obj-8",
					"maxclass": "newobj",
					"numinlets": 2,
					"numoutlets": 2,
					"outlettype": ["float", "float"],
					"patching_rect": [66.0, 330.8571428571429, 142.0, 22.0],
					"text": "cartopol"
				}
			},
			{
				"box": {
					"id": "obj-5",
					"maxclass": "newobj",
					"numinlets": 1,
					"numoutlets": 1,
					"outlettype": [""],
					"patching_rect": [25.0, 124.0, 149.0, 22.0],
					"text": "loadmess setnode 1 0.5 0."
				}
			},
			{
				"box": {
					"id": "obj-7",
					"maxclass": "nodes",
					"nodesnames": [" "],
					"nsize": [0.0],
					"numinlets": 1,
					"numoutlets": 3,
					"outlettype": ["", "", ""],
					"parameter_enable": 0,
					"patching_rect": [25.0, 156.21428571428572, 100.0, 100.0],
					"pointcolor": [0.929411764705882, 0.929411764705882, 0.352941176470588, 1.0],
					"xplace": [0.5],
					"yplace": [0.0]
				}
			},
			{
				"box": {
					"id": "obj-61",
					"maxclass": "newobj",
					"numinlets": 2,
					"numoutlets": 2,
					"outlettype": ["", ""],
					"patching_rect": [66.0, 298.64285714285717, 142.0, 22.0],
					"text": "kac.squareToCircle"
				}
			},
			{
				"box": {
					"id": "obj-19",
					"maxclass": "newobj",
					"numinlets": 2,
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
						"rect": [34.0, 199.0, 1002.0, 667.0],
						"boxes": [
							{
								"box": {
									"comment": "",
									"id": "obj-10",
									"index": 2,
									"maxclass": "inlet",
									"numinlets": 0,
									"numoutlets": 1,
									"outlettype": [""],
									"patching_rect": [428.0, 11.0, 30.0, 30.0]
								}
							},
							{
								"box": {
									"id": "obj-9",
									"maxclass": "newobj",
									"numinlets": 1,
									"numoutlets": 1,
									"outlettype": [""],
									"patching_rect": [428.0, 55.0, 86.0, 22.0],
									"text": "vexpr $f1 * 0.5"
								}
							},
							{
								"box": {
									"id": "obj-1",
									"maxclass": "newobj",
									"numinlets": 1,
									"numoutlets": 1,
									"outlettype": [""],
									"patching_rect": [50.0, 55.0, 86.0, 22.0],
									"text": "vexpr $f1 * 0.5"
								}
							},
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
									"patching_rect": [428.0, 257.0, 438.0, 22.0],
									"text": "jit.gl.sketch @drawto unit-triangle-helpfile-2 @gl_color 0. 0. 0. 0. @line_width 1.5"
								}
							},
							{
								"box": {
									"id": "obj-16",
									"maxclass": "newobj",
									"numinlets": 1,
									"numoutlets": 1,
									"outlettype": [""],
									"patching_rect": [428.0, 223.0, 97.0, 22.0],
									"text": "prepend frametri"
								}
							},
							{
								"box": {
									"id": "obj-8",
									"maxclass": "newobj",
									"numinlets": 1,
									"numoutlets": 1,
									"outlettype": [""],
									"patching_rect": [50.0, 223.0, 66.0, 22.0],
									"text": "prepend tri"
								}
							},
							{
								"box": {
									"id": "obj-4",
									"maxclass": "newobj",
									"numinlets": 1,
									"numoutlets": 2,
									"outlettype": ["", ""],
									"patching_rect": [50.0, 257.0, 349.0, 22.0],
									"text": "jit.gl.sketch @drawto unit-triangle-helpfile-1 @gl_color 0. 0. 0. 0."
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
									"patching_rect": [50.0, 19.0, 30.0, 30.0]
								}
							}
						],
						"lines": [
							{
								"patchline": {
									"destination": ["obj-22", 0],
									"source": ["obj-1", 0]
								}
							},
							{
								"patchline": {
									"destination": ["obj-9", 0],
									"source": ["obj-10", 0]
								}
							},
							{
								"patchline": {
									"destination": ["obj-17", 0],
									"source": ["obj-16", 0]
								}
							},
							{
								"patchline": {
									"destination": ["obj-1", 0],
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
							},
							{
								"patchline": {
									"destination": ["obj-6", 0],
									"source": ["obj-9", 0]
								}
							}
						]
					},
					"patching_rect": [66.0, 475.0, 81.0, 22.0],
					"text": "p plot triangle"
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
					"name": "unit-triangle-helpfile-2",
					"numinlets": 1,
					"numoutlets": 2,
					"outlettype": ["jit_matrix", ""],
					"patching_rect": [433.0, 332.0, 200.0, 200.0],
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
					"name": "unit-triangle-helpfile-1",
					"numinlets": 1,
					"numoutlets": 2,
					"outlettype": ["jit_matrix", ""],
					"patching_rect": [433.0, 124.0, 200.0, 200.0],
					"sync": 1
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
					"text": "Generate a triangle with unit area using a polar coordinate point mapped onto a lens.\nparameters:\n    (r, theta): polar coordinate"
				}
			},
			{
				"box": {
					"border": 0,
					"filename": "helpdetails.js",
					"id": "obj-2",
					"ignoreclick": 1,
					"jsarguments": ["kac.generateUnitTriangle"],
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
					"linecount": 2,
					"maxclass": "message",
					"numinlets": 2,
					"numoutlets": 1,
					"outlettype": [""],
					"patching_rect": [166.0, 475.0, 150.0, 35.0],
					"text": "-0.759836 0. 0.759836 0. 0. 1.316074"
				}
			},
			{
				"box": {
					"id": "obj-1",
					"maxclass": "newobj",
					"numinlets": 2,
					"numoutlets": 1,
					"outlettype": [""],
					"patching_rect": [66.0, 395.28571428571433, 142.0, 22.0],
					"text": "kac.generateUnitTriangle"
				}
			}
		],
		"lines": [
			{
				"patchline": {
					"destination": ["obj-19", 0],
					"order": 2,
					"source": ["obj-1", 0]
				}
			},
			{
				"patchline": {
					"destination": ["obj-4", 0],
					"midpoints": [75.5, 425.14285714285717, 137.5, 425.14285714285717],
					"order": 1,
					"source": ["obj-1", 0]
				}
			},
			{
				"patchline": {
					"destination": ["obj-86", 1],
					"midpoints": [75.5, 425.14285714285717, 306.5, 425.14285714285717],
					"order": 0,
					"source": ["obj-1", 0]
				}
			},
			{
				"patchline": {
					"destination": ["obj-1", 0],
					"source": ["obj-14", 0]
				}
			},
			{
				"patchline": {
					"destination": ["obj-1", 1],
					"source": ["obj-17", 0]
				}
			},
			{
				"patchline": {
					"destination": ["obj-61", 1],
					"source": ["obj-38", 1]
				}
			},
			{
				"patchline": {
					"destination": ["obj-61", 0],
					"source": ["obj-38", 0]
				}
			},
			{
				"patchline": {
					"destination": ["obj-19", 1],
					"source": ["obj-4", 0]
				}
			},
			{
				"patchline": {
					"destination": ["obj-7", 0],
					"source": ["obj-5", 0]
				}
			},
			{
				"patchline": {
					"destination": ["obj-8", 1],
					"source": ["obj-61", 1]
				}
			},
			{
				"patchline": {
					"destination": ["obj-8", 0],
					"source": ["obj-61", 0]
				}
			},
			{
				"patchline": {
					"destination": ["obj-38", 0],
					"source": ["obj-7", 1]
				}
			},
			{
				"patchline": {
					"destination": ["obj-14", 0],
					"source": ["obj-8", 0]
				}
			},
			{
				"patchline": {
					"destination": ["obj-17", 0],
					"source": ["obj-8", 1]
				}
			}
		],
		"autosave": 0
	}
}
