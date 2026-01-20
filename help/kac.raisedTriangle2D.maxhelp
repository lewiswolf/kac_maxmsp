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
		"rect": [179.0, 139.0, 857.0, 727.0],
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
					"id": "obj-29",
					"maxclass": "newobj",
					"numinlets": 1,
					"numoutlets": 2,
					"outlettype": ["bang", "float"],
					"patching_rect": [115.0, 240.0, 30.0, 23.0],
					"text": "t b f"
				}
			},
			{
				"box": {
					"format": 6,
					"id": "obj-25",
					"maxclass": "flonum",
					"maximum": 1.0,
					"minimum": 0.0,
					"numinlets": 1,
					"numoutlets": 2,
					"outlettype": ["", "bang"],
					"parameter_enable": 0,
					"patching_rect": [30.0, 205.0, 50.0, 23.0]
				}
			},
			{
				"box": {
					"format": 6,
					"id": "obj-20",
					"maxclass": "flonum",
					"maximum": 1.0,
					"minimum": 0.0,
					"numinlets": 1,
					"numoutlets": 2,
					"outlettype": ["", "bang"],
					"parameter_enable": 0,
					"patching_rect": [115.0, 205.0, 50.0, 23.0]
				}
			},
			{
				"box": {
					"id": "obj-9",
					"maxclass": "newobj",
					"numinlets": 1,
					"numoutlets": 1,
					"outlettype": [""],
					"patching_rect": [260.0, 377.0, 74.0, 23.0],
					"text": "prepend dim"
				}
			},
			{
				"box": {
					"id": "obj-1",
					"maxclass": "newobj",
					"numinlets": 2,
					"numoutlets": 1,
					"outlettype": [""],
					"patching_rect": [260.0, 345.0, 129.0, 23.0],
					"text": "pak 0 0"
				}
			},
			{
				"box": {
					"id": "obj-18",
					"maxclass": "jit.pwindow",
					"numinlets": 1,
					"numoutlets": 2,
					"outlettype": ["jit_matrix", ""],
					"patching_rect": [30.0, 442.0, 280.0, 175.0],
					"sync": 1
				}
			},
			{
				"box": {
					"id": "obj-17",
					"maxclass": "newobj",
					"numinlets": 1,
					"numoutlets": 2,
					"outlettype": ["", ""],
					"patching_rect": [30.0, 377.0, 121.0, 23.0],
					"text": "jit.fill raised_triangle 0"
				}
			},
			{
				"box": {
					"id": "obj-16",
					"maxclass": "newobj",
					"numinlets": 1,
					"numoutlets": 2,
					"outlettype": ["jit_matrix", ""],
					"patching_rect": [30.0, 412.0, 181.0, 23.0],
					"text": "jit.matrix raised_triangle 1 float32"
				}
			},
			{
				"box": {
					"id": "obj-15",
					"maxclass": "comment",
					"numinlets": 1,
					"numoutlets": 0,
					"patching_rect": [114.0, 165.0, 26.0, 21.0],
					"text": "x, y"
				}
			},
			{
				"box": {
					"id": "obj-60",
					"maxclass": "newobj",
					"numinlets": 2,
					"numoutlets": 1,
					"outlettype": [""],
					"patching_rect": [30.0, 345.0, 115.0, 23.0],
					"text": "kac.raisedTriangle2D"
				}
			},
			{
				"box": {
					"id": "obj-53",
					"maxclass": "comment",
					"numinlets": 1,
					"numoutlets": 0,
					"patching_rect": [497.0, 168.0, 56.0, 21.0],
					"text": "deviation"
				}
			},
			{
				"box": {
					"id": "obj-52",
					"maxclass": "newobj",
					"numinlets": 1,
					"numoutlets": 1,
					"outlettype": [""],
					"patching_rect": [308.0, 167.0, 81.0, 23.0],
					"text": "loadmess 100"
				}
			},
			{
				"box": {
					"id": "obj-3",
					"maxclass": "newobj",
					"numinlets": 1,
					"numoutlets": 1,
					"outlettype": [""],
					"patching_rect": [412.0, 167.0, 83.0, 23.0],
					"text": "loadmess 0.25"
				}
			},
			{
				"box": {
					"id": "obj-26",
					"maxclass": "message",
					"numinlets": 2,
					"numoutlets": 1,
					"outlettype": [""],
					"patching_rect": [423.0, 285.0, 55.0, 23.0],
					"text": "sigma $1"
				}
			},
			{
				"box": {
					"format": 6,
					"id": "obj-24",
					"maxclass": "flonum",
					"numinlets": 1,
					"numoutlets": 2,
					"outlettype": ["", "bang"],
					"parameter_enable": 0,
					"patching_rect": [412.0, 205.0, 50.0, 23.0]
				}
			},
			{
				"box": {
					"id": "obj-22",
					"maxclass": "newobj",
					"numinlets": 1,
					"numoutlets": 2,
					"outlettype": ["bang", "float"],
					"patching_rect": [412.0, 240.0, 30.0, 23.0],
					"text": "t b f"
				}
			},
			{
				"box": {
					"id": "obj-31",
					"maxclass": "newobj",
					"numinlets": 1,
					"numoutlets": 1,
					"outlettype": [""],
					"patching_rect": [30.0, 165.0, 76.0, 23.0],
					"text": "loadmess 0.5"
				}
			},
			{
				"box": {
					"id": "obj-4",
					"maxclass": "newobj",
					"numinlets": 1,
					"numoutlets": 1,
					"outlettype": [""],
					"patching_rect": [198.0, 167.0, 81.0, 23.0],
					"text": "loadmess 100"
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
					"patching_rect": [308.0, 205.0, 57.5, 23.0]
				}
			},
			{
				"box": {
					"id": "obj-12",
					"maxclass": "comment",
					"numinlets": 1,
					"numoutlets": 0,
					"patching_rect": [389.0, 167.0, 19.0, 21.0],
					"text": "Y"
				}
			},
			{
				"box": {
					"id": "obj-10",
					"maxclass": "comment",
					"numinlets": 1,
					"numoutlets": 0,
					"patching_rect": [283.0, 168.0, 19.0, 21.0],
					"text": "X"
				}
			},
			{
				"box": {
					"id": "obj-7",
					"maxclass": "message",
					"numinlets": 2,
					"numoutlets": 1,
					"outlettype": [""],
					"patching_rect": [339.0, 285.0, 32.0, 23.0],
					"text": "Y $1"
				}
			},
			{
				"box": {
					"id": "obj-6",
					"maxclass": "newobj",
					"numinlets": 1,
					"numoutlets": 3,
					"outlettype": ["bang", "int", "int"],
					"patching_rect": [308.0, 240.0, 81.0, 23.0],
					"text": "t b i i"
				}
			},
			{
				"box": {
					"id": "obj-62",
					"maxclass": "newobj",
					"numinlets": 1,
					"numoutlets": 3,
					"outlettype": ["bang", "int", "int"],
					"patching_rect": [198.0, 240.0, 81.0, 23.0],
					"text": "t b i i"
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
					"patching_rect": [198.0, 205.0, 57.0, 23.0]
				}
			},
			{
				"box": {
					"id": "obj-57",
					"maxclass": "message",
					"numinlets": 2,
					"numoutlets": 1,
					"outlettype": [""],
					"patching_rect": [229.0, 285.0, 33.0, 23.0],
					"text": "X $1"
				}
			},
			{
				"box": {
					"fontname": "Arial",
					"id": "obj-19",
					"linecount": 5,
					"maxclass": "comment",
					"numinlets": 1,
					"numoutlets": 0,
					"patching_rect": [30.0, 70.0, 635.0, 74.0],
					"text": "Calculate a 2-dimensional triangular distribution.\nparameters:\n    x, y: The centre of the raised triangle distribution.\n    sigma: The deviation of the distribution.\n    X, Y: The size of the output matrix in the X and Y axes respectively - the output will be a list of length X*Y."
				}
			},
			{
				"box": {
					"border": 0,
					"filename": "helpdetails.js",
					"id": "obj-2",
					"ignoreclick": 1,
					"jsarguments": ["kac.raisedTriangle2D"],
					"maxclass": "jsui",
					"numinlets": 1,
					"numoutlets": 1,
					"outlettype": [""],
					"parameter_enable": 0,
					"patching_rect": [30.0, 25.0, 625.0, 55.0]
				}
			}
		],
		"lines": [
			{
				"patchline": {
					"destination": ["obj-9", 0],
					"source": ["obj-1", 0]
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
					"destination": ["obj-18", 0],
					"source": ["obj-16", 0]
				}
			},
			{
				"patchline": {
					"destination": ["obj-16", 0],
					"source": ["obj-17", 0]
				}
			},
			{
				"patchline": {
					"destination": ["obj-29", 0],
					"source": ["obj-20", 0]
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
					"midpoints": [421.5, 273.30279529094696, 39.5, 273.30279529094696],
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
					"destination": ["obj-60", 0],
					"source": ["obj-25", 0]
				}
			},
			{
				"patchline": {
					"destination": ["obj-60", 0],
					"midpoints": [432.5, 334.87519251261256, 39.5, 334.87519251261256],
					"source": ["obj-26", 0]
				}
			},
			{
				"patchline": {
					"destination": ["obj-60", 1],
					"source": ["obj-29", 1]
				}
			},
			{
				"patchline": {
					"destination": ["obj-60", 0],
					"midpoints": [124.5, 273.2624776363373, 39.5, 273.2624776363373],
					"source": ["obj-29", 0]
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
					"destination": ["obj-20", 0],
					"midpoints": [39.5, 196.84276938438416, 124.5, 196.84276938438416],
					"order": 0,
					"source": ["obj-31", 0]
				}
			},
			{
				"patchline": {
					"destination": ["obj-25", 0],
					"order": 1,
					"source": ["obj-31", 0]
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
					"destination": ["obj-14", 0],
					"source": ["obj-52", 0]
				}
			},
			{
				"patchline": {
					"destination": ["obj-60", 0],
					"midpoints": [238.5, 316.61391350631493, 39.5, 316.61391350631493],
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
					"destination": ["obj-1", 1],
					"source": ["obj-6", 2]
				}
			},
			{
				"patchline": {
					"destination": ["obj-60", 0],
					"midpoints": [317.5, 273.30279529094696, 39.5, 273.30279529094696],
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
					"destination": ["obj-17", 0],
					"source": ["obj-60", 0]
				}
			},
			{
				"patchline": {
					"destination": ["obj-1", 0],
					"source": ["obj-62", 2]
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
					"midpoints": [207.5, 273.35714316368103, 39.5, 273.35714316368103],
					"source": ["obj-62", 0]
				}
			},
			{
				"patchline": {
					"destination": ["obj-60", 0],
					"midpoints": [348.5, 326.00296670456737, 39.5, 326.00296670456737],
					"source": ["obj-7", 0]
				}
			},
			{
				"patchline": {
					"destination": ["obj-16", 0],
					"midpoints": [269.5, 405.3809517621994, 39.5, 405.3809517621994],
					"source": ["obj-9", 0]
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
