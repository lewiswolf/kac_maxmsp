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
		"rect": [34.0, 187.0, 799.0, 676.0],
		"bglocked": 0,
		"openinpresentation": 0,
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
					"id": "obj-4",
					"maxclass": "newobj",
					"numinlets": 1,
					"numoutlets": 1,
					"outlettype": [""],
					"patching_rect": [30.0, 145.0, 151.0, 23.0],
					"text": "loadmess setnode 1 0.5 0.5"
				}
			},
			{
				"box": {
					"id": "obj-3",
					"maxclass": "nodes",
					"nodesnames": [" "],
					"nsize": [0.0],
					"numinlets": 1,
					"numoutlets": 3,
					"outlettype": ["", "", ""],
					"parameter_enable": 0,
					"patching_rect": [30.0, 175.0, 100.0, 100.0],
					"pointcolor": [0.929411764705882, 0.929411764705882, 0.352941176470588, 1.0],
					"xplace": [0.5],
					"yplace": [0.5]
				}
			},
			{
				"box": {
					"id": "obj-23",
					"maxclass": "newobj",
					"numinlets": 2,
					"numoutlets": 1,
					"outlettype": [""],
					"patching_rect": [92.0, 410.0, 103.0, 23.0],
					"text": "pack 0. 0."
				}
			},
			{
				"box": {
					"id": "obj-22",
					"maxclass": "newobj",
					"numinlets": 1,
					"numoutlets": 5,
					"outlettype": ["int", "float", "float", "float", "int"],
					"patching_rect": [70.5, 343.10869574546814, 105.0, 23.0],
					"text": "unpack 0 0. 0. 0. 0"
				}
			},
			{
				"box": {
					"id": "obj-21",
					"maxclass": "newobj",
					"numinlets": 1,
					"numoutlets": 1,
					"outlettype": [""],
					"patching_rect": [92.0, 440.0, 191.0, 23.0],
					"text": "vexpr ($f1 + 1.) / 2. @scalarmode 1"
				}
			},
			{
				"box": {
					"id": "obj-20",
					"maxclass": "newobj",
					"numinlets": 1,
					"numoutlets": 1,
					"outlettype": [""],
					"patching_rect": [92.0, 470.0, 106.0, 23.0],
					"text": "prepend setnode 1"
				}
			},
			{
				"box": {
					"id": "obj-17",
					"maxclass": "nodes",
					"nodesnames": [" "],
					"nsize": [0.0],
					"numinlets": 1,
					"numoutlets": 3,
					"outlettype": ["", "", ""],
					"parameter_enable": 0,
					"patching_rect": [92.0, 500.0, 100.0, 100.0],
					"pointcolor": [0.929411764705882, 0.929411764705882, 0.352941176470588, 1.0],
					"xplace": [0.5],
					"yplace": [0.5]
				}
			},
			{
				"box": {
					"id": "obj-16",
					"maxclass": "newobj",
					"numinlets": 1,
					"numoutlets": 1,
					"outlettype": [""],
					"patching_rect": [70.5, 313.10869574546814, 188.0, 23.0],
					"text": "vexpr ($f1 * 2.) - 1. @scalarmode 1"
				}
			},
			{
				"box": {
					"id": "obj-12",
					"maxclass": "newobj",
					"numinlets": 2,
					"numoutlets": 2,
					"outlettype": ["", ""],
					"patching_rect": [70.5, 285.0, 65.0, 23.0],
					"text": "route node"
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
					"text": "Map coordinates from a square to a circle.\nparameters:\n    x, y: The cartesian point located in a square."
				}
			},
			{
				"box": {
					"border": 0,
					"filename": "helpdetails.js",
					"id": "obj-2",
					"ignoreclick": 1,
					"jsarguments": ["kac.squareToCircle"],
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
					"id": "obj-61",
					"maxclass": "newobj",
					"numinlets": 2,
					"numoutlets": 2,
					"outlettype": ["", ""],
					"patching_rect": [92.0, 378.10869574546814, 103.0, 23.0],
					"text": "kac.squareToCircle"
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
					"destination": ["obj-17", 0],
					"source": ["obj-20", 0]
				}
			},
			{
				"patchline": {
					"destination": ["obj-20", 0],
					"source": ["obj-21", 0]
				}
			},
			{
				"patchline": {
					"destination": ["obj-61", 1],
					"midpoints": [123.0, 371.60869574546814, 185.5, 371.60869574546814],
					"source": ["obj-22", 2]
				}
			},
			{
				"patchline": {
					"destination": ["obj-61", 0],
					"source": ["obj-22", 1]
				}
			},
			{
				"patchline": {
					"destination": ["obj-21", 0],
					"source": ["obj-23", 0]
				}
			},
			{
				"patchline": {
					"destination": ["obj-12", 0],
					"source": ["obj-3", 1]
				}
			},
			{
				"patchline": {
					"destination": ["obj-3", 0],
					"source": ["obj-4", 0]
				}
			},
			{
				"patchline": {
					"destination": ["obj-23", 1],
					"source": ["obj-61", 1]
				}
			},
			{
				"patchline": {
					"destination": ["obj-23", 0],
					"source": ["obj-61", 0]
				}
			}
		],
		"dependency_cache": [
			{
				"name": "helpdetails.js",
				"bootpath": "C74:/help/resources",
				"type": "TEXT",
				"implicit": 1
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
