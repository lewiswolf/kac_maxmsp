{
	"patcher": {
		"fileversion": 1,
		"appversion": {
			"major": 8,
			"minor": 6,
			"revision": 4,
			"architecture": "x64",
			"modernui": 1
		},
		"classnamespace": "box",
		"rect": [-1717.0, 83.0, 1372.0, 751.0],
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
		"subpatcher_template": "",
		"assistshowspatchername": 0,
		"boxes": [
			{
				"box": {
					"id": "obj-6",
					"maxclass": "newobj",
					"numinlets": 1,
					"numoutlets": 1,
					"outlettype": ["jit_matrix"],
					"patcher": {
						"fileversion": 1,
						"appversion": {
							"major": 8,
							"minor": 6,
							"revision": 4,
							"architecture": "x64",
							"modernui": 1
						},
						"classnamespace": "box",
						"rect": [34.0, 115.0, 1372.0, 751.0],
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
						"subpatcher_template": "",
						"assistshowspatchername": 0,
						"boxes": [
							{
								"box": {
									"id": "obj-84",
									"maxclass": "newobj",
									"numinlets": 2,
									"numoutlets": 1,
									"outlettype": ["int"],
									"patching_rect": [226.112717549006135, 240.519164562225342, 29.5, 22.0],
									"text": "* 2"
								}
							},
							{
								"box": {
									"id": "obj-83",
									"maxclass": "newobj",
									"numinlets": 2,
									"numoutlets": 1,
									"outlettype": ["int"],
									"patching_rect": [506.215281327565549, 133.974375903606415, 29.5, 22.0],
									"text": "/ 2"
								}
							},
							{
								"box": {
									"id": "obj-82",
									"maxclass": "newobj",
									"numinlets": 1,
									"numoutlets": 1,
									"outlettype": [""],
									"patching_rect": [352.321762809047016, 102.564115524291992, 124.0, 22.0],
									"text": "vexpr ($f1 + 1.) * 100."
								}
							},
							{
								"box": {
									"id": "obj-80",
									"maxclass": "newobj",
									"numinlets": 4,
									"numoutlets": 1,
									"outlettype": [""],
									"patching_rect": [
										198.39571613073349, 323.529402315616608, 438.729347795248032, 22.0
									],
									"text": "sprintf linesegment %f %f %f %f"
								}
							},
							{
								"box": {
									"id": "obj-79",
									"linecount": 2,
									"maxclass": "newobj",
									"numinlets": 2,
									"numoutlets": 1,
									"outlettype": [""],
									"patching_rect": [646.125063925981522, 240.519164562225342, 101.0, 35.0],
									"text": "expr (2 * $i1 + 3) % $i2"
								}
							},
							{
								"box": {
									"id": "obj-78",
									"linecount": 2,
									"maxclass": "newobj",
									"numinlets": 2,
									"numoutlets": 1,
									"outlettype": [""],
									"patching_rect": [506.215281327565549, 240.519164562225342, 101.0, 35.0],
									"text": "expr (2 * $i1 + 2) % $i2"
								}
							},
							{
								"box": {
									"id": "obj-77",
									"maxclass": "newobj",
									"numinlets": 1,
									"numoutlets": 1,
									"outlettype": [""],
									"patching_rect": [366.305498729149463, 240.519164562225342, 98.0, 22.0],
									"text": "expr (2 * $i1 + 1)"
								}
							},
							{
								"box": {
									"id": "obj-76",
									"maxclass": "newobj",
									"numinlets": 2,
									"numoutlets": 2,
									"outlettype": ["", ""],
									"patching_rect": [618.125063925981522, 292.864842474460602, 47.0, 22.0],
									"text": "list.mth"
								}
							},
							{
								"box": {
									"id": "obj-75",
									"maxclass": "newobj",
									"numinlets": 2,
									"numoutlets": 2,
									"outlettype": ["", ""],
									"patching_rect": [478.215281327565549, 292.864842474460602, 47.0, 22.0],
									"text": "list.mth"
								}
							},
							{
								"box": {
									"id": "obj-74",
									"maxclass": "newobj",
									"numinlets": 2,
									"numoutlets": 2,
									"outlettype": ["", ""],
									"patching_rect": [338.305498729149463, 292.864842474460602, 47.0, 22.0],
									"text": "list.mth"
								}
							},
							{
								"box": {
									"id": "obj-73",
									"maxclass": "newobj",
									"numinlets": 2,
									"numoutlets": 1,
									"outlettype": ["int"],
									"patching_rect": [506.215281327565549, 197.954229354858398, 29.5, 22.0],
									"text": "- 1"
								}
							},
							{
								"box": {
									"id": "obj-72",
									"maxclass": "newobj",
									"numinlets": 2,
									"numoutlets": 2,
									"outlettype": ["", ""],
									"patching_rect": [506.215281327565549, 102.564115524291992, 43.0, 22.0],
									"text": "list.len"
								}
							},
							{
								"box": {
									"id": "obj-71",
									"maxclass": "newobj",
									"numinlets": 2,
									"numoutlets": 2,
									"outlettype": ["", ""],
									"patching_rect": [
										198.112717549006135, 197.954229354858398, 173.209045260040909, 22.0
									],
									"text": "list.reg"
								}
							},
							{
								"box": {
									"id": "obj-70",
									"maxclass": "newobj",
									"numinlets": 1,
									"numoutlets": 5,
									"outlettype": ["bang", "bang", "", "", "clear"],
									"patching_rect": [
										44.534725772009892, 60.89744359254837, 634.574074074074247, 22.0
									],
									"text": "t b b l l clear"
								}
							},
							{
								"box": {
									"id": "obj-69",
									"maxclass": "newobj",
									"numinlets": 2,
									"numoutlets": 2,
									"outlettype": ["", ""],
									"patching_rect": [198.112717549006135, 292.864842474460602, 47.0, 22.0],
									"text": "list.mth"
								}
							},
							{
								"box": {
									"id": "obj-67",
									"maxclass": "newobj",
									"numinlets": 2,
									"numoutlets": 3,
									"outlettype": ["bang", "bang", "int"],
									"patching_rect": [
										198.112717549006135, 166.079229354858398, 326.923118233680725, 22.0
									],
									"text": "uzi"
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
									"patching_rect": [44.534725772009921, 368.126710057258606, 128.0, 23.0],
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
									"patching_rect": [44.534725772009921, 16.26616507768631, 30.0, 30.0]
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
									"patching_rect": [44.534725772009921, 402.866251945495605, 30.0, 30.0]
								}
							}
						],
						"lines": [
							{
								"patchline": {
									"destination": ["obj-71", 0],
									"source": ["obj-67", 0]
								}
							},
							{
								"patchline": {
									"destination": ["obj-73", 0],
									"source": ["obj-67", 2]
								}
							},
							{
								"patchline": {
									"destination": ["obj-80", 0],
									"source": ["obj-69", 0]
								}
							},
							{
								"patchline": {
									"destination": ["obj-67", 0],
									"source": ["obj-70", 1]
								}
							},
							{
								"patchline": {
									"destination": ["obj-72", 0],
									"source": ["obj-70", 3]
								}
							},
							{
								"patchline": {
									"destination": ["obj-82", 0],
									"source": ["obj-70", 2]
								}
							},
							{
								"patchline": {
									"destination": ["obj-98", 0],
									"midpoints": [
										669.608799846084139, 92.355399966239929, 54.034725772009921,
										92.355399966239929
									],
									"source": ["obj-70", 4]
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
									"destination": ["obj-69", 0],
									"order": 3,
									"source": ["obj-71", 0]
								}
							},
							{
								"patchline": {
									"destination": ["obj-74", 0],
									"midpoints": [
										207.612717549006135, 284.129554092884064, 347.805498729149463,
										284.129554092884064
									],
									"order": 2,
									"source": ["obj-71", 0]
								}
							},
							{
								"patchline": {
									"destination": ["obj-75", 0],
									"midpoints": [
										207.612717549006135, 284.02636507153511, 487.715281327565549,
										284.02636507153511
									],
									"order": 1,
									"source": ["obj-71", 0]
								}
							},
							{
								"patchline": {
									"destination": ["obj-76", 0],
									"midpoints": [
										207.612717549006135, 284.266657680273056, 627.625063925981522,
										284.266657680273056
									],
									"order": 0,
									"source": ["obj-71", 0]
								}
							},
							{
								"patchline": {
									"destination": ["obj-78", 1],
									"midpoints": [
										515.715281327565549, 129.853321522474289, 597.715281327565549,
										129.853321522474289
									],
									"order": 1,
									"source": ["obj-72", 0]
								}
							},
							{
								"patchline": {
									"destination": ["obj-79", 1],
									"midpoints": [
										515.715281327565549, 129.309430181980133, 737.625063925981522,
										129.309430181980133
									],
									"order": 0,
									"source": ["obj-72", 0]
								}
							},
							{
								"patchline": {
									"destination": ["obj-83", 0],
									"order": 2,
									"source": ["obj-72", 0]
								}
							},
							{
								"patchline": {
									"destination": ["obj-77", 0],
									"midpoints": [
										515.715281327565549, 229.73669695854187, 375.805498729149463,
										229.73669695854187
									],
									"order": 2,
									"source": ["obj-73", 0]
								}
							},
							{
								"patchline": {
									"destination": ["obj-78", 0],
									"order": 1,
									"source": ["obj-73", 0]
								}
							},
							{
								"patchline": {
									"destination": ["obj-79", 0],
									"midpoints": [
										515.715281327565549, 229.73669695854187, 655.625063925981522,
										229.73669695854187
									],
									"order": 0,
									"source": ["obj-73", 0]
								}
							},
							{
								"patchline": {
									"destination": ["obj-84", 0],
									"midpoints": [
										515.715281327565549, 229.73669695854187, 235.612717549006135,
										229.73669695854187
									],
									"order": 3,
									"source": ["obj-73", 0]
								}
							},
							{
								"patchline": {
									"destination": ["obj-80", 1],
									"source": ["obj-74", 0]
								}
							},
							{
								"patchline": {
									"destination": ["obj-80", 2],
									"source": ["obj-75", 0]
								}
							},
							{
								"patchline": {
									"destination": ["obj-80", 3],
									"source": ["obj-76", 0]
								}
							},
							{
								"patchline": {
									"destination": ["obj-74", 1],
									"source": ["obj-77", 0]
								}
							},
							{
								"patchline": {
									"destination": ["obj-75", 1],
									"source": ["obj-78", 0]
								}
							},
							{
								"patchline": {
									"destination": ["obj-76", 1],
									"source": ["obj-79", 0]
								}
							},
							{
								"patchline": {
									"destination": ["obj-98", 0],
									"midpoints": [
										207.89571613073349, 356.495776265859604, 54.034725772009921,
										356.495776265859604
									],
									"source": ["obj-80", 0]
								}
							},
							{
								"patchline": {
									"destination": ["obj-71", 1],
									"source": ["obj-82", 0]
								}
							},
							{
								"patchline": {
									"destination": ["obj-67", 1],
									"source": ["obj-83", 0]
								}
							},
							{
								"patchline": {
									"destination": ["obj-69", 1],
									"source": ["obj-84", 0]
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
					"patching_rect": [29.0, 248.0, 83.0, 22.0],
					"saved_object_attributes": {
						"description": "",
						"digest": "",
						"globalpatchername": "",
						"tags": ""
					},
					"text": "p plot polygon"
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
							"major": 8,
							"minor": 6,
							"revision": 4,
							"architecture": "x64",
							"modernui": 1
						},
						"classnamespace": "box",
						"rect": [34.0, 115.0, 1372.0, 751.0],
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
						"subpatcher_template": "",
						"assistshowspatchername": 0,
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
										45.077437142531068, 70.352082169055933, 232.999999999999972, 22.0
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
									"patching_rect": [45.077437142531068, 172.640914344787575, 128.0, 23.0],
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
									"patching_rect": [45.077437142531068, 28.255804777145386, 30.0, 30.0]
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
									"patching_rect": [45.077437142531068, 207.737191736698122, 30.0, 30.0]
								}
							}
						],
						"lines": [
							{
								"patchline": {
									"destination": ["obj-98", 0],
									"midpoints": [
										161.5, 166.092775648832287, 54.577437142531068, 166.092775648832287
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
										268.577437142531039, 166.19004562497139, 54.577437142531068,
										166.19004562497139
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
					"patching_rect": [417.439252495765686, 319.0, 90.0, 22.0],
					"saved_object_attributes": {
						"description": "",
						"digest": "",
						"globalpatchername": "",
						"tags": ""
					},
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
					"patching_rect": [650.000010192394257, 350.699999988079071, 118.000001013278961, 49.0],
					"text": "0. 0.316361 0.855909 0.683639 1. 0.316361"
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
					"patching_rect": [417.439252495765686, 350.699999988079071, 200.0, 200.0],
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
					"patching_rect": [417.439252495765686, 280.5, 261.0, 22.0],
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
					"patching_rect": [259.719626247882843, 280.5, 127.0, 49.0],
					"text": "-0.662519 0.251008 -0.51074 -0.251008 0.662519 0.144419"
				}
			},
			{
				"box": {
					"border": 1.0,
					"id": "obj-20",
					"maxclass": "jit.pwindow",
					"numinlets": 1,
					"numoutlets": 2,
					"outlettype": ["jit_matrix", ""],
					"patching_rect": [29.0, 280.5, 200.0, 200.0],
					"srcrect": [0, 0, 500, 500],
					"sync": 1
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
					"midpoints": [38.5, 236.25, 426.939252495765686, 236.25],
					"order": 0,
					"source": ["obj-1", 0]
				}
			},
			{
				"patchline": {
					"destination": ["obj-6", 0],
					"order": 2,
					"source": ["obj-1", 0]
				}
			},
			{
				"patchline": {
					"destination": ["obj-86", 1],
					"midpoints": [38.5, 236.25, 377.219626247882843, 236.25],
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
					"midpoints": [
						426.939252495765686, 309.299999743700027, 758.500011205673218, 309.299999743700027
					],
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
					"destination": ["obj-20", 0],
					"source": ["obj-6", 0]
				}
			},
			{
				"patchline": {
					"destination": ["obj-8", 0],
					"source": ["obj-9", 0]
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
				"name": "kac.generateConvexPolygon.mxo",
				"type": "iLaX"
			},
			{
				"name": "kac.normaliseConvexPolygon.mxo",
				"type": "iLaX"
			}
		],
		"autosave": 0
	}
}
