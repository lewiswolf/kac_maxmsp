{
	"patcher": {
		"fileversion": 1,
		"appversion": {
			"major": 8,
			"minor": 6,
			"revision": 2,
			"architecture": "x64",
			"modernui": 1
		},
		"classnamespace": "box",
		"rect": [34.0, 215.0, 799.0, 648.0],
		"bglocked": 0,
		"openinpresentation": 1,
		"default_fontsize": 12.0,
		"default_fontface": 0,
		"default_fontname": "Lato Light",
		"gridonopen": 1,
		"gridsize": [5.0, 5.0],
		"gridsnaponopen": 2,
		"objectsnaponopen": 0,
		"statusbarvisible": 2,
		"toolbarvisible": 1,
		"lefttoolbarpinned": 1,
		"toptoolbarpinned": 1,
		"righttoolbarpinned": 1,
		"bottomtoolbarpinned": 1,
		"toolbars_unpinned_last_save": 0,
		"tallnewobj": 0,
		"boxanimatetime": 200,
		"enablehscroll": 1,
		"enablevscroll": 1,
		"devicewidth": 0.0,
		"description": "",
		"digest": "",
		"tags": "",
		"style": "tap",
		"subpatcher_template": "tap.template",
		"assistshowspatchername": 0,
		"boxes": [
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
							"major": 8,
							"minor": 6,
							"revision": 2,
							"architecture": "x64",
							"modernui": 1
						},
						"classnamespace": "box",
						"rect": [-1539.0, 88.0, 1498.0, 776.0],
						"bglocked": 0,
						"openinpresentation": 0,
						"default_fontsize": 12.0,
						"default_fontface": 0,
						"default_fontname": "Arial",
						"gridonopen": 1,
						"gridsize": [15.0, 15.0],
						"gridsnaponopen": 1,
						"objectsnaponopen": 1,
						"statusbarvisible": 2,
						"toolbarvisible": 1,
						"lefttoolbarpinned": 0,
						"toptoolbarpinned": 0,
						"righttoolbarpinned": 0,
						"bottomtoolbarpinned": 0,
						"toolbars_unpinned_last_save": 0,
						"tallnewobj": 0,
						"boxanimatetime": 200,
						"enablehscroll": 1,
						"enablevscroll": 1,
						"devicewidth": 0.0,
						"description": "",
						"digest": "",
						"tags": "",
						"style": "",
						"subpatcher_template": "tap.template",
						"assistshowspatchername": 0,
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
					"patching_rect": [330.5, 550.0, 96.0, 23.0],
					"saved_object_attributes": {
						"description": "",
						"digest": "",
						"globalpatchername": "",
						"tags": ""
					},
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
							"major": 8,
							"minor": 6,
							"revision": 2,
							"architecture": "x64",
							"modernui": 1
						},
						"classnamespace": "box",
						"rect": [-1539.0, 88.0, 1498.0, 776.0],
						"bglocked": 0,
						"openinpresentation": 0,
						"default_fontsize": 12.0,
						"default_fontface": 0,
						"default_fontname": "Arial",
						"gridonopen": 1,
						"gridsize": [15.0, 15.0],
						"gridsnaponopen": 1,
						"objectsnaponopen": 1,
						"statusbarvisible": 2,
						"toolbarvisible": 1,
						"lefttoolbarpinned": 0,
						"toptoolbarpinned": 0,
						"righttoolbarpinned": 0,
						"bottomtoolbarpinned": 0,
						"toolbars_unpinned_last_save": 0,
						"tallnewobj": 0,
						"boxanimatetime": 200,
						"enablehscroll": 1,
						"enablevscroll": 1,
						"devicewidth": 0.0,
						"description": "",
						"digest": "",
						"tags": "",
						"style": "",
						"subpatcher_template": "tap.template",
						"assistshowspatchername": 0,
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
					"patching_rect": [30.5, 585.018928901200411, 96.0, 23.0],
					"saved_object_attributes": {
						"description": "",
						"digest": "",
						"globalpatchername": "",
						"tags": ""
					},
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
					"patching_rect": [330.5, 340.0, 123.0, 23.0],
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
					"patching_rect": [330.5, 280.0, 58.0, 23.0],
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
					"patching_rect": [330.5, 250.0, 58.0, 23.0],
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
					"patching_rect": [330.5, 310.0, 104.0, 23.0],
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
					"patching_rect": [330.5, 400.0, 123.0, 23.0],
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
					"patching_rect": [330.5, 370.0, 123.0, 23.0],
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
					"patching_rect": [330.5, 140.0, 100.0, 100.0],
					"pointcolor": [1.0, 1.0, 1.0, 1.0],
					"presentation": 1,
					"presentation_rect": [355.0, 147.799999177455902, 100.0, 100.0],
					"xplace": [0.465],
					"yplace": [0.76]
				}
			},
			{
				"box": {
					"fontname": "Arial",
					"id": "obj-1",
					"linecount": 4,
					"maxclass": "comment",
					"numinlets": 1,
					"numoutlets": 0,
					"patching_rect": [25.0, 65.0, 709.0, 60.0],
					"presentation": 1,
					"presentation_linecount": 4,
					"presentation_rect": [25.0, 65.0, 709.0, 60.0],
					"text": "Calculate the modes and their respective amplitudes for a circular drum. \nparameters:\n    N, M: The number of modes - the output of each object will be a list of length N*M.\n    r, theta: The polar strike location of the drum, such that r = -1 or 1 always corresponds to a boundary, and thus produces silence. "
				}
			},
			{
				"box": {
					"id": "obj-60",
					"maxclass": "newobj",
					"numinlets": 1,
					"numoutlets": 1,
					"outlettype": [""],
					"patching_rect": [30.5, 505.0, 96.0, 23.0],
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
					"patching_rect": [30.5, 550.0, 170.0, 23.0],
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
					"patching_rect": [30.5, 400.0, 30.0, 23.0],
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
					"patching_rect": [210.5, 157.0, 74.0, 23.0],
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
					"patching_rect": [330.5, 505.0, 123.0, 23.0],
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
					"patching_rect": [330.5, 585.018928901200525, 65.0, 23.0],
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
					"patching_rect": [330.5, 620.037857802400822, 65.0, 23.0],
					"text": "mc.line~ 0."
				}
			},
			{
				"box": {
					"id": "obj-13",
					"maxclass": "newobj",
					"numinlets": 2,
					"numoutlets": 1,
					"outlettype": ["float"],
					"patching_rect": [330.5, 440.0, 29.5, 23.0],
					"text": "f"
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
					"patching_rect": [30.5, 802.094644506002055, 158.0, 23.0],
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
					"patching_rect": [30.5, 620.037857802400822, 60.0, 23.0],
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
					"patching_rect": [30.5, 157.0, 74.0, 23.0],
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
					"patching_rect": [115.5, 157.0, 74.0, 23.0],
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
					"patching_rect": [30.5, 655.056786703601233, 319.0, 23.0],
					"text": "mc.*~"
				}
			},
			{
				"box": {
					"id": "obj-29",
					"maxclass": "comment",
					"numinlets": 1,
					"numoutlets": 0,
					"patching_rect": [45.5, 187.0, 20.0, 21.0],
					"presentation": 1,
					"presentation_rect": [156.525000616908073, 175.0, 20.0, 21.0],
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
					"patching_rect": [30.5, 217.0, 50.0, 23.0],
					"presentation": 1,
					"presentation_rect": [141.525000616908073, 205.0, 50.0, 23.0]
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
					"patching_rect": [210.5, 217.0, 57.5, 23.0],
					"presentation": 1,
					"presentation_rect": [281.175000205636024, 205.0, 57.5, 23.0]
				}
			},
			{
				"box": {
					"id": "obj-12",
					"maxclass": "comment",
					"numinlets": 1,
					"numoutlets": 0,
					"patching_rect": [229.75, 187.0, 19.0, 21.0],
					"presentation": 1,
					"presentation_rect": [300.425000205636024, 175.0, 19.0, 21.0],
					"text": "M"
				}
			},
			{
				"box": {
					"id": "obj-10",
					"maxclass": "comment",
					"numinlets": 1,
					"numoutlets": 0,
					"patching_rect": [134.5, 187.0, 19.0, 21.0],
					"presentation": 1,
					"presentation_rect": [226.850000411272049, 175.0, 19.0, 21.0],
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
					"patching_rect": [220.5, 440.0, 37.0, 23.0],
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
					"patching_rect": [210.5, 400.0, 29.5, 23.0],
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
					"patching_rect": [115.5, 400.0, 34.5, 23.0],
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
					"patching_rect": [115.5, 217.0, 57.0, 23.0],
					"presentation": 1,
					"presentation_rect": [207.850000411272049, 205.0, 57.0, 23.0]
				}
			},
			{
				"box": {
					"id": "obj-57",
					"maxclass": "message",
					"numinlets": 2,
					"numoutlets": 1,
					"outlettype": [""],
					"patching_rect": [130.5, 440.0, 35.0, 23.0],
					"text": "N $1"
				}
			},
			{
				"box": {
					"id": "obj-38",
					"maxclass": "mc.ezdac~",
					"numinlets": 1,
					"numoutlets": 0,
					"patching_rect": [30.5, 837.113573407202466, 45.0, 45.0],
					"presentation": 1,
					"presentation_rect": [25.0, 147.799999177455902, 100.200000822544098, 100.200000822544098]
				}
			},
			{
				"box": {
					"id": "obj-21",
					"lastchannelcount": 64,
					"maxclass": "mc.live.gain~",
					"numinlets": 1,
					"numoutlets": 4,
					"outlettype": ["multichannelsignal", "", "float", "list"],
					"parameter_enable": 1,
					"patching_rect": [30.5, 690.075715604801644, 415.0, 100.0],
					"presentation": 1,
					"presentation_rect": [25.0, 250.0, 430.0, 100.0],
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
					"destination": ["obj-61", 0],
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
					"destination": ["obj-13", 0],
					"source": ["obj-18", 0]
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
					"midpoints": [379.0, 276.0, 340.0, 276.0],
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
					"destination": ["obj-27", 0],
					"source": ["obj-31", 0]
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
						51.0, 471.458098888397217, 25.5, 471.458098888397217, 25.5, 538.0, 191.0, 538.0
					],
					"source": ["obj-35", 1]
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
					"midpoints": [380.5, 244.5, 340.0, 244.5],
					"source": ["obj-5", 1]
				}
			},
			{
				"patchline": {
					"destination": ["obj-60", 0],
					"midpoints": [140.0, 477.0, 40.0, 477.0],
					"order": 1,
					"source": ["obj-57", 0]
				}
			},
			{
				"patchline": {
					"destination": ["obj-61", 0],
					"midpoints": [140.0, 476.0, 340.0, 476.0],
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
					"destination": ["obj-13", 0],
					"midpoints": [220.0, 431.0, 340.0, 431.0],
					"order": 0,
					"source": ["obj-6", 0]
				}
			},
			{
				"patchline": {
					"destination": ["obj-60", 0],
					"midpoints": [220.0, 431.349770799279213, 40.0, 431.349770799279213],
					"order": 1,
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
					"destination": ["obj-13", 0],
					"midpoints": [125.0, 431.0, 340.0, 431.0],
					"order": 0,
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
					"destination": ["obj-60", 0],
					"midpoints": [125.0, 431.292631208896637, 40.0, 431.292631208896637],
					"order": 1,
					"source": ["obj-62", 0]
				}
			},
			{
				"patchline": {
					"destination": ["obj-60", 0],
					"midpoints": [230.0, 488.0, 40.0, 488.0],
					"order": 1,
					"source": ["obj-7", 0]
				}
			},
			{
				"patchline": {
					"destination": ["obj-61", 0],
					"midpoints": [230.0, 487.0, 340.0, 487.0],
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
			"parameterbanks": {},
			"inherited_shortname": 1
		},
		"dependency_cache": [
			{
				"name": "helpdetails.js",
				"bootpath": "C74:/help/resources",
				"type": "TEXT",
				"implicit": 1
			},
			{
				"name": "kac.circularAmplitudes.mxo",
				"type": "iLaX"
			},
			{
				"name": "kac.circularSeries.mxo",
				"type": "iLaX"
			},
			{
				"name": "kac.squareToCircle.mxo",
				"type": "iLaX"
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
