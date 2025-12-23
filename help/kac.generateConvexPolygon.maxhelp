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
		"rect": [34.0, 171.0, 1002.0, 695.0],
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
						"rect": [34.0, 171.0, 1372.0, 695.0],
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
									"patching_rect": [50.0, 342.0, 567.0, 22.0],
									"text": "jit.gl.sketch @drawto convex-polygon-helpfile-1 @gl_color 0. 0. 0. 0. @line_width 1.5 @position 0. 0. -0.5"
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
					"name": "convex-polygon-helpfile-1",
					"numinlets": 1,
					"numoutlets": 2,
					"outlettype": ["jit_matrix", ""],
					"patching_rect": [29.0, 280.5, 200.0, 200.0],
					"sync": 1
				}
			},
			{
				"box": {
					"id": "obj-9",
					"maxclass": "newobj",
					"numinlets": 1,
					"numoutlets": 1,
					"outlettype": ["jit_matrix"],
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
									"id": "obj-1",
									"maxclass": "newobj",
									"numinlets": 1,
									"numoutlets": 1,
									"outlettype": [""],
									"patching_rect": [152.0, 136.0, 104.0, 22.0],
									"text": "prepend paintpoly"
								}
							},
							{
								"box": {
									"id": "obj-82",
									"maxclass": "newobj",
									"numinlets": 1,
									"numoutlets": 1,
									"outlettype": [""],
									"patching_rect": [152.0, 101.0, 93.0, 22.0],
									"text": "vexpr $f1 * 200."
								}
							},
							{
								"box": {
									"id": "obj-70",
									"maxclass": "newobj",
									"numinlets": 1,
									"numoutlets": 3,
									"outlettype": ["bang", "", "clear"],
									"patching_rect": [
										45.07743714253107, 70.35208216905593, 232.99999999999997, 22.0
									],
									"text": "t b l clear"
								}
							},
							{
								"box": {
									"fontname": "Arial",
									"fontsize": 13.0,
									"id": "obj-98",
									"maxclass": "newobj",
									"numinlets": 1,
									"numoutlets": 2,
									"outlettype": ["jit_matrix", ""],
									"patching_rect": [45.07743714253107, 172.64091434478757, 128.0, 23.0],
									"text": "jit.lcd 4 char 200 200"
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
							},
							{
								"box": {
									"comment": "",
									"id": "obj-88",
									"index": 1,
									"maxclass": "outlet",
									"numinlets": 1,
									"numoutlets": 0,
									"patching_rect": [45.07743714253107, 207.73719173669812, 30.0, 30.0]
								}
							}
						],
						"lines": [
							{
								"patchline": {
									"destination": ["obj-98", 0],
									"midpoints": [
										161.5, 166.0927756488323, 54.57743714253107, 166.0927756488323
									],
									"source": ["obj-1", 0]
								}
							},
							{
								"patchline": {
									"destination": ["obj-82", 0],
									"source": ["obj-70", 1]
								}
							},
							{
								"patchline": {
									"destination": ["obj-98", 0],
									"midpoints": [
										268.57743714253104, 166.1900456249714, 54.57743714253107,
										166.1900456249714
									],
									"source": ["obj-70", 2]
								}
							},
							{
								"patchline": {
									"destination": ["obj-98", 0],
									"source": ["obj-70", 0]
								}
							},
							{
								"patchline": {
									"destination": ["obj-1", 0],
									"source": ["obj-82", 0]
								}
							},
							{
								"patchline": {
									"destination": ["obj-70", 0],
									"source": ["obj-87", 0]
								}
							},
							{
								"patchline": {
									"destination": ["obj-88", 0],
									"source": ["obj-98", 0]
								}
							}
						]
					},
					"patching_rect": [417.4392524957657, 319.0, 90.0, 22.0],
					"text": "p paint polygon"
				}
			},
			{
				"box": {
					"id": "obj-12",
					"linecount": 3,
					"maxclass": "message",
					"numinlets": 2,
					"numoutlets": 1,
					"outlettype": [""],
					"patching_rect": [650.0000101923943, 350.69999998807907, 118.00000101327896, 49.0],
					"text": "0. 0.225991 0.820165 0.774009 1. 0.225991"
				}
			},
			{
				"box": {
					"border": 1.0,
					"id": "obj-8",
					"maxclass": "jit.pwindow",
					"numinlets": 1,
					"numoutlets": 2,
					"outlettype": ["jit_matrix", ""],
					"patching_rect": [417.4392524957657, 350.69999998807907, 200.0, 200.0],
					"srcrect": [0, 0, 500, 500],
					"sync": 1
				}
			},
			{
				"box": {
					"id": "obj-4",
					"maxclass": "newobj",
					"numinlets": 1,
					"numoutlets": 1,
					"outlettype": [""],
					"patching_rect": [417.4392524957657, 280.5, 261.0, 22.0],
					"text": "kac.normaliseConvexPolygon @signed_norm 0"
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
					"text": "Generate a random convex polygon with a specified number of vertices. \nparameters:\n    N: The number of vertices."
				}
			},
			{
				"box": {
					"border": 0,
					"filename": "helpdetails.js",
					"id": "obj-2",
					"ignoreclick": 1,
					"jsarguments": ["kac.generateConvexPolygon"],
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
					"linecount": 3,
					"maxclass": "message",
					"numinlets": 2,
					"numoutlets": 1,
					"outlettype": [""],
					"patching_rect": [259.71962624788284, 280.5, 127.0, 49.0],
					"text": "0.022618 0.57719 -0.545441 0.1014 0.545441 -0.57719"
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
					"patching_rect": [29.0, 207.0, 162.0, 22.0],
					"text": "kac.generateConvexPolygon"
				}
			}
		],
		"lines": [
			{
				"patchline": {
					"destination": ["obj-4", 0],
					"midpoints": [38.5, 236.25, 426.9392524957657, 236.25],
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
					"midpoints": [38.5, 236.25, 377.21962624788284, 236.25],
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
					"midpoints": [426.9392524957657, 309.2999997437, 758.5000112056732, 309.2999997437],
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
			},
			{
				"patchline": {
					"destination": ["obj-8", 0],
					"source": ["obj-9", 0]
				}
			}
		],
		"autosave": 0
	}
}
