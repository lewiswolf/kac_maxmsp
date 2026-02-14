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
		"rect": [59.0, 139.0, 1000.0, 752.0],
		"default_fontname": "Lato Light",
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
					"id": "obj-1",
					"maxclass": "comment",
					"numinlets": 1,
					"numoutlets": 0,
					"patching_rect": [389.0, 217.0, 116.0, 21.0],
					"presentation": 1,
					"presentation_rect": [222.22223281860352, 222.22223281860352, 116.0, 21.0],
					"text": "boundary_conditions"
				}
			},
			{
				"box": {
					"id": "obj-40",
					"maxclass": "newobj",
					"numinlets": 1,
					"numoutlets": 1,
					"outlettype": [""],
					"patching_rect": [373.0, 187.0, 67.0, 23.0],
					"text": "loadmess 0"
				}
			},
			{
				"box": {
					"id": "obj-37",
					"maxclass": "toggle",
					"numinlets": 1,
					"numoutlets": 1,
					"outlettype": ["int"],
					"parameter_enable": 0,
					"patching_rect": [373.0, 247.0, 24.0, 24.0],
					"presentation": 1,
					"presentation_rect": [141.11111783981323, 221.1111216545105, 24.0, 24.0]
				}
			},
			{
				"box": {
					"id": "obj-5",
					"maxclass": "message",
					"numinlets": 2,
					"numoutlets": 1,
					"outlettype": [""],
					"patching_rect": [383.0, 375.0, 134.0, 23.0],
					"text": "boundary_conditions $1"
				}
			},
			{
				"box": {
					"id": "obj-13",
					"maxclass": "newobj",
					"numinlets": 1,
					"numoutlets": 2,
					"outlettype": ["bang", "int"],
					"patching_rect": [372.5, 322.0, 29.5, 23.0],
					"text": "t b i"
				}
			},
			{
				"box": {
					"id": "obj-18",
					"maxclass": "ezdac~",
					"numinlets": 2,
					"numoutlets": 0,
					"patching_rect": [25.0, 790.0, 45.0, 45.0]
				}
			},
			{
				"box": {
					"id": "obj-33",
					"maxclass": "newobj",
					"numinlets": 1,
					"numoutlets": 2,
					"outlettype": ["bang", "float"],
					"patching_rect": [25.0, 318.0, 30.0, 23.0],
					"text": "t b f"
				}
			},
			{
				"box": {
					"id": "obj-21",
					"maxclass": "newobj",
					"numinlets": 1,
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
						"rect": [-1539.0, 88.0, 1498.0, 776.0],
						"subpatcher_template": "tap.template",
						"boxes": [
							{
								"box": {
									"id": "obj-1",
									"maxclass": "newobj",
									"numinlets": 1,
									"numoutlets": 1,
									"outlettype": [""],
									"patching_rect": [180.0, 161.0, 88.0, 22.0],
									"text": "prepend chans"
								}
							},
							{
								"box": {
									"id": "obj-42",
									"maxclass": "newobj",
									"numinlets": 1,
									"numoutlets": 2,
									"outlettype": ["", ""],
									"patching_rect": [50.0, 100.0, 149.0, 22.0],
									"text": "t l l"
								}
							},
							{
								"box": {
									"id": "obj-39",
									"maxclass": "newobj",
									"numinlets": 2,
									"numoutlets": 2,
									"outlettype": ["", ""],
									"patching_rect": [180.0, 130.0, 43.0, 22.0],
									"text": "list.len"
								}
							},
							{
								"box": {
									"id": "obj-17",
									"maxclass": "newobj",
									"numinlets": 1,
									"numoutlets": 1,
									"outlettype": [""],
									"patching_rect": [50.0, 130.0, 120.0, 22.0],
									"text": "prepend applyvalues"
								}
							},
							{
								"box": {
									"comment": "",
									"id": "obj-54",
									"index": 1,
									"maxclass": "inlet",
									"numinlets": 0,
									"numoutlets": 1,
									"outlettype": [""],
									"patching_rect": [50.0, 49.0, 30.0, 30.0]
								}
							},
							{
								"box": {
									"comment": "",
									"id": "obj-55",
									"index": 1,
									"maxclass": "outlet",
									"numinlets": 1,
									"numoutlets": 0,
									"patching_rect": [50.0, 209.0, 30.0, 30.0]
								}
							}
						],
						"lines": [
							{
								"patchline": {
									"destination": ["obj-55", 0],
									"midpoints": [189.5, 195.5, 59.5, 195.5],
									"source": ["obj-1", 0]
								}
							},
							{
								"patchline": {
									"destination": ["obj-55", 0],
									"source": ["obj-17", 0]
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
									"destination": ["obj-17", 0],
									"source": ["obj-42", 0]
								}
							},
							{
								"patchline": {
									"destination": ["obj-39", 0],
									"source": ["obj-42", 1]
								}
							},
							{
								"patchline": {
									"destination": ["obj-42", 0],
									"source": ["obj-54", 0]
								}
							}
						]
					},
					"patching_rect": [530.0, 490.0, 96.0, 23.0],
					"text": "p set mc with list"
				}
			},
			{
				"box": {
					"id": "obj-32",
					"maxclass": "newobj",
					"numinlets": 1,
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
						"rect": [-1539.0, 88.0, 1498.0, 776.0],
						"subpatcher_template": "tap.template",
						"boxes": [
							{
								"box": {
									"id": "obj-1",
									"maxclass": "newobj",
									"numinlets": 1,
									"numoutlets": 1,
									"outlettype": [""],
									"patching_rect": [180.0, 161.0, 88.0, 22.0],
									"text": "prepend chans"
								}
							},
							{
								"box": {
									"id": "obj-42",
									"maxclass": "newobj",
									"numinlets": 1,
									"numoutlets": 2,
									"outlettype": ["", ""],
									"patching_rect": [50.0, 100.0, 149.0, 22.0],
									"text": "t l l"
								}
							},
							{
								"box": {
									"id": "obj-39",
									"maxclass": "newobj",
									"numinlets": 2,
									"numoutlets": 2,
									"outlettype": ["", ""],
									"patching_rect": [180.0, 130.0, 43.0, 22.0],
									"text": "list.len"
								}
							},
							{
								"box": {
									"id": "obj-17",
									"maxclass": "newobj",
									"numinlets": 1,
									"numoutlets": 1,
									"outlettype": [""],
									"patching_rect": [50.0, 130.0, 120.0, 22.0],
									"text": "prepend applyvalues"
								}
							},
							{
								"box": {
									"comment": "",
									"id": "obj-54",
									"index": 1,
									"maxclass": "inlet",
									"numinlets": 0,
									"numoutlets": 1,
									"outlettype": [""],
									"patching_rect": [50.0, 49.0, 30.0, 30.0]
								}
							},
							{
								"box": {
									"comment": "",
									"id": "obj-55",
									"index": 1,
									"maxclass": "outlet",
									"numinlets": 1,
									"numoutlets": 0,
									"patching_rect": [50.0, 209.0, 30.0, 30.0]
								}
							}
						],
						"lines": [
							{
								"patchline": {
									"destination": ["obj-55", 0],
									"midpoints": [189.5, 195.5, 59.5, 195.5],
									"source": ["obj-1", 0]
								}
							},
							{
								"patchline": {
									"destination": ["obj-55", 0],
									"source": ["obj-17", 0]
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
									"destination": ["obj-17", 0],
									"source": ["obj-42", 0]
								}
							},
							{
								"patchline": {
									"destination": ["obj-39", 0],
									"source": ["obj-42", 1]
								}
							},
							{
								"patchline": {
									"destination": ["obj-42", 0],
									"source": ["obj-54", 0]
								}
							}
						]
					},
					"patching_rect": [25.0, 526.0, 96.0, 23.0],
					"text": "p set mc with list"
				}
			},
			{
				"box": {
					"id": "obj-15",
					"maxclass": "nodes",
					"nodesnames": [" "],
					"nsize": [0.0],
					"numinlets": 1,
					"numoutlets": 3,
					"outlettype": ["", "", ""],
					"parameter_enable": 0,
					"patching_rect": [530.5, 247.0, 100.0, 100.0],
					"pointcolor": [1.0, 1.0, 1.0, 1.0],
					"presentation": 1,
					"presentation_rect": [429.36170212765956, 162.2000008225441, 100.0, 100.0],
					"xplace": [0.445],
					"yplace": [0.51]
				}
			},
			{
				"box": {
					"id": "obj-17",
					"lastchannelcount": 100,
					"maxclass": "mc.live.gain~",
					"numinlets": 1,
					"numoutlets": 4,
					"outlettype": ["multichannelsignal", "", "float", "list"],
					"parameter_enable": 1,
					"patching_rect": [25.0, 634.0, 415.0, 100.0],
					"presentation": 1,
					"presentation_rect": [25.0, 277.2000008225441, 505.0, 100.0],
					"saved_attribute_attributes": {
						"valueof": {
							"parameter_longname": "mc.live.gain~[1]",
							"parameter_mmax": 6.0,
							"parameter_mmin": -70.0,
							"parameter_modmode": 0,
							"parameter_shortname": "mc.live.gain~",
							"parameter_type": 0,
							"parameter_unitstyle": 4
						}
					},
					"varname": "mc.live.gain~[1]"
				}
			},
			{
				"box": {
					"id": "obj-35",
					"maxclass": "newobj",
					"numinlets": 1,
					"numoutlets": 4,
					"outlettype": ["", "int", "float", "float"],
					"patching_rect": [571.0, 375.0, 118.0, 23.0],
					"text": "unpack node 1 0. 0."
				}
			},
			{
				"box": {
					"fontname": "Arial",
					"id": "obj-19",
					"linecount": 6,
					"maxclass": "comment",
					"numinlets": 1,
					"numoutlets": 0,
					"patching_rect": [25.0, 65.0, 645.0, 87.0],
					"presentation": 1,
					"presentation_linecount": 6,
					"presentation_rect": [25.0, 65.0, 645.0, 87.0],
					"text": "Calculate the modes and their respective amplitudes for a rectangular drum. \nparameters:\n    x, y: The strike location of the drum, such that 0 and 1 always corresponds to a boundary, and thus produces silence. \n    epsilon: The aspect ratio for the drum.\n    M, N: The number of modes - the output of each object will be a list of length M*N.\n    boundary_conditions: false if the boundary are fixed (Dirichlet), true if the boundary is free (Neumann)"
				}
			},
			{
				"box": {
					"border": 0,
					"filename": "helpdetails.js",
					"id": "obj-2",
					"ignoreclick": 1,
					"jsarguments": ["kac.rectangularSeries"],
					"maxclass": "jsui",
					"numinlets": 1,
					"numoutlets": 1,
					"outlettype": [""],
					"parameter_enable": 0,
					"patching_rect": [25.0, 15.0, 625.0, 55.0],
					"presentation": 1,
					"presentation_rect": [25.0, 15.0, 625.0, 55.0]
				}
			},
			{
				"box": {
					"id": "obj-61",
					"maxclass": "newobj",
					"numinlets": 2,
					"numoutlets": 1,
					"outlettype": [""],
					"patching_rect": [530.0, 450.0, 159.0, 23.0],
					"text": "kac.rectangularAmplitudes"
				}
			},
			{
				"box": {
					"id": "obj-60",
					"maxclass": "newobj",
					"numinlets": 1,
					"numoutlets": 1,
					"outlettype": [""],
					"patching_rect": [25.0, 450.0, 117.0, 23.0],
					"text": "kac.rectangularSeries"
				}
			},
			{
				"box": {
					"id": "obj-53",
					"maxclass": "comment",
					"numinlets": 1,
					"numoutlets": 0,
					"patching_rect": [294.186035990715, 217.44185268878937, 69.0, 21.0],
					"presentation": 1,
					"presentation_rect": [352.3059576288183, 212.2000008225441, 69.0, 21.0],
					"text": "aspect ratio"
				}
			},
			{
				"box": {
					"id": "obj-52",
					"maxclass": "newobj",
					"numinlets": 1,
					"numoutlets": 1,
					"outlettype": [""],
					"patching_rect": [192.5, 187.0, 74.0, 23.0],
					"text": "loadmess 10"
				}
			},
			{
				"box": {
					"id": "obj-3",
					"maxclass": "newobj",
					"numinlets": 1,
					"numoutlets": 1,
					"outlettype": [""],
					"patching_rect": [275.0, 187.0, 76.0, 23.0],
					"text": "loadmess 1.4"
				}
			},
			{
				"box": {
					"id": "obj-30",
					"maxclass": "newobj",
					"numinlets": 2,
					"numoutlets": 1,
					"outlettype": ["multichannelsignal"],
					"patching_rect": [25.0, 598.0, 524.0, 23.0],
					"text": "mc.*~"
				}
			},
			{
				"box": {
					"id": "obj-44",
					"maxclass": "newobj",
					"numinlets": 1,
					"numoutlets": 2,
					"outlettype": ["", "float"],
					"patching_rect": [530.0, 526.0, 65.0, 23.0],
					"text": "t l 2."
				}
			},
			{
				"box": {
					"id": "obj-25",
					"maxclass": "newobj",
					"numinlets": 2,
					"numoutlets": 3,
					"outlettype": ["multichannelsignal", "", ""],
					"patching_rect": [530.0, 562.0, 65.0, 23.0],
					"text": "mc.line~ 0."
				}
			},
			{
				"box": {
					"id": "obj-26",
					"maxclass": "message",
					"numinlets": 2,
					"numoutlets": 1,
					"outlettype": [""],
					"patching_rect": [286.0, 375.0, 62.0, 23.0],
					"text": "epsilon $1"
				}
			},
			{
				"box": {
					"format": 6,
					"id": "obj-24",
					"maxclass": "flonum",
					"minimum": 0.0,
					"numinlets": 1,
					"numoutlets": 2,
					"outlettype": ["", "bang"],
					"parameter_enable": 0,
					"patching_rect": [274.9999910593033, 247.5, 50.0, 23.0],
					"presentation": 1,
					"presentation_rect": [361.80595762881825, 239.2000008225441, 50.0, 23.0]
				}
			},
			{
				"box": {
					"id": "obj-22",
					"maxclass": "newobj",
					"numinlets": 1,
					"numoutlets": 2,
					"outlettype": ["bang", "float"],
					"patching_rect": [275.0, 322.0, 30.0, 23.0],
					"text": "t b f"
				}
			},
			{
				"box": {
					"id": "obj-8",
					"maxclass": "newobj",
					"numinlets": 2,
					"numoutlets": 1,
					"outlettype": ["multichannelsignal"],
					"patching_rect": [25.0, 750.0, 158.0, 23.0],
					"text": "mc.mixdown~ 1 @autogain 1"
				}
			},
			{
				"box": {
					"id": "obj-11",
					"maxclass": "newobj",
					"numinlets": 2,
					"numoutlets": 1,
					"outlettype": ["multichannelsignal"],
					"patching_rect": [25.0, 562.0, 60.0, 23.0],
					"text": "mc.cycle~"
				}
			},
			{
				"box": {
					"id": "obj-9",
					"maxclass": "newobj",
					"numinlets": 2,
					"numoutlets": 1,
					"outlettype": [""],
					"patching_rect": [25.0, 490.0, 170.0, 23.0],
					"text": "vexpr $f1 * $f2 @scalarmode 1"
				}
			},
			{
				"box": {
					"id": "obj-31",
					"maxclass": "newobj",
					"numinlets": 1,
					"numoutlets": 1,
					"outlettype": [""],
					"patching_rect": [25.0, 187.0, 74.0, 23.0],
					"text": "loadmess 60"
				}
			},
			{
				"box": {
					"id": "obj-4",
					"maxclass": "newobj",
					"numinlets": 1,
					"numoutlets": 1,
					"outlettype": [""],
					"patching_rect": [110.0, 187.0, 74.0, 23.0],
					"text": "loadmess 10"
				}
			},
			{
				"box": {
					"id": "obj-29",
					"maxclass": "comment",
					"numinlets": 1,
					"numoutlets": 0,
					"patching_rect": [38.37209165096283, 217.44185268878937, 20.0, 21.0],
					"presentation": 1,
					"presentation_rect": [158.096170940805, 212.2000008225441, 20.0, 21.0],
					"text": "f0"
				}
			},
			{
				"box": {
					"format": 6,
					"id": "obj-27",
					"maxclass": "flonum",
					"numinlets": 1,
					"numoutlets": 2,
					"outlettype": ["", "bang"],
					"parameter_enable": 0,
					"patching_rect": [25.0, 247.5, 50.0, 23.0],
					"presentation": 1,
					"presentation_rect": [143.096170940805, 237.2000008225441, 50.0, 23.0]
				}
			},
			{
				"box": {
					"id": "obj-14",
					"maxclass": "number",
					"minimum": 1,
					"numinlets": 1,
					"numoutlets": 2,
					"outlettype": ["", "bang"],
					"parameter_enable": 0,
					"patching_rect": [192.5, 247.5, 57.5, 23.0],
					"presentation": 1,
					"presentation_rect": [285.95234078955144, 239.2000008225441, 57.5, 23.0]
				}
			},
			{
				"box": {
					"id": "obj-12",
					"maxclass": "comment",
					"numinlets": 1,
					"numoutlets": 0,
					"patching_rect": [210.46510875225067, 217.44185268878937, 19.0, 21.0],
					"presentation": 1,
					"presentation_rect": [305.2023407895515, 212.2000008225441, 19.0, 21.0],
					"text": "N"
				}
			},
			{
				"box": {
					"id": "obj-10",
					"maxclass": "comment",
					"numinlets": 1,
					"numoutlets": 0,
					"patching_rect": [127.9069721698761, 217.44185268878937, 19.0, 21.0],
					"presentation": 1,
					"presentation_rect": [225.5, 212.2000008225441, 19.0, 21.0],
					"text": "M"
				}
			},
			{
				"box": {
					"id": "obj-7",
					"maxclass": "message",
					"numinlets": 2,
					"numoutlets": 1,
					"outlettype": [""],
					"patching_rect": [203.5, 375.0, 35.0, 23.0],
					"text": "N $1"
				}
			},
			{
				"box": {
					"id": "obj-6",
					"maxclass": "newobj",
					"numinlets": 1,
					"numoutlets": 2,
					"outlettype": ["bang", "int"],
					"patching_rect": [192.5, 322.0, 29.5, 23.0],
					"text": "t b i"
				}
			},
			{
				"box": {
					"id": "obj-62",
					"maxclass": "newobj",
					"numinlets": 1,
					"numoutlets": 2,
					"outlettype": ["bang", "int"],
					"patching_rect": [110.0, 322.0, 29.5, 23.0],
					"text": "t b i"
				}
			},
			{
				"box": {
					"id": "obj-59",
					"maxclass": "number",
					"minimum": 1,
					"numinlets": 1,
					"numoutlets": 2,
					"outlettype": ["", "bang"],
					"parameter_enable": 0,
					"patching_rect": [110.0, 247.5, 57.0, 23.0],
					"presentation": 1,
					"presentation_rect": [210.65191543964627, 239.2000008225441, 57.0, 23.0]
				}
			},
			{
				"box": {
					"id": "obj-57",
					"maxclass": "message",
					"numinlets": 2,
					"numoutlets": 1,
					"outlettype": [""],
					"patching_rect": [121.0, 375.0, 37.0, 23.0],
					"text": "M $1"
				}
			}
		],
		"lines": [
			{
				"patchline": {
					"destination": ["obj-30", 0],
					"source": ["obj-11", 0]
				}
			},
			{
				"patchline": {
					"destination": ["obj-5", 0],
					"source": ["obj-13", 1]
				}
			},
			{
				"patchline": {
					"destination": ["obj-60", 0],
					"midpoints": [382.0, 352.8335322686362, 34.5, 352.8335322686362],
					"order": 1,
					"source": ["obj-13", 0]
				}
			},
			{
				"patchline": {
					"destination": ["obj-61", 0],
					"midpoints": [382.0, 364.99607502877916, 539.5, 364.99607502877916],
					"order": 0,
					"source": ["obj-13", 0]
				}
			},
			{
				"patchline": {
					"destination": ["obj-6", 0],
					"source": ["obj-14", 0]
				}
			},
			{
				"patchline": {
					"destination": ["obj-35", 0],
					"source": ["obj-15", 1]
				}
			},
			{
				"patchline": {
					"destination": ["obj-8", 0],
					"source": ["obj-17", 0]
				}
			},
			{
				"patchline": {
					"destination": ["obj-44", 0],
					"source": ["obj-21", 0]
				}
			},
			{
				"patchline": {
					"destination": ["obj-15", 0],
					"midpoints": [
						284.5, 353.5112515091896, 520.1812047958374, 353.5112515091896, 520.1812047958374,
						237.34140461683273, 540.0, 237.34140461683273
					],
					"order": 0,
					"source": ["obj-22", 0]
				}
			},
			{
				"patchline": {
					"destination": ["obj-26", 0],
					"source": ["obj-22", 1]
				}
			},
			{
				"patchline": {
					"destination": ["obj-60", 0],
					"midpoints": [284.5, 353.0, 34.5, 353.0],
					"order": 1,
					"source": ["obj-22", 0]
				}
			},
			{
				"patchline": {
					"destination": ["obj-22", 0],
					"source": ["obj-24", 0]
				}
			},
			{
				"patchline": {
					"destination": ["obj-30", 1],
					"source": ["obj-25", 0]
				}
			},
			{
				"patchline": {
					"destination": ["obj-60", 0],
					"midpoints": [295.5, 416.0, 34.5, 416.0],
					"source": ["obj-26", 0]
				}
			},
			{
				"patchline": {
					"destination": ["obj-33", 0],
					"source": ["obj-27", 0]
				}
			},
			{
				"patchline": {
					"destination": ["obj-24", 0],
					"source": ["obj-3", 0]
				}
			},
			{
				"patchline": {
					"destination": ["obj-17", 0],
					"source": ["obj-30", 0]
				}
			},
			{
				"patchline": {
					"destination": ["obj-27", 0],
					"source": ["obj-31", 0]
				}
			},
			{
				"patchline": {
					"destination": ["obj-11", 0],
					"source": ["obj-32", 0]
				}
			},
			{
				"patchline": {
					"destination": ["obj-60", 0],
					"source": ["obj-33", 0]
				}
			},
			{
				"patchline": {
					"destination": ["obj-9", 1],
					"midpoints": [
						45.5, 345.5242004394531, 11.0, 345.5242004394531, 11.0, 481.04443359375, 185.5,
						481.04443359375
					],
					"source": ["obj-33", 1]
				}
			},
			{
				"patchline": {
					"destination": ["obj-61", 1],
					"source": ["obj-35", 3]
				}
			},
			{
				"patchline": {
					"destination": ["obj-61", 0],
					"midpoints": [646.5, 429.375, 539.5, 429.375],
					"source": ["obj-35", 2]
				}
			},
			{
				"patchline": {
					"destination": ["obj-13", 0],
					"source": ["obj-37", 0]
				}
			},
			{
				"patchline": {
					"destination": ["obj-59", 0],
					"source": ["obj-4", 0]
				}
			},
			{
				"patchline": {
					"destination": ["obj-37", 0],
					"source": ["obj-40", 0]
				}
			},
			{
				"patchline": {
					"destination": ["obj-25", 1],
					"source": ["obj-44", 1]
				}
			},
			{
				"patchline": {
					"destination": ["obj-25", 0],
					"source": ["obj-44", 0]
				}
			},
			{
				"patchline": {
					"destination": ["obj-60", 0],
					"midpoints": [392.5, 440.44201496232927, 34.5, 440.44201496232927],
					"order": 1,
					"source": ["obj-5", 0]
				}
			},
			{
				"patchline": {
					"destination": ["obj-61", 0],
					"midpoints": [392.5, 440.7772035878952, 539.5, 440.7772035878952],
					"order": 0,
					"source": ["obj-5", 0]
				}
			},
			{
				"patchline": {
					"destination": ["obj-14", 0],
					"source": ["obj-52", 0]
				}
			},
			{
				"patchline": {
					"destination": ["obj-60", 0],
					"midpoints": [130.5, 428.2855804093524, 34.5, 428.2855804093524],
					"order": 1,
					"source": ["obj-57", 0]
				}
			},
			{
				"patchline": {
					"destination": ["obj-61", 0],
					"midpoints": [130.5, 428.0, 539.5, 428.0],
					"order": 0,
					"source": ["obj-57", 0]
				}
			},
			{
				"patchline": {
					"destination": ["obj-62", 0],
					"source": ["obj-59", 0]
				}
			},
			{
				"patchline": {
					"destination": ["obj-60", 0],
					"midpoints": [202.0, 353.0, 34.5, 353.0],
					"order": 1,
					"source": ["obj-6", 0]
				}
			},
			{
				"patchline": {
					"destination": ["obj-61", 0],
					"midpoints": [202.0, 364.99237060546875, 539.5, 364.99237060546875],
					"order": 0,
					"source": ["obj-6", 0]
				}
			},
			{
				"patchline": {
					"destination": ["obj-7", 0],
					"source": ["obj-6", 1]
				}
			},
			{
				"patchline": {
					"destination": ["obj-9", 0],
					"source": ["obj-60", 0]
				}
			},
			{
				"patchline": {
					"destination": ["obj-21", 0],
					"source": ["obj-61", 0]
				}
			},
			{
				"patchline": {
					"destination": ["obj-57", 0],
					"source": ["obj-62", 1]
				}
			},
			{
				"patchline": {
					"destination": ["obj-60", 0],
					"midpoints": [119.5, 353.0, 34.5, 353.0],
					"order": 1,
					"source": ["obj-62", 0]
				}
			},
			{
				"patchline": {
					"destination": ["obj-61", 0],
					"midpoints": [119.5, 364.87940506637096, 539.5, 364.87940506637096],
					"order": 0,
					"source": ["obj-62", 0]
				}
			},
			{
				"patchline": {
					"destination": ["obj-60", 0],
					"midpoints": [213.0, 440.1840413466307, 34.5, 440.1840413466307],
					"order": 1,
					"source": ["obj-7", 0]
				}
			},
			{
				"patchline": {
					"destination": ["obj-61", 0],
					"midpoints": [213.0, 428.0, 539.5, 428.0],
					"order": 0,
					"source": ["obj-7", 0]
				}
			},
			{
				"patchline": {
					"destination": ["obj-18", 1],
					"midpoints": [34.5, 781.5, 60.5, 781.5],
					"order": 0,
					"source": ["obj-8", 0]
				}
			},
			{
				"patchline": {
					"destination": ["obj-18", 0],
					"order": 1,
					"source": ["obj-8", 0]
				}
			},
			{
				"patchline": {
					"destination": ["obj-32", 0],
					"source": ["obj-9", 0]
				}
			}
		],
		"parameters": {
			"obj-17": ["mc.live.gain~[1]", "mc.live.gain~", 0],
			"parameterbanks": {
				"0": {
					"index": 0,
					"name": "",
					"parameters": ["-", "-", "-", "-", "-", "-", "-", "-"],
					"buttons": ["-", "-", "-", "-", "-", "-", "-", "-"]
				}
			},
			"inherited_shortname": 1
		},
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
