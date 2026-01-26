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
		"rect": [59.0, 134.0, 1013.0, 672.0],
		"openinpresentation": 1,
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
					"id": "obj-41",
					"maxclass": "comment",
					"numinlets": 1,
					"numoutlets": 0,
					"patching_rect": [316.0, 202.0, 123.0, 21.0],
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
					"patching_rect": [300.0, 172.0, 67.0, 23.0],
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
					"patching_rect": [300.0, 232.0, 24.0, 24.0],
					"presentation": 1,
					"presentation_rect": [141.11111783981323, 221.1111216545105, 24.0, 24.0]
				}
			},
			{
				"box": {
					"id": "obj-33",
					"maxclass": "message",
					"numinlets": 2,
					"numoutlets": 1,
					"outlettype": [""],
					"patching_rect": [310.5, 455.0, 134.0, 23.0],
					"text": "boundary_conditions $1"
				}
			},
			{
				"box": {
					"id": "obj-30",
					"maxclass": "newobj",
					"numinlets": 1,
					"numoutlets": 2,
					"outlettype": ["bang", "int"],
					"patching_rect": [300.0, 415.0, 29.5, 23.0],
					"text": "t b i"
				}
			},
			{
				"box": {
					"id": "obj-17",
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
					"patching_rect": [470.0, 566.0000195503235, 96.0, 23.0],
					"text": "p set mc with list"
				}
			},
			{
				"box": {
					"id": "obj-3",
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
					"patching_rect": [31.0, 600.0, 96.0, 23.0],
					"text": "p set mc with list"
				}
			},
			{
				"box": {
					"id": "obj-39",
					"maxclass": "newobj",
					"numinlets": 1,
					"numoutlets": 2,
					"outlettype": ["float", "float"],
					"patching_rect": [470.0, 356.00000953674316, 123.0, 23.0],
					"text": "unpack 0. 0."
				}
			},
			{
				"box": {
					"id": "obj-34",
					"maxclass": "newobj",
					"numinlets": 2,
					"numoutlets": 2,
					"outlettype": ["", ""],
					"patching_rect": [470.0, 296.0000066757202, 58.0, 23.0],
					"text": "list.slice 2"
				}
			},
			{
				"box": {
					"id": "obj-28",
					"maxclass": "newobj",
					"numinlets": 2,
					"numoutlets": 2,
					"outlettype": ["", ""],
					"patching_rect": [470.0, 266.00000524520874, 58.0, 23.0],
					"text": "list.slice 2"
				}
			},
			{
				"box": {
					"id": "obj-19",
					"maxclass": "newobj",
					"numinlets": 1,
					"numoutlets": 1,
					"outlettype": [""],
					"patching_rect": [470.0, 326.0000081062317, 104.0, 23.0],
					"text": "vexpr ($f1 * 2) - 1."
				}
			},
			{
				"box": {
					"id": "obj-18",
					"maxclass": "newobj",
					"numinlets": 2,
					"numoutlets": 2,
					"outlettype": ["float", "float"],
					"patching_rect": [470.0, 416.0000123977661, 123.0, 23.0],
					"text": "cartopol"
				}
			},
			{
				"box": {
					"id": "obj-16",
					"maxclass": "newobj",
					"numinlets": 2,
					"numoutlets": 2,
					"outlettype": ["", ""],
					"patching_rect": [470.0, 386.00001096725464, 123.0, 23.0],
					"text": "kac.squareToCircle"
				}
			},
			{
				"box": {
					"id": "obj-5",
					"maxclass": "nodes",
					"nodesnames": [" "],
					"nsize": [0.0],
					"numinlets": 1,
					"numoutlets": 3,
					"outlettype": ["", "", ""],
					"parameter_enable": 0,
					"patching_rect": [470.0, 156.0, 100.0, 100.0],
					"pointcolor": [1.0, 1.0, 1.0, 1.0],
					"presentation": 1,
					"presentation_rect": [355.5555725097656, 154.44445180892944, 100.0, 100.0],
					"xplace": [0.4500001907348633],
					"yplace": [0.610888996720314]
				}
			},
			{
				"box": {
					"fontname": "Arial",
					"id": "obj-1",
					"linecount": 5,
					"maxclass": "comment",
					"numinlets": 1,
					"numoutlets": 0,
					"patching_rect": [25.0, 65.0, 709.0, 74.0],
					"presentation": 1,
					"presentation_linecount": 5,
					"presentation_rect": [25.0, 65.0, 709.0, 74.0],
					"text": "Calculate the modes and their respective amplitudes for a circular drum. \nparameters:\n    r, theta: The polar strike location of the drum, such that r = -1 or 1 always corresponds to a boundary, and thus produces silence. \n    M, N: The number of modes - the output of each object will be a list of length M*N.\n    boundary_conditions: false if the boundary are fixed (Dirichlet), true if the boundary is free (Neumann)"
				}
			},
			{
				"box": {
					"id": "obj-60",
					"maxclass": "newobj",
					"numinlets": 1,
					"numoutlets": 1,
					"outlettype": [""],
					"patching_rect": [31.0, 520.0, 96.0, 23.0],
					"text": "kac.circularSeries"
				}
			},
			{
				"box": {
					"id": "obj-9",
					"maxclass": "newobj",
					"numinlets": 2,
					"numoutlets": 1,
					"outlettype": [""],
					"patching_rect": [31.0, 565.0, 170.0, 23.0],
					"text": "vexpr $f1 * $f2 @scalarmode 1"
				}
			},
			{
				"box": {
					"id": "obj-35",
					"maxclass": "newobj",
					"numinlets": 1,
					"numoutlets": 2,
					"outlettype": ["bang", "float"],
					"patching_rect": [31.0, 415.0, 30.0, 23.0],
					"text": "t b f"
				}
			},
			{
				"box": {
					"id": "obj-23",
					"maxclass": "newobj",
					"numinlets": 1,
					"numoutlets": 1,
					"outlettype": [""],
					"patching_rect": [211.0, 172.0, 74.0, 23.0],
					"text": "loadmess 10"
				}
			},
			{
				"box": {
					"id": "obj-61",
					"maxclass": "newobj",
					"numinlets": 2,
					"numoutlets": 1,
					"outlettype": [""],
					"patching_rect": [470.0, 520.4444618225098, 123.0, 23.0],
					"text": "kac.circularAmplitudes"
				}
			},
			{
				"box": {
					"id": "obj-44",
					"maxclass": "newobj",
					"numinlets": 1,
					"numoutlets": 2,
					"outlettype": ["", "float"],
					"patching_rect": [470.0, 600.444465637207, 65.0, 23.0],
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
					"patching_rect": [470.0, 636.0000228881836, 65.0, 23.0],
					"text": "mc.line~ 0."
				}
			},
			{
				"box": {
					"border": 0,
					"filename": "helpdetails.js",
					"id": "obj-2",
					"ignoreclick": 1,
					"jsarguments": ["kac.circularSeries"],
					"maxclass": "jsui",
					"numinlets": 1,
					"numoutlets": 1,
					"outlettype": [""],
					"parameter_enable": 0,
					"patching_rect": [25.0, 15.0, 690.0, 60.0],
					"presentation": 1,
					"presentation_rect": [25.0, 15.0, 690.0, 60.0]
				}
			},
			{
				"box": {
					"id": "obj-8",
					"maxclass": "newobj",
					"numinlets": 2,
					"numoutlets": 1,
					"outlettype": ["multichannelsignal"],
					"patching_rect": [31.0, 817.0, 158.0, 23.0],
					"text": "mc.mixdown~ 2 @autogain 1"
				}
			},
			{
				"box": {
					"id": "obj-11",
					"maxclass": "newobj",
					"numinlets": 2,
					"numoutlets": 1,
					"outlettype": ["multichannelsignal"],
					"patching_rect": [31.0, 635.0, 60.0, 23.0],
					"text": "mc.cycle~"
				}
			},
			{
				"box": {
					"id": "obj-31",
					"maxclass": "newobj",
					"numinlets": 1,
					"numoutlets": 1,
					"outlettype": [""],
					"patching_rect": [31.0, 172.0, 74.0, 23.0],
					"text": "loadmess 80"
				}
			},
			{
				"box": {
					"id": "obj-4",
					"maxclass": "newobj",
					"numinlets": 1,
					"numoutlets": 1,
					"outlettype": [""],
					"patching_rect": [116.0, 172.0, 74.0, 23.0],
					"text": "loadmess 10"
				}
			},
			{
				"box": {
					"id": "obj-15",
					"maxclass": "newobj",
					"numinlets": 2,
					"numoutlets": 1,
					"outlettype": ["multichannelsignal"],
					"patching_rect": [31.111112594604492, 670.0, 457.8888874053955, 23.0],
					"text": "mc.*~"
				}
			},
			{
				"box": {
					"id": "obj-29",
					"maxclass": "comment",
					"numinlets": 1,
					"numoutlets": 0,
					"patching_rect": [46.0, 202.0, 20.0, 21.0],
					"presentation": 1,
					"presentation_rect": [156.66667413711548, 158.8888964653015, 20.0, 21.0],
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
					"patching_rect": [31.0, 232.0, 50.0, 23.0],
					"presentation": 1,
					"presentation_rect": [141.11111783981323, 188.888897895813, 50.0, 23.0]
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
					"patching_rect": [211.0, 232.0, 57.5, 23.0],
					"presentation": 1,
					"presentation_rect": [281.11112451553345, 188.888897895813, 57.5, 23.0]
				}
			},
			{
				"box": {
					"id": "obj-12",
					"maxclass": "comment",
					"numinlets": 1,
					"numoutlets": 0,
					"patching_rect": [230.0, 202.0, 19.0, 21.0],
					"presentation": 1,
					"presentation_rect": [300.00001430511475, 158.8888964653015, 19.0, 21.0],
					"text": "M"
				}
			},
			{
				"box": {
					"id": "obj-10",
					"maxclass": "comment",
					"numinlets": 1,
					"numoutlets": 0,
					"patching_rect": [135.0, 202.0, 19.0, 21.0],
					"presentation": 1,
					"presentation_rect": [226.6666774749756, 158.8888964653015, 19.0, 21.0],
					"text": "N"
				}
			},
			{
				"box": {
					"id": "obj-7",
					"maxclass": "message",
					"numinlets": 2,
					"numoutlets": 1,
					"outlettype": [""],
					"patching_rect": [221.0, 455.0, 37.0, 23.0],
					"text": "M $1"
				}
			},
			{
				"box": {
					"id": "obj-6",
					"maxclass": "newobj",
					"numinlets": 1,
					"numoutlets": 2,
					"outlettype": ["bang", "int"],
					"patching_rect": [211.0, 415.0, 29.5, 23.0],
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
					"patching_rect": [116.0, 415.0, 34.5, 23.0],
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
					"patching_rect": [116.0, 232.0, 57.0, 23.0],
					"presentation": 1,
					"presentation_rect": [207.7777876853943, 188.888897895813, 57.0, 23.0]
				}
			},
			{
				"box": {
					"id": "obj-57",
					"maxclass": "message",
					"numinlets": 2,
					"numoutlets": 1,
					"outlettype": [""],
					"patching_rect": [131.0, 455.0, 35.0, 23.0],
					"text": "N $1"
				}
			},
			{
				"box": {
					"id": "obj-38",
					"maxclass": "mc.ezdac~",
					"numinlets": 1,
					"numoutlets": 0,
					"patching_rect": [31.0, 852.0, 45.0, 45.0],
					"presentation": 1,
					"presentation_rect": [
						25.555556774139404, 154.44445180892944, 100.2000008225441, 100.2000008225441
					]
				}
			},
			{
				"box": {
					"id": "obj-21",
					"lastchannelcount": 100,
					"maxclass": "mc.live.gain~",
					"numinlets": 1,
					"numoutlets": 4,
					"outlettype": ["multichannelsignal", "", "float", "list"],
					"parameter_enable": 1,
					"patching_rect": [31.0, 705.0, 415.0, 100.0],
					"presentation": 1,
					"presentation_rect": [25.555556774139404, 256.66667890548706, 430.0, 100.0],
					"saved_attribute_attributes": {
						"valueof": {
							"parameter_longname": "mc.live.gain~",
							"parameter_mmax": 6.0,
							"parameter_mmin": -70.0,
							"parameter_modmode": 0,
							"parameter_shortname": "mc.live.gain~",
							"parameter_type": 0,
							"parameter_unitstyle": 4
						}
					},
					"varname": "mc.live.gain~"
				}
			}
		],
		"lines": [
			{
				"patchline": {
					"destination": ["obj-15", 0],
					"source": ["obj-11", 0]
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
					"destination": ["obj-21", 0],
					"source": ["obj-15", 0]
				}
			},
			{
				"patchline": {
					"destination": ["obj-18", 1],
					"source": ["obj-16", 1]
				}
			},
			{
				"patchline": {
					"destination": ["obj-18", 0],
					"source": ["obj-16", 0]
				}
			},
			{
				"patchline": {
					"destination": ["obj-44", 0],
					"source": ["obj-17", 0]
				}
			},
			{
				"patchline": {
					"destination": ["obj-61", 1],
					"source": ["obj-18", 1]
				}
			},
			{
				"patchline": {
					"destination": ["obj-61", 0],
					"source": ["obj-18", 0]
				}
			},
			{
				"patchline": {
					"destination": ["obj-39", 0],
					"source": ["obj-19", 0]
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
					"destination": ["obj-14", 0],
					"source": ["obj-23", 0]
				}
			},
			{
				"patchline": {
					"destination": ["obj-15", 1],
					"source": ["obj-25", 0]
				}
			},
			{
				"patchline": {
					"destination": ["obj-35", 0],
					"source": ["obj-27", 0]
				}
			},
			{
				"patchline": {
					"destination": ["obj-34", 0],
					"midpoints": [518.5, 291.5, 479.5, 291.5],
					"source": ["obj-28", 1]
				}
			},
			{
				"patchline": {
					"destination": ["obj-11", 0],
					"source": ["obj-3", 0]
				}
			},
			{
				"patchline": {
					"destination": ["obj-33", 0],
					"source": ["obj-30", 1]
				}
			},
			{
				"patchline": {
					"destination": ["obj-60", 0],
					"midpoints": [309.5, 446.1271777043221, 40.5, 446.1271777043221],
					"order": 1,
					"source": ["obj-30", 0]
				}
			},
			{
				"patchline": {
					"destination": ["obj-61", 0],
					"midpoints": [309.5, 446.460205078125, 479.5, 446.460205078125],
					"order": 0,
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
					"destination": ["obj-60", 0],
					"midpoints": [320.0, 511.46398896064784, 40.5, 511.46398896064784],
					"order": 1,
					"source": ["obj-33", 0]
				}
			},
			{
				"patchline": {
					"destination": ["obj-61", 0],
					"midpoints": [320.0, 512.6022132292856, 479.5, 512.6022132292856],
					"order": 0,
					"source": ["obj-33", 0]
				}
			},
			{
				"patchline": {
					"destination": ["obj-19", 0],
					"source": ["obj-34", 0]
				}
			},
			{
				"patchline": {
					"destination": ["obj-60", 0],
					"source": ["obj-35", 0]
				}
			},
			{
				"patchline": {
					"destination": ["obj-9", 1],
					"midpoints": [
						51.5, 486.4580988883972, 26.0, 486.4580988883972, 26.0, 553.0, 191.5, 553.0
					],
					"source": ["obj-35", 1]
				}
			},
			{
				"patchline": {
					"destination": ["obj-30", 0],
					"source": ["obj-37", 0]
				}
			},
			{
				"patchline": {
					"destination": ["obj-16", 1],
					"source": ["obj-39", 1]
				}
			},
			{
				"patchline": {
					"destination": ["obj-16", 0],
					"source": ["obj-39", 0]
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
					"destination": ["obj-28", 0],
					"midpoints": [520.0, 260.0, 479.5, 260.0],
					"source": ["obj-5", 1]
				}
			},
			{
				"patchline": {
					"destination": ["obj-60", 0],
					"midpoints": [140.5, 492.0, 40.5, 492.0],
					"order": 1,
					"source": ["obj-57", 0]
				}
			},
			{
				"patchline": {
					"destination": ["obj-61", 0],
					"midpoints": [140.5, 491.0, 479.5, 491.0],
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
					"midpoints": [220.5, 446.3497707992792, 40.5, 446.3497707992792],
					"order": 1,
					"source": ["obj-6", 0]
				}
			},
			{
				"patchline": {
					"destination": ["obj-61", 0],
					"midpoints": [220.5, 446.0, 479.5, 446.0],
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
					"destination": ["obj-17", 0],
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
					"midpoints": [125.5, 446.29263120889664, 40.5, 446.29263120889664],
					"order": 1,
					"source": ["obj-62", 0]
				}
			},
			{
				"patchline": {
					"destination": ["obj-61", 0],
					"midpoints": [125.5, 446.0, 479.5, 446.0],
					"order": 0,
					"source": ["obj-62", 0]
				}
			},
			{
				"patchline": {
					"destination": ["obj-60", 0],
					"midpoints": [230.5, 503.0, 40.5, 503.0],
					"order": 1,
					"source": ["obj-7", 0]
				}
			},
			{
				"patchline": {
					"destination": ["obj-61", 0],
					"midpoints": [230.5, 502.0, 479.5, 502.0],
					"order": 0,
					"source": ["obj-7", 0]
				}
			},
			{
				"patchline": {
					"destination": ["obj-38", 0],
					"source": ["obj-8", 0]
				}
			},
			{
				"patchline": {
					"destination": ["obj-3", 0],
					"source": ["obj-9", 0]
				}
			}
		],
		"parameters": {
			"obj-21": ["mc.live.gain~", "mc.live.gain~", 0],
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
