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
		"rect": [59.0, 190.0, 1013.0, 616.0],
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
					"id": "obj-37",
					"maxclass": "number",
					"maximum": 2,
					"minimum": 0,
					"numinlets": 1,
					"numoutlets": 2,
					"outlettype": ["", "bang"],
					"parameter_enable": 0,
					"patching_rect": [205.0, 205.5, 50.0, 23.0]
				}
			},
			{
				"box": {
					"id": "obj-41",
					"maxclass": "comment",
					"numinlets": 1,
					"numoutlets": 0,
					"patching_rect": [221.0, 175.0, 123.0, 21.0],
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
					"patching_rect": [205.0, 145.0, 67.0, 23.0],
					"text": "loadmess 0"
				}
			},
			{
				"box": {
					"id": "obj-33",
					"maxclass": "message",
					"numinlets": 2,
					"numoutlets": 1,
					"outlettype": [""],
					"patching_rect": [215.0, 300.0, 134.0, 23.0],
					"text": "boundary_conditions $1"
				}
			},
			{
				"box": {
					"id": "obj-1",
					"maxclass": "newobj",
					"numinlets": 1,
					"numoutlets": 2,
					"outlettype": ["bang", "int"],
					"patching_rect": [204.5, 248.0, 29.5, 23.0],
					"text": "t b i"
				}
			},
			{
				"box": {
					"id": "obj-7",
					"maxclass": "newobj",
					"numinlets": 1,
					"numoutlets": 1,
					"outlettype": [""],
					"patching_rect": [355.0, 144.0, 104.0, 23.0],
					"text": "loadmess 0.12345"
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
						"rect": [34.0, 243.0, 799.0, 620.0],
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
					"patching_rect": [355.0, 390.0, 96.0, 23.0],
					"text": "p set mc with list"
				}
			},
			{
				"box": {
					"id": "obj-5",
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
						"rect": [34.0, 243.0, 799.0, 620.0],
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
					"patching_rect": [30.0, 425.0, 96.0, 23.0],
					"text": "p set mc with list"
				}
			},
			{
				"box": {
					"floatoutput": 1,
					"id": "obj-6",
					"maxclass": "slider",
					"numinlets": 1,
					"numoutlets": 1,
					"outlettype": [""],
					"parameter_enable": 0,
					"patching_rect": [355.0, 204.5, 165.0, 25.0],
					"size": 1.0
				}
			},
			{
				"box": {
					"fontname": "Arial",
					"id": "obj-3",
					"linecount": 4,
					"maxclass": "comment",
					"numinlets": 1,
					"numoutlets": 0,
					"patching_rect": [25.0, 70.0, 715.0, 60.0],
					"text": "Calculate the modes and their respective amplitudes for a 1-dimensional instrument.\nparameters:\n    x: The strike location, such that 0 or 1 always corresponds to a boundary, and thus produces silence.\n    N: The number of modes - the output of each object will be a list of length N."
				}
			},
			{
				"box": {
					"id": "obj-32",
					"maxclass": "newobj",
					"numinlets": 1,
					"numoutlets": 1,
					"outlettype": [""],
					"patching_rect": [30.0, 350.0, 88.0, 23.0],
					"text": "kac.linearSeries"
				}
			},
			{
				"box": {
					"border": 0,
					"filename": "helpdetails.js",
					"id": "obj-2",
					"ignoreclick": 1,
					"jsarguments": ["kac.linearSeries"],
					"maxclass": "jsui",
					"numinlets": 1,
					"numoutlets": 1,
					"outlettype": [""],
					"parameter_enable": 0,
					"patching_rect": [25.0, 25.0, 460.0, 53.0]
				}
			},
			{
				"box": {
					"id": "obj-61",
					"maxclass": "newobj",
					"numinlets": 1,
					"numoutlets": 1,
					"outlettype": [""],
					"patching_rect": [355.0, 349.0, 114.0, 23.0],
					"text": "kac.linearAmplitudes"
				}
			},
			{
				"box": {
					"id": "obj-30",
					"maxclass": "newobj",
					"numinlets": 2,
					"numoutlets": 1,
					"outlettype": ["multichannelsignal"],
					"patching_rect": [30.0, 492.0, 344.0, 23.0],
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
					"patching_rect": [355.0, 425.0, 65.0, 23.0],
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
					"patching_rect": [355.0, 458.0, 65.0, 23.0],
					"text": "mc.line~ 0."
				}
			},
			{
				"box": {
					"id": "obj-15",
					"maxclass": "comment",
					"numinlets": 1,
					"numoutlets": 0,
					"patching_rect": [378.0, 175.0, 19.0, 21.0],
					"text": "x"
				}
			},
			{
				"box": {
					"id": "obj-16",
					"maxclass": "mc.ezdac~",
					"numinlets": 1,
					"numoutlets": 0,
					"patching_rect": [30.0, 674.0, 45.0, 45.0]
				}
			},
			{
				"box": {
					"id": "obj-8",
					"maxclass": "newobj",
					"numinlets": 2,
					"numoutlets": 1,
					"outlettype": ["multichannelsignal"],
					"patching_rect": [30.0, 640.0, 158.0, 23.0],
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
					"patching_rect": [30.0, 458.0, 60.0, 23.0],
					"text": "mc.cycle~"
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
					"patching_rect": [30.0, 526.0, 340.0, 100.0],
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
			},
			{
				"box": {
					"id": "obj-9",
					"maxclass": "newobj",
					"numinlets": 2,
					"numoutlets": 1,
					"outlettype": [""],
					"patching_rect": [30.0, 390.0, 168.0, 23.0],
					"text": "vexpr $i1 * $f2 @scalarmode 1"
				}
			},
			{
				"box": {
					"id": "obj-31",
					"maxclass": "newobj",
					"numinlets": 1,
					"numoutlets": 1,
					"outlettype": [""],
					"patching_rect": [30.0, 145.0, 74.0, 23.0],
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
					"patching_rect": [115.0, 145.0, 81.0, 23.0],
					"text": "loadmess 100"
				}
			},
			{
				"box": {
					"id": "obj-29",
					"maxclass": "comment",
					"numinlets": 1,
					"numoutlets": 0,
					"patching_rect": [45.0, 175.5, 20.0, 21.0],
					"text": "f0"
				}
			},
			{
				"box": {
					"id": "obj-28",
					"maxclass": "newobj",
					"numinlets": 1,
					"numoutlets": 2,
					"outlettype": ["bang", "float"],
					"patching_rect": [30.0, 248.0, 30.0, 23.0],
					"text": "t b f"
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
					"patching_rect": [30.0, 205.5, 50.0, 23.0]
				}
			},
			{
				"box": {
					"id": "obj-10",
					"maxclass": "comment",
					"numinlets": 1,
					"numoutlets": 0,
					"patching_rect": [134.0, 175.5, 19.0, 21.0],
					"text": "N"
				}
			},
			{
				"box": {
					"id": "obj-62",
					"maxclass": "newobj",
					"numinlets": 1,
					"numoutlets": 2,
					"outlettype": ["bang", "int"],
					"patching_rect": [115.0, 248.0, 29.5, 23.0],
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
					"patching_rect": [115.0, 205.5, 57.0, 23.0]
				}
			},
			{
				"box": {
					"id": "obj-57",
					"maxclass": "message",
					"numinlets": 2,
					"numoutlets": 1,
					"outlettype": [""],
					"patching_rect": [125.0, 300.0, 35.0, 23.0],
					"text": "N $1"
				}
			}
		],
		"lines": [
			{
				"patchline": {
					"destination": ["obj-32", 0],
					"midpoints": [214.0, 290.10797119140625, 39.5, 290.10797119140625],
					"order": 1,
					"source": ["obj-1", 0]
				}
			},
			{
				"patchline": {
					"destination": ["obj-33", 0],
					"source": ["obj-1", 1]
				}
			},
			{
				"patchline": {
					"destination": ["obj-61", 0],
					"midpoints": [214.0, 290.0386047363281, 364.5, 290.0386047363281],
					"order": 0,
					"source": ["obj-1", 0]
				}
			},
			{
				"patchline": {
					"destination": ["obj-30", 0],
					"source": ["obj-11", 0]
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
					"destination": ["obj-8", 0],
					"source": ["obj-21", 0]
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
					"destination": ["obj-28", 0],
					"source": ["obj-27", 0]
				}
			},
			{
				"patchline": {
					"destination": ["obj-32", 0],
					"source": ["obj-28", 0]
				}
			},
			{
				"patchline": {
					"destination": ["obj-9", 1],
					"midpoints": [
						50.5, 282.0173034667969, 16.0, 282.0173034667969, 16.0, 382.0, 188.5, 382.0
					],
					"source": ["obj-28", 1]
				}
			},
			{
				"patchline": {
					"destination": ["obj-21", 0],
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
					"destination": ["obj-9", 0],
					"source": ["obj-32", 0]
				}
			},
			{
				"patchline": {
					"destination": ["obj-32", 0],
					"midpoints": [224.5, 336.5, 39.5, 336.5],
					"order": 1,
					"source": ["obj-33", 0]
				}
			},
			{
				"patchline": {
					"destination": ["obj-61", 0],
					"midpoints": [224.5, 336.0, 364.5, 336.0],
					"order": 0,
					"source": ["obj-33", 0]
				}
			},
			{
				"patchline": {
					"destination": ["obj-1", 0],
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
					"destination": ["obj-11", 0],
					"source": ["obj-5", 0]
				}
			},
			{
				"patchline": {
					"destination": ["obj-32", 0],
					"midpoints": [134.5, 336.5, 39.5, 336.5],
					"order": 1,
					"source": ["obj-57", 0]
				}
			},
			{
				"patchline": {
					"destination": ["obj-61", 0],
					"midpoints": [134.5, 336.0, 364.5, 336.0],
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
					"destination": ["obj-61", 0],
					"source": ["obj-6", 0]
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
					"destination": ["obj-32", 0],
					"midpoints": [124.5, 290.5712585449219, 39.5, 290.5712585449219],
					"order": 1,
					"source": ["obj-62", 0]
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
					"destination": ["obj-61", 0],
					"midpoints": [124.5, 289.53265380859375, 364.5, 289.53265380859375],
					"order": 0,
					"source": ["obj-62", 0]
				}
			},
			{
				"patchline": {
					"destination": ["obj-6", 0],
					"source": ["obj-7", 0]
				}
			},
			{
				"patchline": {
					"destination": ["obj-16", 0],
					"source": ["obj-8", 0]
				}
			},
			{
				"patchline": {
					"destination": ["obj-5", 0],
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
