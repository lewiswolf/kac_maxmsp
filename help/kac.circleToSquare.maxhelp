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
		"rect": [59.0, 218.0, 1340.0, 588.0],
		"gridsize": [5.0, 5.0],
		"gridsnaponopen": 2,
		"objectsnaponopen": 0,
		"lefttoolbarpinned": 1,
		"toptoolbarpinned": 1,
		"righttoolbarpinned": 1,
		"bottomtoolbarpinned": 1,
		"style": "tap",
		"subpatcher_template": "tap.template",
		"boxes": [
			{
				"box": {
					"clickmoveinactive": 0,
					"dynamic": 0,
					"id": "obj-42",
					"ignoreclick": 1,
					"maxclass": "nodes",
					"nodenumber": 8,
					"nodesnames": [" ", " ", " ", " ", " ", " ", " ", " "],
					"nsize": [0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0],
					"numinlets": 1,
					"numoutlets": 3,
					"outlettype": ["", "", ""],
					"parameter_enable": 0,
					"patching_rect": [248.0, 469.0, 100.0, 100.0],
					"pointcolor": [0.929411764705882, 0.929411764705882, 0.352941176470588, 1.0],
					"xplace": [
						0.8535533905932732, 0.4999999999999983, 0.14644660940672438, 0.0, 0.14644660940672932,
						0.5000000000000052, 0.8535533905932782, 1.0
					],
					"yplace": [
						0.8535533905932744, 1.0, 0.853553390593272, 0.4999999999999965, 0.14644660940672316,
						0.0, 0.14644660940673054, 0.500000000000007
					]
				}
			},
			{
				"box": {
					"id": "obj-41",
					"maxclass": "newobj",
					"numinlets": 3,
					"numoutlets": 1,
					"outlettype": [""],
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
						"rect": [59.0, 246.0, 1340.0, 560.0],
						"subpatcher_template": "tap.template",
						"boxes": [
							{
								"box": {
									"id": "obj-29",
									"maxclass": "newobj",
									"numinlets": 1,
									"numoutlets": 1,
									"outlettype": [""],
									"patching_rect": [162.0, 97.0, 104.0, 22.0],
									"text": "expr ($f1 + 1.) / 2."
								}
							},
							{
								"box": {
									"id": "obj-28",
									"maxclass": "newobj",
									"numinlets": 1,
									"numoutlets": 1,
									"outlettype": [""],
									"patching_rect": [270.0, 97.0, 104.0, 22.0],
									"text": "expr ($f1 + 1.) / 2."
								}
							},
							{
								"box": {
									"id": "obj-27",
									"maxclass": "newobj",
									"numinlets": 1,
									"numoutlets": 1,
									"outlettype": [""],
									"patching_rect": [54.0, 163.0, 99.0, 22.0],
									"text": "prepend setnode"
								}
							},
							{
								"box": {
									"id": "obj-26",
									"maxclass": "newobj",
									"numinlets": 3,
									"numoutlets": 1,
									"outlettype": [""],
									"patching_rect": [54.0, 133.0, 235.0, 22.0],
									"text": "pack 0 0. 0."
								}
							},
							{
								"box": {
									"comment": "",
									"id": "obj-36",
									"index": 2,
									"maxclass": "inlet",
									"numinlets": 0,
									"numoutlets": 1,
									"outlettype": ["float"],
									"patching_rect": [162.0, 45.0, 30.0, 30.0]
								}
							},
							{
								"box": {
									"comment": "",
									"id": "obj-37",
									"index": 1,
									"maxclass": "inlet",
									"numinlets": 0,
									"numoutlets": 1,
									"outlettype": ["int"],
									"patching_rect": [54.0, 45.0, 30.0, 30.0]
								}
							},
							{
								"box": {
									"comment": "",
									"id": "obj-38",
									"index": 3,
									"maxclass": "inlet",
									"numinlets": 0,
									"numoutlets": 1,
									"outlettype": ["float"],
									"patching_rect": [270.0, 45.0, 30.0, 30.0]
								}
							},
							{
								"box": {
									"comment": "",
									"id": "obj-39",
									"index": 1,
									"maxclass": "outlet",
									"numinlets": 1,
									"numoutlets": 0,
									"patching_rect": [54.0, 197.0, 30.0, 30.0]
								}
							}
						],
						"lines": [
							{
								"patchline": {
									"destination": ["obj-27", 0],
									"source": ["obj-26", 0]
								}
							},
							{
								"patchline": {
									"destination": ["obj-39", 0],
									"source": ["obj-27", 0]
								}
							},
							{
								"patchline": {
									"destination": ["obj-26", 2],
									"source": ["obj-28", 0]
								}
							},
							{
								"patchline": {
									"destination": ["obj-26", 1],
									"source": ["obj-29", 0]
								}
							},
							{
								"patchline": {
									"destination": ["obj-29", 0],
									"source": ["obj-36", 0]
								}
							},
							{
								"patchline": {
									"destination": ["obj-26", 0],
									"source": ["obj-37", 0]
								}
							},
							{
								"patchline": {
									"destination": ["obj-28", 0],
									"source": ["obj-38", 0]
								}
							}
						]
					},
					"patching_rect": [248.0, 431.0, 183.0, 23.0],
					"text": "p plot"
				}
			},
			{
				"box": {
					"id": "obj-40",
					"maxclass": "newobj",
					"numinlets": 3,
					"numoutlets": 1,
					"outlettype": [""],
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
						"rect": [34.0, 243.0, 1372.0, 623.0],
						"subpatcher_template": "tap.template",
						"boxes": [
							{
								"box": {
									"id": "obj-29",
									"maxclass": "newobj",
									"numinlets": 1,
									"numoutlets": 1,
									"outlettype": [""],
									"patching_rect": [162.0, 97.0, 104.0, 22.0],
									"text": "expr ($f1 + 1.) / 2."
								}
							},
							{
								"box": {
									"id": "obj-28",
									"maxclass": "newobj",
									"numinlets": 1,
									"numoutlets": 1,
									"outlettype": [""],
									"patching_rect": [270.0, 97.0, 104.0, 22.0],
									"text": "expr ($f1 + 1.) / 2."
								}
							},
							{
								"box": {
									"id": "obj-27",
									"maxclass": "newobj",
									"numinlets": 1,
									"numoutlets": 1,
									"outlettype": [""],
									"patching_rect": [54.0, 163.0, 99.0, 22.0],
									"text": "prepend setnode"
								}
							},
							{
								"box": {
									"id": "obj-26",
									"maxclass": "newobj",
									"numinlets": 3,
									"numoutlets": 1,
									"outlettype": [""],
									"patching_rect": [54.0, 133.0, 235.0, 22.0],
									"text": "pack 0 0. 0."
								}
							},
							{
								"box": {
									"comment": "",
									"id": "obj-36",
									"index": 2,
									"maxclass": "inlet",
									"numinlets": 0,
									"numoutlets": 1,
									"outlettype": [""],
									"patching_rect": [162.0, 45.0, 30.0, 30.0]
								}
							},
							{
								"box": {
									"comment": "",
									"id": "obj-37",
									"index": 1,
									"maxclass": "inlet",
									"numinlets": 0,
									"numoutlets": 1,
									"outlettype": ["int"],
									"patching_rect": [54.0, 45.0, 30.0, 30.0]
								}
							},
							{
								"box": {
									"comment": "",
									"id": "obj-38",
									"index": 3,
									"maxclass": "inlet",
									"numinlets": 0,
									"numoutlets": 1,
									"outlettype": [""],
									"patching_rect": [270.0, 45.0, 30.0, 30.0]
								}
							},
							{
								"box": {
									"comment": "",
									"id": "obj-39",
									"index": 1,
									"maxclass": "outlet",
									"numinlets": 1,
									"numoutlets": 0,
									"patching_rect": [54.0, 197.0, 30.0, 30.0]
								}
							}
						],
						"lines": [
							{
								"patchline": {
									"destination": ["obj-27", 0],
									"source": ["obj-26", 0]
								}
							},
							{
								"patchline": {
									"destination": ["obj-39", 0],
									"source": ["obj-27", 0]
								}
							},
							{
								"patchline": {
									"destination": ["obj-26", 2],
									"source": ["obj-28", 0]
								}
							},
							{
								"patchline": {
									"destination": ["obj-26", 1],
									"source": ["obj-29", 0]
								}
							},
							{
								"patchline": {
									"destination": ["obj-29", 0],
									"source": ["obj-36", 0]
								}
							},
							{
								"patchline": {
									"destination": ["obj-26", 0],
									"source": ["obj-37", 0]
								}
							},
							{
								"patchline": {
									"destination": ["obj-28", 0],
									"source": ["obj-38", 0]
								}
							}
						]
					},
					"patching_rect": [51.0, 431.0, 183.0, 23.0],
					"text": "p plot"
				}
			},
			{
				"box": {
					"id": "obj-35",
					"maxclass": "newobj",
					"numinlets": 1,
					"numoutlets": 1,
					"outlettype": [""],
					"patching_rect": [30.0, 142.0, 67.0, 23.0],
					"text": "loadmess 1"
				}
			},
			{
				"box": {
					"id": "obj-34",
					"maxclass": "newobj",
					"numinlets": 1,
					"numoutlets": 2,
					"outlettype": ["bang", "float"],
					"patching_rect": [30.0, 208.0, 133.0, 23.0],
					"text": "t b f"
				}
			},
			{
				"box": {
					"id": "obj-33",
					"maxclass": "newobj",
					"numinlets": 2,
					"numoutlets": 1,
					"outlettype": ["float"],
					"patching_rect": [133.0, 307.0, 30.0, 23.0],
					"text": "f"
				}
			},
			{
				"box": {
					"format": 6,
					"id": "obj-32",
					"maxclass": "flonum",
					"maximum": 1.0,
					"minimum": 0.0,
					"numinlets": 1,
					"numoutlets": 2,
					"outlettype": ["", "bang"],
					"parameter_enable": 0,
					"patching_rect": [30.0, 175.0, 50.0, 23.0]
				}
			},
			{
				"box": {
					"clickmoveinactive": 0,
					"dynamic": 0,
					"id": "obj-30",
					"ignoreclick": 1,
					"maxclass": "nodes",
					"nodenumber": 8,
					"nodesnames": [" ", " ", " ", " ", " ", " ", " ", " "],
					"nsize": [0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0],
					"numinlets": 1,
					"numoutlets": 3,
					"outlettype": ["", "", ""],
					"parameter_enable": 0,
					"patching_rect": [51.0, 469.0, 100.0, 100.0],
					"pointcolor": [0.929411764705882, 0.929411764705882, 0.352941176470588, 1.0],
					"xplace": [
						0.9999999947316435, 0.49999999999999756, 0.0, 0.0, 3.725292463396812e-9,
						0.5000000000000073, 0.999999994731647, 1.0
					],
					"yplace": [
						1.0, 1.0, 0.9999999962747084, 0.4999999999999951, 5.268353864273934e-9, 0.0,
						5.2683591378333006e-9, 0.5000000000000099
					]
				}
			},
			{
				"box": {
					"id": "obj-25",
					"maxclass": "newobj",
					"numinlets": 2,
					"numoutlets": 2,
					"outlettype": ["", ""],
					"patching_rect": [133.0, 390.0, 101.0, 23.0],
					"text": "kac.circleToSquare"
				}
			},
			{
				"box": {
					"id": "obj-24",
					"maxclass": "newobj",
					"numinlets": 1,
					"numoutlets": 1,
					"outlettype": ["float"],
					"patching_rect": [215.0, 307.0, 142.0, 23.0],
					"text": "gen @expr in1 * twopi / 8"
				}
			},
			{
				"box": {
					"fontname": "Arial",
					"id": "obj-19",
					"linecount": 3,
					"maxclass": "comment",
					"numinlets": 1,
					"numoutlets": 0,
					"patching_rect": [30.0, 75.0, 651.0, 47.0],
					"text": "Map coordinates from a circle to a square.\nparameters:\n    x, y: The cartesian point located in a square."
				}
			},
			{
				"box": {
					"border": 0,
					"filename": "helpdetails.js",
					"id": "obj-2",
					"ignoreclick": 1,
					"jsarguments": ["kac.circleToSquare"],
					"maxclass": "jsui",
					"numinlets": 1,
					"numoutlets": 1,
					"outlettype": [""],
					"parameter_enable": 0,
					"patching_rect": [30.0, 25.0, 625.0, 55.0]
				}
			},
			{
				"box": {
					"id": "obj-10",
					"maxclass": "newobj",
					"numinlets": 2,
					"numoutlets": 2,
					"outlettype": ["float", "float"],
					"patching_rect": [133.0, 340.0, 101.0, 23.0],
					"text": "poltocar"
				}
			},
			{
				"box": {
					"id": "obj-210",
					"maxclass": "newobj",
					"numinlets": 1,
					"numoutlets": 3,
					"outlettype": ["int", "bang", "int"],
					"patching_rect": [51.0, 274.0, 183.0, 23.0],
					"text": "t i b i"
				}
			},
			{
				"box": {
					"id": "obj-192",
					"maxclass": "newobj",
					"numinlets": 2,
					"numoutlets": 3,
					"outlettype": ["bang", "bang", "int"],
					"patching_rect": [30.0, 241.0, 40.0, 23.0],
					"text": "uzi 8"
				}
			}
		],
		"lines": [
			{
				"patchline": {
					"destination": ["obj-25", 1],
					"order": 1,
					"source": ["obj-10", 1]
				}
			},
			{
				"patchline": {
					"destination": ["obj-25", 0],
					"order": 1,
					"source": ["obj-10", 0]
				}
			},
			{
				"patchline": {
					"destination": ["obj-41", 2],
					"midpoints": [224.5, 371.329833984375, 421.5, 371.329833984375],
					"order": 0,
					"source": ["obj-10", 1]
				}
			},
			{
				"patchline": {
					"destination": ["obj-41", 1],
					"midpoints": [142.5, 381.00921630859375, 339.5, 381.00921630859375],
					"order": 0,
					"source": ["obj-10", 0]
				}
			},
			{
				"patchline": {
					"destination": ["obj-210", 0],
					"source": ["obj-192", 2]
				}
			},
			{
				"patchline": {
					"destination": ["obj-24", 0],
					"source": ["obj-210", 2]
				}
			},
			{
				"patchline": {
					"destination": ["obj-33", 0],
					"source": ["obj-210", 1]
				}
			},
			{
				"patchline": {
					"destination": ["obj-40", 0],
					"order": 1,
					"source": ["obj-210", 0]
				}
			},
			{
				"patchline": {
					"destination": ["obj-41", 0],
					"midpoints": [60.5, 421.95381703972816, 257.5, 421.95381703972816],
					"order": 0,
					"source": ["obj-210", 0]
				}
			},
			{
				"patchline": {
					"destination": ["obj-10", 1],
					"source": ["obj-24", 0]
				}
			},
			{
				"patchline": {
					"destination": ["obj-40", 2],
					"source": ["obj-25", 1]
				}
			},
			{
				"patchline": {
					"destination": ["obj-40", 1],
					"source": ["obj-25", 0]
				}
			},
			{
				"patchline": {
					"destination": ["obj-34", 0],
					"source": ["obj-32", 0]
				}
			},
			{
				"patchline": {
					"destination": ["obj-10", 0],
					"source": ["obj-33", 0]
				}
			},
			{
				"patchline": {
					"destination": ["obj-192", 0],
					"source": ["obj-34", 0]
				}
			},
			{
				"patchline": {
					"destination": ["obj-33", 1],
					"source": ["obj-34", 1]
				}
			},
			{
				"patchline": {
					"destination": ["obj-32", 0],
					"source": ["obj-35", 0]
				}
			},
			{
				"patchline": {
					"destination": ["obj-30", 0],
					"source": ["obj-40", 0]
				}
			},
			{
				"patchline": {
					"destination": ["obj-42", 0],
					"source": ["obj-41", 0]
				}
			}
		],
		"autosave": 0,
		"styles": [
			{
				"name": "AudioStatus_Menu",
				"default": {
					"bgfillcolor": {
						"angle": 270.0,
						"autogradient": 0,
						"color": [0.294118, 0.313726, 0.337255, 1],
						"color1": [0.454902, 0.462745, 0.482353, 0.0],
						"color2": [0.290196, 0.309804, 0.301961, 1.0],
						"proportion": 0.39,
						"type": "color"
					}
				},
				"parentstyle": "",
				"multi": 0
			},
			{
				"name": "helpfile_label-1",
				"default": {
					"fontname": ["Arial"],
					"fontsize": [13],
					"textcolor": [0.501961, 0.501961, 0.501961, 1]
				},
				"parentstyle": "",
				"multi": 0
			},
			{
				"name": "ksliderWhite",
				"default": {
					"color": [1.0, 1.0, 1.0, 1.0]
				},
				"parentstyle": "",
				"multi": 0
			},
			{
				"name": "newobjBlue-1",
				"default": {
					"accentcolor": [0.317647, 0.654902, 0.976471, 1.0]
				},
				"parentstyle": "",
				"multi": 0
			},
			{
				"name": "newobjBrown-1",
				"default": {
					"accentcolor": [0.654902, 0.572549, 0.376471, 1.0]
				},
				"parentstyle": "",
				"multi": 0
			},
			{
				"name": "newobjCyan-1",
				"default": {
					"accentcolor": [0.029546, 0.773327, 0.821113, 1.0]
				},
				"parentstyle": "",
				"multi": 0
			},
			{
				"name": "newobjGreen-1",
				"default": {
					"accentcolor": [0.0, 0.533333, 0.168627, 1.0]
				},
				"parentstyle": "",
				"multi": 0
			},
			{
				"name": "newobjYellow-1",
				"default": {
					"accentcolor": [0.82517, 0.78181, 0.059545, 1.0],
					"fontsize": [12.059008]
				},
				"parentstyle": "",
				"multi": 0
			},
			{
				"name": "numberGold-1",
				"default": {
					"accentcolor": [0.764706, 0.592157, 0.101961, 1.0]
				},
				"parentstyle": "",
				"multi": 0
			},
			{
				"name": "rsliderGold",
				"default": {
					"bgcolor": [0.764706, 0.592157, 0.101961, 1.0],
					"color": [0.646639, 0.821777, 0.854593, 1.0]
				},
				"parentstyle": "",
				"multi": 0
			},
			{
				"name": "tap",
				"default": {
					"fontname": ["Lato Light"]
				},
				"parentstyle": "",
				"multi": 0
			}
		]
	}
}
