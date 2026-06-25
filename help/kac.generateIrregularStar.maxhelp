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
					"name": "irregular-star-polygon-helpfile-2",
					"numinlets": 1,
					"numoutlets": 2,
					"outlettype": ["jit_matrix", ""],
					"patching_rect": [417.4392524957657, 359.0, 200.0, 200.0],
					"sync": 1
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
									"patching_rect": [50.0, 342.0, 597.0, 22.0],
									"text": "jit.gl.sketch @drawto irregular-star-polygon-helpfile-1 @gl_color 0. 0. 0. 0. @line_width 1.5 @position 0. 0. -0.5"
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
					"name": "irregular-star-polygon-helpfile-1",
					"numinlets": 1,
					"numoutlets": 2,
					"outlettype": ["jit_matrix", ""],
					"patching_rect": [29.0, 285.0, 200.0, 200.0],
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
									"patching_rect": [45.07743714253107, 299.0, 508.0, 22.0],
									"text": "jit.gl.sketch @drawto irregular-star-polygon-helpfile-2 @gl_color 0. 0. 0. 0. @position 0. 0. -0.5"
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
					"linecount": 33,
					"maxclass": "message",
					"numinlets": 2,
					"numoutlets": 1,
					"outlettype": [""],
					"patching_rect": [653.0, 359.0, 118.00000101327896, 451.0],
					"text": "-1. -0.018526 -0.696384 -0.15705 -0.687351 -0.215545 -0.469319 -0.430671 -0.559136 -0.548744 -0.61927 -0.650712 -0.154658 -0.077698 -0.157496 -0.188612 -0.111971 -0.507192 -0.067452 -0.621368 -0.060724 -0.329803 0.299116 -0.500422 0.248925 -0.398328 0.278448 -0.3991 0.497546 -0.485127 0.183673 -0.020564 1. -0.018526 0.704125 0.428005 0.176869 0.390644 -0.063402 0.30688 -0.098872 0.426428 -0.069915 0.084226 -0.512032 0.650712 -0.467881 0.508947 -0.628846 0.209635 -0.997052 0.035609"
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
					"id": "obj-86",
					"linecount": 26,
					"maxclass": "message",
					"numinlets": 2,
					"numoutlets": 1,
					"outlettype": [""],
					"patching_rect": [259.71962624788284, 280.5, 127.0, 357.0],
					"text": "-0.601686 -0.03634 -0.487487 -0.069159 -0.358149 -0.308399 -0.403707 -0.631108 -0.368809 -0.656884 -0.14268 -0.514799 -0.099598 -0.534482 0.140112 -0.483304 0.17956 -0.595276 0.221293 -0.680322 0.042481 -0.117706 0.11539 -0.168376 0.348413 -0.278029 0.444327 -0.298471 0.252345 -0.165761 0.524655 -0.000198 0.434325 0.011139 0.447823 0.030538 0.601686 0.139198 0.153057 0.133627 0.510662 0.680322 0.082004 0.678854 -0.12487 0.3099 -0.174521 0.112421 -0.270048 0.141275 -0.028517 0.010157"
				}
			},
			{
				"box": {
					"id": "obj-1",
					"maxclass": "newobj",
					"numinlets": 1,
					"numoutlets": 1,
					"outlettype": [""],
					"patching_rect": [29.0, 207.0, 145.0, 22.0],
					"text": "kac.generateIrregularStar"
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
					"text": "Generate an irregular star with a specified number of vertices. \nparameters:\n    N: The number of vertices."
				}
			},
			{
				"box": {
					"border": 0,
					"filename": "helpdetails.js",
					"id": "obj-2",
					"ignoreclick": 1,
					"jsarguments": ["kac.generateIrregularStar"],
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
					"midpoints": [426.9392524957657, 309.2999997437, 761.500001013279, 309.2999997437],
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
