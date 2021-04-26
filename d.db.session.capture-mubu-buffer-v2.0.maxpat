{
	"patcher" : 	{
		"fileversion" : 1,
		"appversion" : 		{
			"major" : 8,
			"minor" : 1,
			"revision" : 8,
			"architecture" : "x64",
			"modernui" : 1
		}
,
		"classnamespace" : "box",
		"rect" : [ 162.0, 98.0, 327.0, 768.0 ],
		"bglocked" : 0,
		"openinpresentation" : 1,
		"default_fontsize" : 12.0,
		"default_fontface" : 0,
		"default_fontname" : "Arial",
		"gridonopen" : 1,
		"gridsize" : [ 15.0, 15.0 ],
		"gridsnaponopen" : 1,
		"objectsnaponopen" : 1,
		"statusbarvisible" : 2,
		"toolbarvisible" : 0,
		"lefttoolbarpinned" : 0,
		"toptoolbarpinned" : 0,
		"righttoolbarpinned" : 0,
		"bottomtoolbarpinned" : 0,
		"toolbars_unpinned_last_save" : 0,
		"tallnewobj" : 0,
		"boxanimatetime" : 200,
		"enablehscroll" : 1,
		"enablevscroll" : 1,
		"devicewidth" : 0.0,
		"description" : "",
		"digest" : "",
		"tags" : "",
		"style" : "",
		"subpatcher_template" : "",
		"assistshowspatchername" : 0,
		"boxes" : [ 			{
				"box" : 				{
					"id" : "obj-63",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 420.791687000000024, 646.0, 65.0, 20.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 14.5, 607.0, 150.0, 20.0 ],
					"text" : "audio"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-20",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ -13.099099000000001, 90.500022999999999, 41.0, 20.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 41.900902000000002, 435.5, 45.0, 20.0 ],
					"text" : "stop"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-18",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ -13.099099000000001, 68.500022999999999, 41.0, 20.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 41.900902000000002, 410.5, 45.0, 20.0 ],
					"text" : "start"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-5",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 630.0, 493.333344000000011, 182.0, 20.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 138.900893999999994, 318.5, 169.0, 20.0 ],
					"text" : "choose audio input or output"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-6",
					"maxclass" : "newobj",
					"numinlets" : 4,
					"numoutlets" : 4,
					"outlettype" : [ "", "", "", "" ],
					"patching_rect" : [ 214.0, 601.0, 208.0, 22.0 ],
					"text" : "route bufferName time /audioDescript"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-4",
					"maxclass" : "newobj",
					"numinlets" : 0,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 214.0, 569.0, 80.0, 22.0 ],
					"text" : "r audio-buffer"
				}

			}
, 			{
				"box" : 				{
					"buffername" : "session",
					"id" : "obj-124",
					"maxclass" : "waveform~",
					"numinlets" : 5,
					"numoutlets" : 6,
					"outlettype" : [ "float", "float", "float", "float", "list", "" ],
					"patching_rect" : [ 214.0, 674.0, 330.0, 88.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 14.5, 623.0, 297.0, 97.0 ],
					"selectioncolor" : [ 0.265777, 0.0, 0.974011, 1.0 ],
					"setmode" : 3,
					"waveformcolor" : [ 0.371511, 0.637185, 0.932006, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-71",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 332.0, 980.0, 100.0, 22.0 ],
					"text" : "prepend /saveDb"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-70",
					"maxclass" : "button",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "bang" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 332.0, 940.0, 24.0, 24.0 ]
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-66",
					"maxclass" : "newobj",
					"numinlets" : 4,
					"numoutlets" : 4,
					"outlettype" : [ "", "", "", "" ],
					"patching_rect" : [ 167.5, 1069.0, 182.0, 22.0 ],
					"text" : "route /path filesWritten saveFiles"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-9",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 33.0, 7.75001, 86.0, 22.0 ],
					"text" : "prepend /reset"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-64",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 104.0, 551.0, 77.0, 22.0 ],
					"text" : "s bufferClear"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-57",
					"maxclass" : "toggle",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "int" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 104.0, 505.0, 24.0, 24.0 ]
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-58",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 62.900902000000002, -18.0, 214.0, 20.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 59.5, 579.0, 218.0, 20.0 ],
					"text" : "reset buffers before recording again"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-17",
					"linecount" : 2,
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 167.5, 1161.0, 112.0, 33.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 41.900902000000002, 213.499985000000009, 166.0, 20.0 ],
					"text" : "current folder for saving files: "
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-13",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 167.5, 1101.0, 72.0, 22.0 ],
					"text" : "prepend set"
				}

			}
, 			{
				"box" : 				{
					"fontsize" : 8.0,
					"id" : "obj-22",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 167.5, 1132.0, 268.0, 15.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 30.297297, 226.499985000000009, 259.301787999999988, 15.0 ],
					"text" : "MacintoshHD:/Users/audiobeing/edis-performer-study/sessionFiles/"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-23",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 1.0, 906.333312999999976, 61.0, 20.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 85.599097999999998, 508.0, 77.0, 20.0 ],
					"text" : "save disk"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-19",
					"linecount" : 2,
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 206.291672000000005, 929.0, 75.0, 33.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 70.900902000000002, 189.499985000000009, 150.0, 20.0 ],
					"text" : "set folder to save files"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-26",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 51.0, 961.333312999999976, 85.0, 22.0 ],
					"text" : "prepend /save"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-27",
					"maxclass" : "button",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "bang" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 0.0, 932.333312999999976, 24.0, 24.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 56.797297999999998, 506.0, 24.0, 24.0 ]
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-28",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 167.5, 1000.0, 83.0, 22.0 ],
					"text" : "prepend /path"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-46",
					"maxclass" : "button",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "bang" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 169.5, 929.0, 24.0, 24.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 41.900902000000002, 187.499985000000009, 24.0, 24.0 ]
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-49",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "bang" ],
					"patching_rect" : [ 167.5, 969.0, 101.0, 22.0 ],
					"text" : "opendialog folder"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-51",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patcher" : 					{
						"fileversion" : 1,
						"appversion" : 						{
							"major" : 8,
							"minor" : 1,
							"revision" : 8,
							"architecture" : "x64",
							"modernui" : 1
						}
,
						"classnamespace" : "box",
						"rect" : [ 247.0, 693.0, 269.0, 114.0 ],
						"bglocked" : 0,
						"openinpresentation" : 1,
						"default_fontsize" : 12.0,
						"default_fontface" : 0,
						"default_fontname" : "Arial",
						"gridonopen" : 1,
						"gridsize" : [ 15.0, 15.0 ],
						"gridsnaponopen" : 1,
						"objectsnaponopen" : 1,
						"statusbarvisible" : 2,
						"toolbarvisible" : 0,
						"lefttoolbarpinned" : 0,
						"toptoolbarpinned" : 0,
						"righttoolbarpinned" : 0,
						"bottomtoolbarpinned" : 0,
						"toolbars_unpinned_last_save" : 0,
						"tallnewobj" : 0,
						"boxanimatetime" : 200,
						"enablehscroll" : 1,
						"enablevscroll" : 1,
						"devicewidth" : 0.0,
						"description" : "",
						"digest" : "",
						"tags" : "",
						"style" : "",
						"subpatcher_template" : "",
						"assistshowspatchername" : 0,
						"boxes" : [ 							{
								"box" : 								{
									"id" : "obj-26",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "bang", "bang" ],
									"patching_rect" : [ 27.0, 658.0, 32.0, 22.0 ],
									"text" : "t b b"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-21",
									"maxclass" : "message",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 27.0, 608.0, 100.0, 22.0 ],
									"presentation" : 1,
									"presentation_rect" : [ 5.0, 14.0, 100.0, 22.0 ],
									"text" : "open data viewer"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-11",
									"maxclass" : "message",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 27.0, 693.375, 35.0, 22.0 ],
									"text" : "open"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-72",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 3,
									"outlettype" : [ "", "", "" ],
									"patching_rect" : [ 451.5, 486.0, 40.0, 22.0 ],
									"text" : "t s s s"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-71",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 3,
									"outlettype" : [ "", "", "" ],
									"patching_rect" : [ 318.0, 486.0, 40.0, 22.0 ],
									"text" : "t s s s"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-68",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "", "" ],
									"patching_rect" : [ 318.0, 415.0, 152.5, 22.0 ],
									"text" : "t s s"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-64",
									"maxclass" : "newobj",
									"numinlets" : 0,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 660.0, 664.0, 112.0, 22.0 ],
									"text" : "r #0-mv-thispatcher"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-63",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 693.0, 162.0, 114.0, 22.0 ],
									"text" : "s #0-mv-thispatcher"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-61",
									"maxclass" : "newobj",
									"numinlets" : 0,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 508.5, 622.0, 74.0, 22.0 ],
									"text" : "r #0-saveDb"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-60",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 247.0, 147.0, 76.0, 22.0 ],
									"text" : "s #0-saveDb"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-59",
									"maxclass" : "newobj",
									"numinlets" : 0,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 741.0, 470.0, 66.0, 22.0 ],
									"text" : "r #0-mv-aif"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-57",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 170.800003000000004, 143.0, 68.0, 22.0 ],
									"text" : "s #0-mv-aif"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-51",
									"maxclass" : "newobj",
									"numinlets" : 0,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 4.85, 526.0, 75.0, 22.0 ],
									"text" : "r #0-mv-json"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-50",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 137.0, 209.0, 77.0, 22.0 ],
									"text" : "s #0-mv-json"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-10",
									"maxclass" : "newobj",
									"numinlets" : 0,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 318.0, 230.625, 79.0, 22.0 ],
									"text" : "r #0-mv-save"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-8",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 103.599997999999999, 177.0, 81.0, 22.0 ],
									"text" : "s #0-mv-save"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-7",
									"maxclass" : "newobj",
									"numinlets" : 0,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 688.0, 727.0, 77.0, 22.0 ],
									"text" : "r #0-mv-path"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-6",
									"maxclass" : "newobj",
									"numinlets" : 0,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 337.0, 295.0, 77.0, 22.0 ],
									"text" : "r #0-mv-path"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-1",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 70.0, 143.0, 79.0, 22.0 ],
									"text" : "s #0-mv-path"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-55",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "bang", "bang" ],
									"patching_rect" : [ 508.5, 657.97497599999997, 88.699996999999996, 22.0 ],
									"text" : "t b b"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-54",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 508.5, 740.0, 95.0, 22.0 ],
									"text" : "pack s s"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-47",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 584.5, 700.0, 53.0, 22.0 ],
									"text" : "value aif"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-41",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 508.5, 699.0, 63.0, 22.0 ],
									"text" : "value json"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-32",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 710.5, 126.425003000000004, 71.0, 22.0 ],
									"text" : "v save-path"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-29",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 508.5, 769.375, 107.0, 22.0 ],
									"text" : "prepend saveFiles"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-46",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 4.85, 560.0, 92.0, 22.0 ],
									"text" : "prepend readall"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-44",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 741.0, 502.0, 95.0, 22.0 ],
									"text" : "prepend replace"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-43",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 2,
									"outlettype" : [ "", "" ],
									"patching_rect" : [ 660.0, 695.0, 153.0, 22.0 ],
									"text" : "combine path sessionFiles/"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-38",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 328.5, 601.40002400000003, 152.5, 22.0 ],
									"text" : "pack s s"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-37",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 328.5, 635.0, 115.0, 22.0 ],
									"text" : "prepend filesWritten"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-35",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 741.0, 629.0, 66.0, 22.0 ],
									"text" : "print buffer"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-33",
									"maxclass" : "button",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "bang" ],
									"parameter_enable" : 0,
									"patching_rect" : [ 292.0, 295.0, 24.0, 24.0 ]
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-18",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 660.0, 766.0, 83.0, 22.0 ],
									"text" : "prepend /path"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-2",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "float", "bang" ],
									"patching_rect" : [ 643.0, 574.0, 117.0, 22.0 ],
									"text" : "buffer~ session 10 2"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-42",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 103.599997999999999, 693.375, 109.0, 22.0 ],
									"text" : "print track @time 1"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-40",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patcher" : 									{
										"fileversion" : 1,
										"appversion" : 										{
											"major" : 8,
											"minor" : 1,
											"revision" : 8,
											"architecture" : "x64",
											"modernui" : 1
										}
,
										"classnamespace" : "box",
										"rect" : [ 136.0, 152.0, 836.0, 660.0 ],
										"bglocked" : 0,
										"openinpresentation" : 0,
										"default_fontsize" : 12.0,
										"default_fontface" : 0,
										"default_fontname" : "Arial",
										"gridonopen" : 1,
										"gridsize" : [ 15.0, 15.0 ],
										"gridsnaponopen" : 1,
										"objectsnaponopen" : 1,
										"statusbarvisible" : 2,
										"toolbarvisible" : 1,
										"lefttoolbarpinned" : 0,
										"toptoolbarpinned" : 0,
										"righttoolbarpinned" : 0,
										"bottomtoolbarpinned" : 0,
										"toolbars_unpinned_last_save" : 0,
										"tallnewobj" : 0,
										"boxanimatetime" : 200,
										"enablehscroll" : 1,
										"enablevscroll" : 1,
										"devicewidth" : 0.0,
										"description" : "",
										"digest" : "",
										"tags" : "",
										"style" : "",
										"subpatcher_template" : "",
										"assistshowspatchername" : 0,
										"boxes" : [ 											{
												"box" : 												{
													"id" : "obj-21",
													"maxclass" : "newobj",
													"numinlets" : 1,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 421.0, 274.5, 53.0, 22.0 ],
													"text" : "prepend"
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-20",
													"linecount" : 2,
													"maxclass" : "newobj",
													"numinlets" : 1,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 775.0, 327.0, 56.0, 35.0 ],
													"text" : "prepend set"
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-19",
													"maxclass" : "message",
													"numinlets" : 2,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 767.0, 268.0, 82.0, 22.0 ],
													"text" : "track $1"
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-17",
													"maxclass" : "newobj",
													"numinlets" : 1,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 618.0, 415.0, 53.0, 22.0 ],
													"text" : "prepend"
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-16",
													"maxclass" : "newobj",
													"numinlets" : 2,
													"numoutlets" : 4,
													"outlettype" : [ "dictionary", "", "", "" ],
													"patching_rect" : [ 616.0, 479.0, 119.5, 22.0 ],
													"saved_object_attributes" : 													{
														"embed" : 0,
														"parameter_enable" : 0,
														"parameter_mappable" : 0
													}
,
													"text" : "dict"
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-14",
													"maxclass" : "message",
													"numinlets" : 2,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 601.0, 364.0, 85.0, 22.0 ],
													"text" : "dump"
												}

											}
, 											{
												"box" : 												{
													"fontname" : "Arial",
													"fontsize" : 12.0,
													"id" : "obj-13",
													"maxclass" : "message",
													"numinlets" : 2,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 257.0, 354.0, 111.0, 22.0 ],
													"text" : "getmatrixcolnames"
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-12",
													"maxclass" : "message",
													"numinlets" : 2,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 599.0, 224.0, 29.5, 22.0 ],
													"text" : "f_1"
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-8",
													"linecount" : 13,
													"maxclass" : "message",
													"numinlets" : 2,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 317.0, 98.0, 50.0, 76.0 ],
													"text" : "readall 1 15 MacintoshHD:/Users/audiobeing/Desktop/sessionCaptureTest/testy11.json"
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-6",
													"maxclass" : "message",
													"numinlets" : 2,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 612.0, 300.0, 29.5, 22.0 ],
													"text" : "3"
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-2",
													"maxclass" : "newobj",
													"numinlets" : 1,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 485.0, 155.0, 25.0, 22.0 ],
													"text" : "iter"
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-1",
													"maxclass" : "newobj",
													"numinlets" : 2,
													"numoutlets" : 2,
													"outlettype" : [ "", "" ],
													"patching_rect" : [ 469.0, 98.0, 71.0, 22.0 ],
													"text" : "route tracks"
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-37",
													"linecount" : 11,
													"maxclass" : "message",
													"numinlets" : 2,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 651.0, 28.0, 43.0, 156.0 ],
													"text" : "cell f_1 f_2 f_3 centroid f_4 f_5 pinch rotate tap swipe"
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-33",
													"maxclass" : "message",
													"numinlets" : 2,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 50.0, 100.0, 57.0, 22.0 ],
													"text" : "gettracks"
												}

											}
, 											{
												"box" : 												{
													"comment" : "",
													"id" : "obj-38",
													"index" : 1,
													"maxclass" : "inlet",
													"numinlets" : 0,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 421.0, 40.0, 30.0, 30.0 ]
												}

											}
, 											{
												"box" : 												{
													"comment" : "",
													"id" : "obj-39",
													"index" : 1,
													"maxclass" : "outlet",
													"numinlets" : 1,
													"numoutlets" : 0,
													"patching_rect" : [ 50.0, 240.0, 30.0, 30.0 ]
												}

											}
 ],
										"lines" : [ 											{
												"patchline" : 												{
													"destination" : [ "obj-2", 0 ],
													"order" : 1,
													"source" : [ "obj-1", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-37", 1 ],
													"order" : 0,
													"source" : [ "obj-1", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-19", 0 ],
													"source" : [ "obj-12", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-39", 0 ],
													"source" : [ "obj-14", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-20", 0 ],
													"source" : [ "obj-19", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-19", 0 ],
													"source" : [ "obj-2", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-17", 0 ],
													"order" : 0,
													"source" : [ "obj-20", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-21", 0 ],
													"order" : 1,
													"source" : [ "obj-20", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-39", 0 ],
													"source" : [ "obj-33", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-1", 0 ],
													"order" : 0,
													"source" : [ "obj-38", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-21", 0 ],
													"order" : 1,
													"source" : [ "obj-38", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-8", 1 ],
													"order" : 2,
													"source" : [ "obj-38", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-14", 0 ],
													"source" : [ "obj-6", 0 ]
												}

											}
 ]
									}
,
									"patching_rect" : [ 213.100006000000008, 654.0, 59.0, 22.0 ],
									"saved_object_attributes" : 									{
										"description" : "",
										"digest" : "",
										"globalpatchername" : "",
										"tags" : ""
									}
,
									"text" : "p getdata"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-30",
									"maxclass" : "message",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 102.099997999999999, 520.0, 86.0, 22.0 ],
									"presentation" : 1,
									"presentation_rect" : [ 5.0, 38.0, 86.0, 22.0 ],
									"text" : "read-mubu-file"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-24",
									"maxclass" : "message",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 643.0, 470.0, 85.0, 22.0 ],
									"presentation" : 1,
									"presentation_rect" : [ 95.0, 38.0, 85.0, 22.0 ],
									"text" : "read-audio-file"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-20",
									"maxclass" : "message",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 643.0, 516.0, 48.0, 22.0 ],
									"text" : "replace"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-28",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 2,
									"outlettype" : [ "", "" ],
									"patching_rect" : [ 451.5, 449.521545000000003, 86.0, 22.0 ],
									"text" : "combine in .aif"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-27",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 2,
									"outlettype" : [ "", "" ],
									"patching_rect" : [ 318.0, 454.521545000000003, 103.0, 22.0 ],
									"text" : "combine in .json"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-25",
									"maxclass" : "message",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 472.5, 527.0, 51.0, 22.0 ],
									"text" : "write $1"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-23",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 124.0, 57.0, 85.0, 22.0 ],
									"text" : "prepend /save"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-22",
									"maxclass" : "button",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "bang" ],
									"parameter_enable" : 0,
									"patching_rect" : [ 124.0, 21.0, 24.0, 24.0 ]
								}

							}
, 							{
								"box" : 								{
									"comment" : "",
									"id" : "obj-19",
									"index" : 1,
									"maxclass" : "outlet",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 512.0, 859.0, 30.0, 30.0 ]
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-14",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 641.5, 28.0, 87.0, 22.0 ],
									"text" : "loadmess path"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-4",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "", "" ],
									"patching_rect" : [ 641.5, 71.0, 67.0, 22.0 ],
									"save" : [ "#N", "thispatcher", ";", "#Q", "end", ";" ],
									"text" : "thispatcher"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-3",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patcher" : 									{
										"fileversion" : 1,
										"appversion" : 										{
											"major" : 8,
											"minor" : 1,
											"revision" : 8,
											"architecture" : "x64",
											"modernui" : 1
										}
,
										"classnamespace" : "box",
										"rect" : [ 523.0, 211.0, 884.0, 480.0 ],
										"bglocked" : 0,
										"openinpresentation" : 0,
										"default_fontsize" : 12.0,
										"default_fontface" : 0,
										"default_fontname" : "Arial",
										"gridonopen" : 1,
										"gridsize" : [ 15.0, 15.0 ],
										"gridsnaponopen" : 1,
										"objectsnaponopen" : 1,
										"statusbarvisible" : 2,
										"toolbarvisible" : 1,
										"lefttoolbarpinned" : 0,
										"toptoolbarpinned" : 0,
										"righttoolbarpinned" : 0,
										"bottomtoolbarpinned" : 0,
										"toolbars_unpinned_last_save" : 0,
										"tallnewobj" : 0,
										"boxanimatetime" : 200,
										"enablehscroll" : 1,
										"enablevscroll" : 1,
										"devicewidth" : 0.0,
										"description" : "",
										"digest" : "",
										"tags" : "",
										"style" : "",
										"subpatcher_template" : "",
										"assistshowspatchername" : 0,
										"boxes" : [ 											{
												"box" : 												{
													"comment" : "",
													"id" : "obj-7",
													"index" : 1,
													"maxclass" : "inlet",
													"numinlets" : 0,
													"numoutlets" : 1,
													"outlettype" : [ "bang" ],
													"patching_rect" : [ 647.0, 62.0, 30.0, 30.0 ]
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-5",
													"maxclass" : "message",
													"numinlets" : 2,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 548.0, 199.0, 99.0, 22.0 ],
													"text" : "view 10 foremost"
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-3",
													"maxclass" : "newobj",
													"numinlets" : 1,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 502.0, 89.0, 70.0, 22.0 ],
													"text" : "loadmess 0"
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-89",
													"maxclass" : "number",
													"numinlets" : 1,
													"numoutlets" : 2,
													"outlettype" : [ "", "bang" ],
													"parameter_enable" : 0,
													"patching_rect" : [ 502.0, 122.0, 50.0, 22.0 ]
												}

											}
, 											{
												"box" : 												{
													"fontname" : "Verdana",
													"fontsize" : 10.0,
													"id" : "obj-85",
													"maxclass" : "message",
													"numinlets" : 2,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 502.0, 153.0, 140.0, 21.0 ],
													"text" : "view $1 interface multibpf"
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-2",
													"maxclass" : "newobj",
													"numinlets" : 1,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 411.0, 149.0, 70.0, 22.0 ],
													"text" : "loadmess 0"
												}

											}
, 											{
												"box" : 												{
													"fontname" : "Verdana",
													"fontsize" : 10.0,
													"id" : "obj-47",
													"maxclass" : "message",
													"numinlets" : 2,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 389.791687000000024, 296.0, 126.0, 21.0 ],
													"text" : "view 3 visibleindices all"
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-46",
													"maxclass" : "number",
													"numinlets" : 1,
													"numoutlets" : 2,
													"outlettype" : [ "", "bang" ],
													"parameter_enable" : 0,
													"patching_rect" : [ 50.0, 102.0, 50.0, 22.0 ]
												}

											}
, 											{
												"box" : 												{
													"fontname" : "Verdana",
													"fontsize" : 10.0,
													"id" : "obj-41",
													"maxclass" : "message",
													"numinlets" : 2,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 50.0, 135.333327999999995, 127.0, 21.0 ],
													"text" : "view 3 visibleindices $1"
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-40",
													"maxclass" : "newobj",
													"numinlets" : 1,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 194.5, 91.0, 80.0, 22.0 ],
													"text" : "loadmess 0.5"
												}

											}
, 											{
												"box" : 												{
													"fontname" : "Arial",
													"fontsize" : 12.0,
													"format" : 6,
													"id" : "obj-19",
													"maxclass" : "flonum",
													"maximum" : 1.0,
													"minimum" : 0.0,
													"numinlets" : 1,
													"numoutlets" : 2,
													"outlettype" : [ "", "bang" ],
													"parameter_enable" : 0,
													"patching_rect" : [ 194.5, 131.0, 50.0, 22.0 ]
												}

											}
, 											{
												"box" : 												{
													"fontname" : "Arial",
													"fontsize" : 12.0,
													"id" : "obj-22",
													"maxclass" : "message",
													"numinlets" : 2,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 194.5, 168.0, 149.0, 22.0 ],
													"text" : "opacity $1"
												}

											}
, 											{
												"box" : 												{
													"bgcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
													"bgfillcolor_angle" : 270.0,
													"bgfillcolor_autogradient" : 0.79,
													"bgfillcolor_color" : [ 0.290196, 0.309804, 0.301961, 1.0 ],
													"bgfillcolor_color1" : [ 1.0, 1.0, 1.0, 1.0 ],
													"bgfillcolor_color2" : [ 0.685, 0.685, 0.685, 1.0 ],
													"bgfillcolor_proportion" : 0.39,
													"bgfillcolor_type" : "gradient",
													"fontname" : "Verdana",
													"fontsize" : 10.0,
													"gradient" : 0,
													"id" : "obj-44",
													"maxclass" : "message",
													"numinlets" : 2,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 411.0, 327.0, 156.0, 21.0 ],
													"text" : "view $1 layout superposed",
													"textcolor" : [ 0.0, 0.0, 0.0, 1.0 ]
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-18",
													"maxclass" : "number",
													"numinlets" : 1,
													"numoutlets" : 2,
													"outlettype" : [ "", "bang" ],
													"parameter_enable" : 0,
													"patching_rect" : [ 411.0, 191.0, 50.0, 22.0 ]
												}

											}
, 											{
												"box" : 												{
													"bgcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
													"bgfillcolor_angle" : 270.0,
													"bgfillcolor_autogradient" : 0.79,
													"bgfillcolor_color" : [ 0.290196, 0.309804, 0.301961, 1.0 ],
													"bgfillcolor_color1" : [ 1.0, 1.0, 1.0, 1.0 ],
													"bgfillcolor_color2" : [ 0.685, 0.685, 0.685, 1.0 ],
													"bgfillcolor_proportion" : 0.39,
													"bgfillcolor_type" : "gradient",
													"fontname" : "Verdana",
													"fontsize" : 10.0,
													"gradient" : 0,
													"id" : "obj-20",
													"maxclass" : "message",
													"numinlets" : 2,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 383.791687000000024, 248.0, 147.0, 21.0 ],
													"text" : "view $1 colormode rainbow",
													"textcolor" : [ 0.0, 0.0, 0.0, 1.0 ]
												}

											}
, 											{
												"box" : 												{
													"comment" : "",
													"id" : "obj-1",
													"index" : 1,
													"maxclass" : "outlet",
													"numinlets" : 1,
													"numoutlets" : 0,
													"patching_rect" : [ 161.513884999999988, 406.0, 30.0, 30.0 ]
												}

											}
 ],
										"lines" : [ 											{
												"patchline" : 												{
													"destination" : [ "obj-20", 0 ],
													"order" : 1,
													"source" : [ "obj-18", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-44", 0 ],
													"order" : 0,
													"source" : [ "obj-18", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-22", 0 ],
													"hidden" : 1,
													"source" : [ "obj-19", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-18", 0 ],
													"disabled" : 1,
													"source" : [ "obj-2", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-1", 0 ],
													"source" : [ "obj-20", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-1", 0 ],
													"source" : [ "obj-22", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-89", 0 ],
													"source" : [ "obj-3", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-19", 0 ],
													"source" : [ "obj-40", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-1", 0 ],
													"source" : [ "obj-41", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-1", 0 ],
													"source" : [ "obj-44", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-41", 0 ],
													"source" : [ "obj-46", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-1", 0 ],
													"source" : [ "obj-47", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-1", 0 ],
													"source" : [ "obj-5", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-3", 0 ],
													"source" : [ "obj-7", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-1", 0 ],
													"source" : [ "obj-85", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-85", 0 ],
													"source" : [ "obj-89", 0 ]
												}

											}
 ],
										"styles" : [ 											{
												"name" : "AudioStatus_Menu",
												"default" : 												{
													"bgfillcolor" : 													{
														"type" : "color",
														"color" : [ 0.294118, 0.313726, 0.337255, 1 ],
														"color1" : [ 0.454902, 0.462745, 0.482353, 0.0 ],
														"color2" : [ 0.290196, 0.309804, 0.301961, 1.0 ],
														"angle" : 270.0,
														"proportion" : 0.39,
														"autogradient" : 0
													}

												}
,
												"parentstyle" : "",
												"multi" : 0
											}
, 											{
												"name" : "newobjBlue-1",
												"default" : 												{
													"accentcolor" : [ 0.317647, 0.654902, 0.976471, 1.0 ]
												}
,
												"parentstyle" : "",
												"multi" : 0
											}
, 											{
												"name" : "newobjGreen-1",
												"default" : 												{
													"accentcolor" : [ 0.0, 0.533333, 0.168627, 1.0 ]
												}
,
												"parentstyle" : "",
												"multi" : 0
											}
, 											{
												"name" : "newobjYellow-1",
												"default" : 												{
													"accentcolor" : [ 0.82517, 0.78181, 0.059545, 1.0 ],
													"fontsize" : [ 12.059008 ]
												}
,
												"parentstyle" : "",
												"multi" : 0
											}
, 											{
												"name" : "numberGold-1",
												"default" : 												{
													"accentcolor" : [ 0.764706, 0.592157, 0.101961, 1.0 ]
												}
,
												"parentstyle" : "",
												"multi" : 0
											}
 ]
									}
,
									"patching_rect" : [ 167.199996999999996, 555.0, 116.0, 22.0 ],
									"saved_object_attributes" : 									{
										"description" : "",
										"digest" : "",
										"globalpatchername" : "",
										"tags" : ""
									}
,
									"text" : "p mubu-appearance"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-62",
									"maxclass" : "button",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "bang" ],
									"parameter_enable" : 0,
									"patching_rect" : [ 438.0, 294.0, 24.0, 24.0 ]
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-58",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 418.25, 327.0, 95.0, 22.0 ],
									"text" : "v session_name"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-56",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 3,
									"outlettype" : [ "bang", "bang", "bang" ],
									"patching_rect" : [ 318.0, 270.0, 219.5, 22.0 ],
									"text" : "t b b b"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-53",
									"maxclass" : "newobj",
									"numinlets" : 5,
									"numoutlets" : 4,
									"outlettype" : [ "int", "", "", "int" ],
									"patching_rect" : [ 518.5, 327.0, 94.0, 22.0 ],
									"text" : "counter"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-52",
									"maxclass" : "newobj",
									"numinlets" : 6,
									"numoutlets" : 6,
									"outlettype" : [ "", "", "", "", "", "" ],
									"patching_rect" : [ 70.0, 100.75, 187.0, 22.0 ],
									"text" : "route /path /save json aif /saveDb"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-45",
									"maxclass" : "newobj",
									"numinlets" : 3,
									"numoutlets" : 2,
									"outlettype" : [ "", "" ],
									"patching_rect" : [ 318.0, 383.043091000000004, 219.5, 22.0 ],
									"text" : "combine path filename 0"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-36",
									"maxclass" : "message",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 339.0, 527.0, 63.0, 22.0 ],
									"text" : "writeall $1"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-17",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 318.0, 327.0, 71.0, 22.0 ],
									"text" : "v save-path"
								}

							}
, 							{
								"box" : 								{
									"comment" : "",
									"id" : "obj-12",
									"index" : 1,
									"maxclass" : "inlet",
									"numinlets" : 0,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 70.0, 15.0, 30.0, 30.0 ]
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-16",
									"maxclass" : "message",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 102.099997999999999, 555.0, 45.0, 22.0 ],
									"text" : "readall"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-13",
									"maxclass" : "message",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 103.599997999999999, 584.0, 46.0, 22.0 ],
									"text" : "writeall"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-9",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 103.599997999999999, 654.0, 83.0, 22.0 ],
									"presentation" : 1,
									"presentation_rect" : [ 109.0, 14.0, 114.0, 22.0 ],
									"saved_object_attributes" : 									{
										"embed" : 0,
										"externalfiles" : 1,
										"parameter_enable" : 0,
										"parameter_mappable" : 0,
										"resamplefiles" : 0,
										"savegui" : 0,
										"snaprate" : 1000.0,
										"verbose" : 1
									}
,
									"text" : "mubu session"
								}

							}
, 							{
								"box" : 								{
									"attr" : "name",
									"id" : "obj-76",
									"maxclass" : "attrui",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 465.0, 87.0, 150.0, 22.0 ]
								}

							}
, 							{
								"box" : 								{
									"attr" : "savegui",
									"id" : "obj-80",
									"maxclass" : "attrui",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 103.599997999999999, 624.0, 150.0, 22.0 ]
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-81",
									"maxclass" : "message",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 256.600006000000008, 624.0, 50.0, 22.0 ],
									"text" : "view $1"
								}

							}
 ],
						"lines" : [ 							{
								"patchline" : 								{
									"destination" : [ "obj-56", 0 ],
									"source" : [ "obj-10", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-9", 0 ],
									"source" : [ "obj-11", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-52", 0 ],
									"source" : [ "obj-12", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-9", 0 ],
									"source" : [ "obj-13", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-4", 0 ],
									"source" : [ "obj-14", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-9", 0 ],
									"source" : [ "obj-16", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-18", 0 ],
									"order" : 0,
									"source" : [ "obj-17", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-45", 0 ],
									"order" : 1,
									"source" : [ "obj-17", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-19", 0 ],
									"source" : [ "obj-18", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-35", 0 ],
									"source" : [ "obj-2", 1 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-2", 0 ],
									"source" : [ "obj-20", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-26", 0 ],
									"source" : [ "obj-21", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-23", 0 ],
									"source" : [ "obj-22", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-52", 0 ],
									"source" : [ "obj-23", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-20", 0 ],
									"source" : [ "obj-24", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-2", 0 ],
									"source" : [ "obj-25", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-11", 0 ],
									"source" : [ "obj-26", 1 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-3", 0 ],
									"source" : [ "obj-26", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-71", 0 ],
									"source" : [ "obj-27", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-72", 0 ],
									"source" : [ "obj-28", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-19", 0 ],
									"source" : [ "obj-29", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-9", 0 ],
									"source" : [ "obj-3", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-16", 0 ],
									"source" : [ "obj-30", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-17", 0 ],
									"source" : [ "obj-33", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-9", 0 ],
									"source" : [ "obj-36", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-19", 0 ],
									"source" : [ "obj-37", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-37", 0 ],
									"source" : [ "obj-38", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-32", 0 ],
									"order" : 0,
									"source" : [ "obj-4", 1 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-63", 0 ],
									"order" : 1,
									"source" : [ "obj-4", 1 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-9", 0 ],
									"source" : [ "obj-40", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-54", 0 ],
									"source" : [ "obj-41", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-18", 0 ],
									"source" : [ "obj-43", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-2", 0 ],
									"source" : [ "obj-44", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-68", 0 ],
									"source" : [ "obj-45", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-9", 0 ],
									"source" : [ "obj-46", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-54", 1 ],
									"source" : [ "obj-47", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-46", 0 ],
									"source" : [ "obj-51", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-1", 0 ],
									"source" : [ "obj-52", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-50", 0 ],
									"source" : [ "obj-52", 2 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-57", 0 ],
									"source" : [ "obj-52", 3 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-60", 0 ],
									"source" : [ "obj-52", 4 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-8", 0 ],
									"source" : [ "obj-52", 1 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-45", 2 ],
									"source" : [ "obj-53", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-29", 0 ],
									"source" : [ "obj-54", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-41", 0 ],
									"source" : [ "obj-55", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-47", 0 ],
									"source" : [ "obj-55", 1 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-17", 0 ],
									"source" : [ "obj-56", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-53", 0 ],
									"source" : [ "obj-56", 2 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-58", 0 ],
									"source" : [ "obj-56", 1 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-45", 1 ],
									"source" : [ "obj-58", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-44", 0 ],
									"source" : [ "obj-59", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-17", 0 ],
									"source" : [ "obj-6", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-55", 0 ],
									"source" : [ "obj-61", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-58", 0 ],
									"source" : [ "obj-62", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-43", 0 ],
									"source" : [ "obj-64", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-27", 0 ],
									"source" : [ "obj-68", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-28", 0 ],
									"source" : [ "obj-68", 1 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-18", 0 ],
									"source" : [ "obj-7", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-36", 0 ],
									"source" : [ "obj-71", 2 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-38", 0 ],
									"source" : [ "obj-71", 1 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-41", 0 ],
									"source" : [ "obj-71", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-25", 0 ],
									"source" : [ "obj-72", 2 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-38", 1 ],
									"source" : [ "obj-72", 1 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-47", 0 ],
									"source" : [ "obj-72", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-9", 0 ],
									"source" : [ "obj-80", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-9", 0 ],
									"source" : [ "obj-81", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-40", 0 ],
									"order" : 0,
									"source" : [ "obj-9", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-42", 0 ],
									"order" : 1,
									"source" : [ "obj-9", 0 ]
								}

							}
 ],
						"styles" : [ 							{
								"name" : "AudioStatus_Menu",
								"default" : 								{
									"bgfillcolor" : 									{
										"type" : "color",
										"color" : [ 0.294118, 0.313726, 0.337255, 1 ],
										"color1" : [ 0.454902, 0.462745, 0.482353, 0.0 ],
										"color2" : [ 0.290196, 0.309804, 0.301961, 1.0 ],
										"angle" : 270.0,
										"proportion" : 0.39,
										"autogradient" : 0
									}

								}
,
								"parentstyle" : "",
								"multi" : 0
							}
, 							{
								"name" : "newobjBlue-1",
								"default" : 								{
									"accentcolor" : [ 0.317647, 0.654902, 0.976471, 1.0 ]
								}
,
								"parentstyle" : "",
								"multi" : 0
							}
, 							{
								"name" : "newobjGreen-1",
								"default" : 								{
									"accentcolor" : [ 0.0, 0.533333, 0.168627, 1.0 ]
								}
,
								"parentstyle" : "",
								"multi" : 0
							}
, 							{
								"name" : "newobjYellow-1",
								"default" : 								{
									"accentcolor" : [ 0.82517, 0.78181, 0.059545, 1.0 ],
									"fontsize" : [ 12.059008 ]
								}
,
								"parentstyle" : "",
								"multi" : 0
							}
, 							{
								"name" : "numberGold-1",
								"default" : 								{
									"accentcolor" : [ 0.764706, 0.592157, 0.101961, 1.0 ]
								}
,
								"parentstyle" : "",
								"multi" : 0
							}
 ]
					}
,
					"patching_rect" : [ 167.5, 1037.0, 77.0, 22.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 30.297297, 545.5, 77.0, 22.0 ],
					"saved_object_attributes" : 					{
						"description" : "",
						"digest" : "",
						"globalpatchername" : "",
						"tags" : ""
					}
,
					"text" : "p mubu-view"
				}

			}
, 			{
				"box" : 				{
					"fontsize" : 20.0,
					"id" : "obj-47",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 929.0, 45.000019000000002, 25.0, 29.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 98.0, 316.5, 30.0, 29.0 ],
					"text" : "7"
				}

			}
, 			{
				"box" : 				{
					"fontsize" : 20.0,
					"id" : "obj-45",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 925.0, 45.000019000000002, 33.0, 29.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 21.400901999999999, 500.0, 33.0, 29.0 ],
					"text" : "10"
				}

			}
, 			{
				"box" : 				{
					"fontsize" : 20.0,
					"id" : "obj-44",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 929.0, 45.000019000000002, 25.0, 29.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 14.5, 431.0, 30.0, 29.0 ],
					"text" : "9"
				}

			}
, 			{
				"box" : 				{
					"fontsize" : 20.0,
					"id" : "obj-43",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 929.0, 45.000019000000002, 25.0, 29.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 14.5, 406.0, 30.0, 29.0 ],
					"text" : "8"
				}

			}
, 			{
				"box" : 				{
					"fontsize" : 20.0,
					"id" : "obj-42",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 929.0, 45.000019000000002, 25.0, 29.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 24.0, 310.0, 30.0, 29.0 ],
					"text" : "6"
				}

			}
, 			{
				"box" : 				{
					"fontsize" : 20.0,
					"id" : "obj-41",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 929.0, 45.000019000000002, 25.0, 29.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 24.0, 281.5, 30.0, 29.0 ],
					"text" : "5"
				}

			}
, 			{
				"box" : 				{
					"fontsize" : 20.0,
					"id" : "obj-40",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 929.0, 45.000019000000002, 25.0, 29.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 24.0, 253.5, 30.0, 29.0 ],
					"text" : "4"
				}

			}
, 			{
				"box" : 				{
					"fontsize" : 20.0,
					"id" : "obj-37",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 929.0, 45.000019000000002, 25.0, 29.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 20.202703, 184.999985000000009, 30.0, 29.0 ],
					"text" : "3"
				}

			}
, 			{
				"box" : 				{
					"fontsize" : 20.0,
					"id" : "obj-33",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 929.0, 45.000019000000002, 25.0, 29.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 24.0, 97.999984999999995, 30.0, 29.0 ],
					"text" : "2"
				}

			}
, 			{
				"box" : 				{
					"fontsize" : 20.0,
					"id" : "obj-31",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 929.0, 45.000019000000002, 25.0, 29.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 24.0, 72.999984999999995, 30.0, 29.0 ],
					"text" : "1"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-14",
					"maxclass" : "button",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "bang" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 34.0, -18.0, 24.0, 24.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 30.297297, 577.0, 24.0, 24.0 ]
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-7",
					"maxclass" : "ezdac~",
					"numinlets" : 2,
					"numoutlets" : 0,
					"patching_rect" : [ 244.0, 43.500019000000002, 45.0, 45.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 41.900902000000002, 316.5, 45.0, 45.0 ]
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-96",
					"maxclass" : "newobj",
					"numinlets" : 0,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 596.0, 569.0, 131.0, 22.0 ],
					"text" : "r db.capture.inputMixer"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-97",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 596.0, 597.0, 68.0, 22.0 ],
					"text" : "Input Mixer"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-98",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 596.0, 628.0, 35.0, 22.0 ],
					"text" : "open"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-99",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 596.0, 658.0, 51.0, 22.0 ],
					"text" : "pcontrol"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-100",
					"maxclass" : "newobj",
					"numinlets" : 3,
					"numoutlets" : 3,
					"outlettype" : [ "signal", "signal", "" ],
					"patching_rect" : [ 596.0, 689.0, 106.0, 22.0 ],
					"text" : "db.inputMixer-eds"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-118",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 626.166687000000024, 717.0, 142.0, 22.0 ],
					"text" : "send~ db.audioCapture-r"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-117",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 597.0, 746.0, 140.0, 22.0 ],
					"text" : "send~ db.audioCapture-l"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-83",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 596.0, 528.0, 133.0, 22.0 ],
					"text" : "s db.capture.inputMixer"
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 0.2, 0.2, 0.2, 0.1 ],
					"id" : "obj-82",
					"maxclass" : "button",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "bang" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 596.0, 491.333344000000011, 24.0, 24.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 112.900902000000002, 316.5, 24.0, 24.0 ],
					"varname" : "audioMixerSet"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-78",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 680.5, 689.0, 81.0, 20.0 ],
					"text" : "audio mixer:",
					"textjustification" : 2,
					"varname" : "audioMixerLabel"
				}

			}
, 			{
				"box" : 				{
					"args" : [ "session" ],
					"bgmode" : 0,
					"border" : 0,
					"clickthrough" : 0,
					"enablehscroll" : 0,
					"enablevscroll" : 0,
					"id" : "obj-32",
					"lockeddragscroll" : 0,
					"maxclass" : "bpatcher",
					"name" : "d.db.sc.capture-v3.maxpat",
					"numinlets" : 1,
					"numoutlets" : 0,
					"offset" : [ 0.0, 0.0 ],
					"patching_rect" : [ 33.0, 31.500019000000002, 181.0, 116.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 98.0, 365.75, 191.599106000000006, 131.0 ],
					"varname" : "d.db.metadata[1]",
					"viewvisibility" : 1
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-38",
					"maxclass" : "newobj",
					"numinlets" : 0,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 551.0, 54.666668000000001, 81.0, 22.0 ],
					"text" : "r qc.loadGate"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-39",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 551.0, 92.0, 32.0, 22.0 ],
					"text" : "gate"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-12",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 3,
					"outlettype" : [ "", "", "" ],
					"patching_rect" : [ 442.0, 113.0, 97.0, 22.0 ],
					"restore" : [ 57118 ],
					"saved_object_attributes" : 					{
						"parameter_enable" : 0,
						"parameter_mappable" : 0
					}
,
					"text" : "pattr receivePort",
					"varname" : "receivePort"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-36",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "int" ],
					"patching_rect" : [ 742.0, 200.0, 29.5, 22.0 ],
					"text" : "!- 1"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-35",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "int", "int" ],
					"patching_rect" : [ 655.0, 163.0, 29.5, 22.0 ],
					"text" : "t i i"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-34",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 742.0, 228.0, 61.0, 22.0 ],
					"text" : "hidden $1"
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 0.901961, 0.901961, 0.901961, 1.0 ],
					"checkedcolor" : [ 0.996078, 0.0, 0.392157, 1.0 ],
					"id" : "obj-29",
					"maxclass" : "toggle",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "int" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 655.0, 135.374985000000009, 24.0, 24.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 126.099097999999998, 101.499984999999995, 22.0, 22.0 ],
					"uncheckedcolor" : [ 0.811765, 0.811765, 0.811765, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-24",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 655.0, 242.0, 32.0, 22.0 ],
					"text" : "gate"
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 0.301961, 0.301961, 0.301961, 1.0 ],
					"bgcolor2" : [ 0.301961, 0.301961, 0.301961, 1.0 ],
					"bgfillcolor_angle" : 270.0,
					"bgfillcolor_autogradient" : 0.0,
					"bgfillcolor_color" : [ 0.847059, 0.847059, 0.847059, 1.0 ],
					"bgfillcolor_color1" : [ 0.301961, 0.301961, 0.301961, 1.0 ],
					"bgfillcolor_color2" : [ 0.2, 0.2, 0.2, 1.0 ],
					"bgfillcolor_proportion" : 0.5,
					"bgfillcolor_type" : "color",
					"gradient" : 1,
					"hidden" : 1,
					"id" : "obj-21",
					"linecount" : 2,
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 656.0, 289.0, 169.0, 35.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 41.900902000000002, 123.499984999999995, 246.198195999999996, 22.0 ],
					"text" : "/pyr 2.740707 40.306126 -88.166931",
					"textcolor" : [ 0.0, 0.0, 0.0, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-94",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 420.791687000000024, 260.0, 96.0, 22.0 ],
					"text" : "s sc.controlInput"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-90",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 420.791687000000024, 187.0, 46.0, 22.0 ],
					"text" : "port $1"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-86",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 420.791687000000024, 214.0, 103.0, 22.0 ],
					"text" : "udpreceive 57118"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-53",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 420.791687000000024, 163.0, 54.0, 22.0 ],
					"text" : "deferlow"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-62",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 420.791687000000024, 43.327708999999999, 98.0, 22.0 ],
					"text" : "loadmess 57118"
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 0.2, 0.2, 0.2, 0.1 ],
					"id" : "obj-56",
					"maxclass" : "number",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "bang" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 420.791687000000024, 71.0, 50.0, 22.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 150.099106000000006, 76.499984999999995, 50.0, 22.0 ],
					"textcolor" : [ 0.0, 0.0, 0.0, 1.0 ],
					"varname" : "receiveSet"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-10",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 568.208312999999976, 135.374985000000009, 81.0, 20.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 41.900902000000002, 101.499984999999995, 81.0, 20.0 ],
					"text" : "data monitor:",
					"textjustification" : 2
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-30",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 414.791687000000024, 19.124991999999999, 104.0, 20.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 41.900902000000002, 76.499984999999995, 101.0, 20.0 ],
					"text" : "data receive port:",
					"textjustification" : 2
				}

			}
, 			{
				"box" : 				{
					"bgmode" : 0,
					"border" : 0,
					"clickthrough" : 0,
					"enablehscroll" : 0,
					"enablevscroll" : 0,
					"id" : "obj-25",
					"lockeddragscroll" : 0,
					"maxclass" : "bpatcher",
					"name" : "d.db.metadata.maxpat",
					"numinlets" : 0,
					"numoutlets" : 0,
					"offset" : [ 0.0, 0.0 ],
					"patching_rect" : [ 33.0, 237.0, 326.0, 85.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 38.0, 253.5, 326.0, 57.0 ],
					"varname" : "d.db.metadata",
					"viewvisibility" : 1
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-8",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 31.0, 206.0, 150.0, 20.0 ],
					"text" : "METADATA"
				}

			}
, 			{
				"box" : 				{
					"angle" : 270.0,
					"bgcolor" : [ 0.2, 0.2, 0.2, 0.0 ],
					"border" : 2,
					"bordercolor" : [ 0.062745, 0.729412, 0.815686, 1.0 ],
					"id" : "obj-55",
					"maxclass" : "panel",
					"mode" : 0,
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 1018.5, 69.500038000000004, 128.0, 128.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 14.5, 500.0, 283.0, 36.0 ],
					"proportion" : 0.5
				}

			}
, 			{
				"box" : 				{
					"angle" : 270.0,
					"bgcolor" : [ 0.2, 0.2, 0.2, 0.0 ],
					"border" : 2,
					"bordercolor" : [ 0.062745, 0.729412, 0.815686, 1.0 ],
					"id" : "obj-54",
					"maxclass" : "panel",
					"mode" : 0,
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 976.5, 98.000015000000005, 128.0, 128.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 14.5, 370.5, 283.0, 126.25 ],
					"proportion" : 0.5
				}

			}
, 			{
				"box" : 				{
					"angle" : 270.0,
					"bgcolor" : [ 0.2, 0.2, 0.2, 0.0 ],
					"border" : 2,
					"bordercolor" : [ 0.062745, 0.729412, 0.815686, 1.0 ],
					"id" : "obj-52",
					"maxclass" : "panel",
					"mode" : 0,
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 995.5, 87.500038000000004, 128.0, 128.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 14.5, 67.999984999999995, 283.0, 299.0 ],
					"proportion" : 0.5
				}

			}
, 			{
				"box" : 				{
					"fontface" : 1,
					"fontsize" : 23.0,
					"id" : "obj-50",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 410.5, -64.0, 190.0, 32.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 51.900902000000002, 5.0, 213.0, 32.0 ],
					"text" : "session capture "
				}

			}
, 			{
				"box" : 				{
					"attr" : "buffername",
					"id" : "obj-3",
					"maxclass" : "attrui",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 214.0, 644.0, 204.0, 22.0 ]
				}

			}
 ],
		"lines" : [ 			{
				"patchline" : 				{
					"destination" : [ "obj-117", 0 ],
					"source" : [ "obj-100", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-118", 0 ],
					"source" : [ "obj-100", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-39", 1 ],
					"midpoints" : [ 451.5, 145.0, 542.5, 145.0, 542.5, 81.0, 573.5, 81.0 ],
					"source" : [ "obj-12", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-22", 0 ],
					"source" : [ "obj-13", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-9", 0 ],
					"source" : [ "obj-14", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-21", 1 ],
					"source" : [ "obj-24", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-51", 0 ],
					"source" : [ "obj-26", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-26", 0 ],
					"source" : [ "obj-27", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-51", 0 ],
					"source" : [ "obj-28", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-35", 0 ],
					"source" : [ "obj-29", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-124", 0 ],
					"source" : [ "obj-3", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-21", 0 ],
					"source" : [ "obj-34", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-24", 0 ],
					"source" : [ "obj-35", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-36", 0 ],
					"midpoints" : [ 675.0, 192.0, 751.5, 192.0 ],
					"source" : [ "obj-35", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-34", 0 ],
					"source" : [ "obj-36", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-39", 0 ],
					"source" : [ "obj-38", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-56", 0 ],
					"midpoints" : [ 560.5, 154.0, 406.0, 154.0, 406.0, 66.0, 430.291687000000024, 66.0 ],
					"source" : [ "obj-39", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-6", 0 ],
					"source" : [ "obj-4", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-49", 0 ],
					"source" : [ "obj-46", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-28", 0 ],
					"source" : [ "obj-49", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-66", 0 ],
					"source" : [ "obj-51", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-90", 0 ],
					"source" : [ "obj-53", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-12", 0 ],
					"order" : 0,
					"source" : [ "obj-56", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-53", 0 ],
					"order" : 1,
					"source" : [ "obj-56", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-64", 0 ],
					"source" : [ "obj-57", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-124", 1 ],
					"source" : [ "obj-6", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-3", 0 ],
					"source" : [ "obj-6", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-56", 0 ],
					"source" : [ "obj-62", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-13", 0 ],
					"source" : [ "obj-66", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-71", 0 ],
					"source" : [ "obj-70", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-51", 0 ],
					"source" : [ "obj-71", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-83", 0 ],
					"source" : [ "obj-82", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-24", 1 ],
					"order" : 0,
					"source" : [ "obj-86", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-94", 0 ],
					"midpoints" : [ 430.291687000000024, 250.5, 430.291687000000024, 250.5 ],
					"order" : 1,
					"source" : [ "obj-86", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-32", 0 ],
					"source" : [ "obj-9", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-86", 0 ],
					"source" : [ "obj-90", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-97", 0 ],
					"source" : [ "obj-96", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-98", 0 ],
					"source" : [ "obj-97", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-99", 0 ],
					"source" : [ "obj-98", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-100", 0 ],
					"source" : [ "obj-99", 0 ]
				}

			}
 ],
		"parameters" : 		{
			"obj-100::obj-12::obj-56::obj-1" : [ "live.gain~[34]", "1", 0 ],
			"obj-100::obj-12::obj-56::obj-2" : [ "live.text[65]", "live.text", 0 ],
			"obj-100::obj-12::obj-56::obj-3" : [ "live.text[66]", "live.text", 0 ],
			"obj-100::obj-12::obj-57::obj-1" : [ "live.gain~[1]", "1", 0 ],
			"obj-100::obj-12::obj-57::obj-2" : [ "live.text[1]", "live.text", 0 ],
			"obj-100::obj-12::obj-57::obj-3" : [ "live.text[2]", "live.text", 0 ],
			"obj-100::obj-12::obj-58::obj-1" : [ "live.gain~[2]", "1", 0 ],
			"obj-100::obj-12::obj-58::obj-2" : [ "live.text[4]", "live.text", 0 ],
			"obj-100::obj-12::obj-58::obj-3" : [ "live.text[3]", "live.text", 0 ],
			"obj-100::obj-12::obj-59::obj-1" : [ "live.gain~[3]", "1", 0 ],
			"obj-100::obj-12::obj-59::obj-2" : [ "live.text[6]", "live.text", 0 ],
			"obj-100::obj-12::obj-59::obj-3" : [ "live.text[5]", "live.text", 0 ],
			"obj-100::obj-12::obj-60::obj-1" : [ "live.gain~[7]", "1", 0 ],
			"obj-100::obj-12::obj-60::obj-2" : [ "live.text[14]", "live.text", 0 ],
			"obj-100::obj-12::obj-60::obj-3" : [ "live.text[13]", "live.text", 0 ],
			"obj-100::obj-12::obj-61::obj-1" : [ "live.gain~[6]", "1", 0 ],
			"obj-100::obj-12::obj-61::obj-2" : [ "live.text[11]", "live.text", 0 ],
			"obj-100::obj-12::obj-61::obj-3" : [ "live.text[12]", "live.text", 0 ],
			"obj-100::obj-12::obj-62::obj-1" : [ "live.gain~[5]", "1", 0 ],
			"obj-100::obj-12::obj-62::obj-2" : [ "live.text[9]", "live.text", 0 ],
			"obj-100::obj-12::obj-62::obj-3" : [ "live.text[10]", "live.text", 0 ],
			"obj-100::obj-12::obj-63::obj-1" : [ "live.gain~[4]", "1", 0 ],
			"obj-100::obj-12::obj-63::obj-2" : [ "live.text[7]", "live.text", 0 ],
			"obj-100::obj-12::obj-63::obj-3" : [ "live.text[8]", "live.text", 0 ],
			"obj-100::obj-12::obj-64::obj-1" : [ "live.gain~[15]", "1", 0 ],
			"obj-100::obj-12::obj-64::obj-2" : [ "live.text[30]", "live.text", 0 ],
			"obj-100::obj-12::obj-64::obj-3" : [ "live.text[29]", "live.text", 0 ],
			"obj-100::obj-12::obj-65::obj-1" : [ "live.gain~[14]", "1", 0 ],
			"obj-100::obj-12::obj-65::obj-2" : [ "live.text[27]", "live.text", 0 ],
			"obj-100::obj-12::obj-65::obj-3" : [ "live.text[28]", "live.text", 0 ],
			"obj-100::obj-12::obj-66::obj-1" : [ "live.gain~[13]", "1", 0 ],
			"obj-100::obj-12::obj-66::obj-2" : [ "live.text[25]", "live.text", 0 ],
			"obj-100::obj-12::obj-66::obj-3" : [ "live.text[26]", "live.text", 0 ],
			"obj-100::obj-12::obj-67::obj-1" : [ "live.gain~[12]", "1", 0 ],
			"obj-100::obj-12::obj-67::obj-2" : [ "live.text[23]", "live.text", 0 ],
			"obj-100::obj-12::obj-67::obj-3" : [ "live.text[24]", "live.text", 0 ],
			"obj-100::obj-12::obj-68::obj-1" : [ "live.gain~[11]", "1", 0 ],
			"obj-100::obj-12::obj-68::obj-2" : [ "live.text[22]", "live.text", 0 ],
			"obj-100::obj-12::obj-68::obj-3" : [ "live.text[21]", "live.text", 0 ],
			"obj-100::obj-12::obj-69::obj-1" : [ "live.gain~[10]", "1", 0 ],
			"obj-100::obj-12::obj-69::obj-2" : [ "live.text[19]", "live.text", 0 ],
			"obj-100::obj-12::obj-69::obj-3" : [ "live.text[20]", "live.text", 0 ],
			"obj-100::obj-12::obj-70::obj-1" : [ "live.gain~[9]", "1", 0 ],
			"obj-100::obj-12::obj-70::obj-2" : [ "live.text[17]", "live.text", 0 ],
			"obj-100::obj-12::obj-70::obj-3" : [ "live.text[18]", "live.text", 0 ],
			"obj-100::obj-12::obj-71::obj-1" : [ "live.gain~[8]", "1", 0 ],
			"obj-100::obj-12::obj-71::obj-2" : [ "live.text[15]", "live.text", 0 ],
			"obj-100::obj-12::obj-71::obj-3" : [ "live.text[16]", "live.text", 0 ],
			"obj-100::obj-13::obj-56::obj-1" : [ "live.gain~[16]", "1", 0 ],
			"obj-100::obj-13::obj-56::obj-2" : [ "live.text[31]", "live.text", 0 ],
			"obj-100::obj-13::obj-56::obj-3" : [ "live.text[32]", "live.text", 0 ],
			"obj-100::obj-13::obj-57::obj-1" : [ "live.gain~[17]", "1", 0 ],
			"obj-100::obj-13::obj-57::obj-2" : [ "live.text[33]", "live.text", 0 ],
			"obj-100::obj-13::obj-57::obj-3" : [ "live.text[34]", "live.text", 0 ],
			"obj-100::obj-13::obj-58::obj-1" : [ "live.gain~[18]", "1", 0 ],
			"obj-100::obj-13::obj-58::obj-2" : [ "live.text[36]", "live.text", 0 ],
			"obj-100::obj-13::obj-58::obj-3" : [ "live.text[35]", "live.text", 0 ],
			"obj-100::obj-13::obj-59::obj-1" : [ "live.gain~[19]", "1", 0 ],
			"obj-100::obj-13::obj-59::obj-2" : [ "live.text[37]", "live.text", 0 ],
			"obj-100::obj-13::obj-59::obj-3" : [ "live.text[38]", "live.text", 0 ],
			"obj-100::obj-13::obj-60::obj-1" : [ "live.gain~[23]", "1", 0 ],
			"obj-100::obj-13::obj-60::obj-2" : [ "live.text[46]", "live.text", 0 ],
			"obj-100::obj-13::obj-60::obj-3" : [ "live.text[45]", "live.text", 0 ],
			"obj-100::obj-13::obj-61::obj-1" : [ "live.gain~[22]", "1", 0 ],
			"obj-100::obj-13::obj-61::obj-2" : [ "live.text[43]", "live.text", 0 ],
			"obj-100::obj-13::obj-61::obj-3" : [ "live.text[44]", "live.text", 0 ],
			"obj-100::obj-13::obj-62::obj-1" : [ "live.gain~[21]", "1", 0 ],
			"obj-100::obj-13::obj-62::obj-2" : [ "live.text[41]", "live.text", 0 ],
			"obj-100::obj-13::obj-62::obj-3" : [ "live.text[42]", "live.text", 0 ],
			"obj-100::obj-13::obj-63::obj-1" : [ "live.gain~[20]", "1", 0 ],
			"obj-100::obj-13::obj-63::obj-2" : [ "live.text[39]", "live.text", 0 ],
			"obj-100::obj-13::obj-63::obj-3" : [ "live.text[40]", "live.text", 0 ],
			"obj-100::obj-13::obj-64::obj-1" : [ "live.gain~[36]", "1", 0 ],
			"obj-100::obj-13::obj-64::obj-2" : [ "live.text[53]", "live.text", 0 ],
			"obj-100::obj-13::obj-64::obj-3" : [ "live.text[75]", "live.text", 0 ],
			"obj-100::obj-13::obj-65::obj-1" : [ "live.gain~[29]", "1", 0 ],
			"obj-100::obj-13::obj-65::obj-2" : [ "live.text[74]", "live.text", 0 ],
			"obj-100::obj-13::obj-65::obj-3" : [ "live.text[52]", "live.text", 0 ],
			"obj-100::obj-13::obj-66::obj-1" : [ "live.gain~[28]", "1", 0 ],
			"obj-100::obj-13::obj-66::obj-2" : [ "live.text[50]", "live.text", 0 ],
			"obj-100::obj-13::obj-66::obj-3" : [ "live.text[51]", "live.text", 0 ],
			"obj-100::obj-13::obj-67::obj-1" : [ "live.gain~[27]", "1", 0 ],
			"obj-100::obj-13::obj-67::obj-2" : [ "live.text[73]", "live.text", 0 ],
			"obj-100::obj-13::obj-67::obj-3" : [ "live.text[49]", "live.text", 0 ],
			"obj-100::obj-13::obj-68::obj-1" : [ "live.gain~[26]", "1", 0 ],
			"obj-100::obj-13::obj-68::obj-2" : [ "live.text[71]", "live.text", 0 ],
			"obj-100::obj-13::obj-68::obj-3" : [ "live.text[72]", "live.text", 0 ],
			"obj-100::obj-13::obj-69::obj-1" : [ "live.gain~[35]", "1", 0 ],
			"obj-100::obj-13::obj-69::obj-2" : [ "live.text[69]", "live.text", 0 ],
			"obj-100::obj-13::obj-69::obj-3" : [ "live.text[70]", "live.text", 0 ],
			"obj-100::obj-13::obj-70::obj-1" : [ "live.gain~[25]", "1", 0 ],
			"obj-100::obj-13::obj-70::obj-2" : [ "live.text[67]", "live.text", 0 ],
			"obj-100::obj-13::obj-70::obj-3" : [ "live.text[68]", "live.text", 0 ],
			"obj-100::obj-13::obj-71::obj-1" : [ "live.gain~[24]", "1", 0 ],
			"obj-100::obj-13::obj-71::obj-2" : [ "live.text[47]", "live.text", 0 ],
			"obj-100::obj-13::obj-71::obj-3" : [ "live.text[48]", "live.text", 0 ],
			"obj-100::obj-51" : [ "live.gain~[99]", "Input", 0 ],
			"parameterbanks" : 			{

			}
,
			"parameter_overrides" : 			{
				"obj-100::obj-12::obj-57::obj-1" : 				{
					"parameter_longname" : "live.gain~[1]"
				}
,
				"obj-100::obj-12::obj-57::obj-2" : 				{
					"parameter_longname" : "live.text[1]"
				}
,
				"obj-100::obj-12::obj-57::obj-3" : 				{
					"parameter_longname" : "live.text[2]"
				}
,
				"obj-100::obj-12::obj-58::obj-1" : 				{
					"parameter_longname" : "live.gain~[2]"
				}
,
				"obj-100::obj-12::obj-58::obj-2" : 				{
					"parameter_longname" : "live.text[4]"
				}
,
				"obj-100::obj-12::obj-58::obj-3" : 				{
					"parameter_longname" : "live.text[3]"
				}
,
				"obj-100::obj-12::obj-59::obj-1" : 				{
					"parameter_longname" : "live.gain~[3]"
				}
,
				"obj-100::obj-12::obj-59::obj-2" : 				{
					"parameter_longname" : "live.text[6]"
				}
,
				"obj-100::obj-12::obj-59::obj-3" : 				{
					"parameter_longname" : "live.text[5]"
				}
,
				"obj-100::obj-12::obj-60::obj-1" : 				{
					"parameter_longname" : "live.gain~[7]"
				}
,
				"obj-100::obj-12::obj-60::obj-2" : 				{
					"parameter_longname" : "live.text[14]"
				}
,
				"obj-100::obj-12::obj-60::obj-3" : 				{
					"parameter_longname" : "live.text[13]"
				}
,
				"obj-100::obj-12::obj-61::obj-1" : 				{
					"parameter_longname" : "live.gain~[6]"
				}
,
				"obj-100::obj-12::obj-61::obj-2" : 				{
					"parameter_longname" : "live.text[11]"
				}
,
				"obj-100::obj-12::obj-61::obj-3" : 				{
					"parameter_longname" : "live.text[12]"
				}
,
				"obj-100::obj-12::obj-62::obj-1" : 				{
					"parameter_longname" : "live.gain~[5]"
				}
,
				"obj-100::obj-12::obj-62::obj-2" : 				{
					"parameter_longname" : "live.text[9]"
				}
,
				"obj-100::obj-12::obj-62::obj-3" : 				{
					"parameter_longname" : "live.text[10]"
				}
,
				"obj-100::obj-12::obj-63::obj-1" : 				{
					"parameter_longname" : "live.gain~[4]"
				}
,
				"obj-100::obj-12::obj-63::obj-2" : 				{
					"parameter_longname" : "live.text[7]"
				}
,
				"obj-100::obj-12::obj-63::obj-3" : 				{
					"parameter_longname" : "live.text[8]"
				}
,
				"obj-100::obj-12::obj-64::obj-1" : 				{
					"parameter_longname" : "live.gain~[15]"
				}
,
				"obj-100::obj-12::obj-64::obj-2" : 				{
					"parameter_longname" : "live.text[30]"
				}
,
				"obj-100::obj-12::obj-64::obj-3" : 				{
					"parameter_longname" : "live.text[29]"
				}
,
				"obj-100::obj-12::obj-65::obj-1" : 				{
					"parameter_longname" : "live.gain~[14]"
				}
,
				"obj-100::obj-12::obj-65::obj-2" : 				{
					"parameter_longname" : "live.text[27]"
				}
,
				"obj-100::obj-12::obj-65::obj-3" : 				{
					"parameter_longname" : "live.text[28]"
				}
,
				"obj-100::obj-12::obj-66::obj-1" : 				{
					"parameter_longname" : "live.gain~[13]"
				}
,
				"obj-100::obj-12::obj-66::obj-2" : 				{
					"parameter_longname" : "live.text[25]"
				}
,
				"obj-100::obj-12::obj-66::obj-3" : 				{
					"parameter_longname" : "live.text[26]"
				}
,
				"obj-100::obj-12::obj-67::obj-1" : 				{
					"parameter_longname" : "live.gain~[12]"
				}
,
				"obj-100::obj-12::obj-67::obj-2" : 				{
					"parameter_longname" : "live.text[23]"
				}
,
				"obj-100::obj-12::obj-67::obj-3" : 				{
					"parameter_longname" : "live.text[24]"
				}
,
				"obj-100::obj-12::obj-68::obj-1" : 				{
					"parameter_longname" : "live.gain~[11]"
				}
,
				"obj-100::obj-12::obj-68::obj-2" : 				{
					"parameter_longname" : "live.text[22]"
				}
,
				"obj-100::obj-12::obj-68::obj-3" : 				{
					"parameter_longname" : "live.text[21]"
				}
,
				"obj-100::obj-12::obj-69::obj-1" : 				{
					"parameter_longname" : "live.gain~[10]"
				}
,
				"obj-100::obj-12::obj-69::obj-2" : 				{
					"parameter_longname" : "live.text[19]"
				}
,
				"obj-100::obj-12::obj-69::obj-3" : 				{
					"parameter_longname" : "live.text[20]"
				}
,
				"obj-100::obj-12::obj-70::obj-1" : 				{
					"parameter_longname" : "live.gain~[9]"
				}
,
				"obj-100::obj-12::obj-70::obj-2" : 				{
					"parameter_longname" : "live.text[17]"
				}
,
				"obj-100::obj-12::obj-70::obj-3" : 				{
					"parameter_longname" : "live.text[18]"
				}
,
				"obj-100::obj-12::obj-71::obj-1" : 				{
					"parameter_longname" : "live.gain~[8]"
				}
,
				"obj-100::obj-12::obj-71::obj-2" : 				{
					"parameter_longname" : "live.text[15]"
				}
,
				"obj-100::obj-12::obj-71::obj-3" : 				{
					"parameter_longname" : "live.text[16]"
				}
,
				"obj-100::obj-13::obj-56::obj-1" : 				{
					"parameter_longname" : "live.gain~[16]"
				}
,
				"obj-100::obj-13::obj-56::obj-2" : 				{
					"parameter_longname" : "live.text[31]"
				}
,
				"obj-100::obj-13::obj-56::obj-3" : 				{
					"parameter_longname" : "live.text[32]"
				}
,
				"obj-100::obj-13::obj-57::obj-1" : 				{
					"parameter_longname" : "live.gain~[17]"
				}
,
				"obj-100::obj-13::obj-57::obj-2" : 				{
					"parameter_longname" : "live.text[33]"
				}
,
				"obj-100::obj-13::obj-57::obj-3" : 				{
					"parameter_longname" : "live.text[34]"
				}
,
				"obj-100::obj-13::obj-58::obj-1" : 				{
					"parameter_longname" : "live.gain~[18]"
				}
,
				"obj-100::obj-13::obj-58::obj-2" : 				{
					"parameter_longname" : "live.text[36]"
				}
,
				"obj-100::obj-13::obj-58::obj-3" : 				{
					"parameter_longname" : "live.text[35]"
				}
,
				"obj-100::obj-13::obj-59::obj-1" : 				{
					"parameter_longname" : "live.gain~[19]"
				}
,
				"obj-100::obj-13::obj-59::obj-2" : 				{
					"parameter_longname" : "live.text[37]"
				}
,
				"obj-100::obj-13::obj-59::obj-3" : 				{
					"parameter_longname" : "live.text[38]"
				}
,
				"obj-100::obj-13::obj-60::obj-1" : 				{
					"parameter_longname" : "live.gain~[23]"
				}
,
				"obj-100::obj-13::obj-60::obj-2" : 				{
					"parameter_longname" : "live.text[46]"
				}
,
				"obj-100::obj-13::obj-60::obj-3" : 				{
					"parameter_longname" : "live.text[45]"
				}
,
				"obj-100::obj-13::obj-61::obj-1" : 				{
					"parameter_longname" : "live.gain~[22]"
				}
,
				"obj-100::obj-13::obj-61::obj-2" : 				{
					"parameter_longname" : "live.text[43]"
				}
,
				"obj-100::obj-13::obj-61::obj-3" : 				{
					"parameter_longname" : "live.text[44]"
				}
,
				"obj-100::obj-13::obj-62::obj-1" : 				{
					"parameter_longname" : "live.gain~[21]"
				}
,
				"obj-100::obj-13::obj-62::obj-2" : 				{
					"parameter_longname" : "live.text[41]"
				}
,
				"obj-100::obj-13::obj-62::obj-3" : 				{
					"parameter_longname" : "live.text[42]"
				}
,
				"obj-100::obj-13::obj-63::obj-1" : 				{
					"parameter_longname" : "live.gain~[20]"
				}
,
				"obj-100::obj-13::obj-63::obj-2" : 				{
					"parameter_longname" : "live.text[39]"
				}
,
				"obj-100::obj-13::obj-63::obj-3" : 				{
					"parameter_longname" : "live.text[40]"
				}
,
				"obj-100::obj-13::obj-64::obj-1" : 				{
					"parameter_longname" : "live.gain~[36]"
				}
,
				"obj-100::obj-13::obj-64::obj-2" : 				{
					"parameter_longname" : "live.text[53]"
				}
,
				"obj-100::obj-13::obj-64::obj-3" : 				{
					"parameter_longname" : "live.text[75]"
				}
,
				"obj-100::obj-13::obj-65::obj-1" : 				{
					"parameter_longname" : "live.gain~[29]"
				}
,
				"obj-100::obj-13::obj-65::obj-2" : 				{
					"parameter_longname" : "live.text[74]"
				}
,
				"obj-100::obj-13::obj-65::obj-3" : 				{
					"parameter_longname" : "live.text[52]"
				}
,
				"obj-100::obj-13::obj-66::obj-1" : 				{
					"parameter_longname" : "live.gain~[28]"
				}
,
				"obj-100::obj-13::obj-66::obj-2" : 				{
					"parameter_longname" : "live.text[50]"
				}
,
				"obj-100::obj-13::obj-66::obj-3" : 				{
					"parameter_longname" : "live.text[51]"
				}
,
				"obj-100::obj-13::obj-67::obj-1" : 				{
					"parameter_longname" : "live.gain~[27]"
				}
,
				"obj-100::obj-13::obj-67::obj-2" : 				{
					"parameter_longname" : "live.text[73]"
				}
,
				"obj-100::obj-13::obj-67::obj-3" : 				{
					"parameter_longname" : "live.text[49]"
				}
,
				"obj-100::obj-13::obj-68::obj-1" : 				{
					"parameter_longname" : "live.gain~[26]"
				}
,
				"obj-100::obj-13::obj-68::obj-2" : 				{
					"parameter_longname" : "live.text[71]"
				}
,
				"obj-100::obj-13::obj-68::obj-3" : 				{
					"parameter_longname" : "live.text[72]"
				}
,
				"obj-100::obj-13::obj-69::obj-1" : 				{
					"parameter_longname" : "live.gain~[35]"
				}
,
				"obj-100::obj-13::obj-69::obj-2" : 				{
					"parameter_longname" : "live.text[69]"
				}
,
				"obj-100::obj-13::obj-69::obj-3" : 				{
					"parameter_longname" : "live.text[70]"
				}
,
				"obj-100::obj-13::obj-70::obj-1" : 				{
					"parameter_longname" : "live.gain~[25]"
				}
,
				"obj-100::obj-13::obj-70::obj-2" : 				{
					"parameter_longname" : "live.text[67]"
				}
,
				"obj-100::obj-13::obj-70::obj-3" : 				{
					"parameter_longname" : "live.text[68]"
				}
,
				"obj-100::obj-13::obj-71::obj-1" : 				{
					"parameter_longname" : "live.gain~[24]"
				}
,
				"obj-100::obj-13::obj-71::obj-2" : 				{
					"parameter_longname" : "live.text[47]"
				}
,
				"obj-100::obj-13::obj-71::obj-3" : 				{
					"parameter_longname" : "live.text[48]"
				}

			}
,
			"inherited_shortname" : 1
		}
,
		"dependency_cache" : [ 			{
				"name" : "d.db.metadata.maxpat",
				"bootpath" : "~/edis-performer-study/dev",
				"patcherrelativepath" : "./dev",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "dispersion.session_name.maxpat",
				"bootpath" : "~/edis-performer-study/dev",
				"patcherrelativepath" : "./dev",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "session_name.js",
				"bootpath" : "~/edis-performer-study/dev",
				"patcherrelativepath" : "./dev",
				"type" : "TEXT",
				"implicit" : 1
			}
, 			{
				"name" : "d.db.split.js",
				"bootpath" : "~/edis-performer-study/dev",
				"patcherrelativepath" : "./dev",
				"type" : "TEXT",
				"implicit" : 1
			}
, 			{
				"name" : "d.db.sc.capture-v3.maxpat",
				"bootpath" : "~/edis-performer-study/dev",
				"patcherrelativepath" : "./dev",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "d.db.direct-scripting-v3.maxpat",
				"bootpath" : "~/edis-performer-study/dev",
				"patcherrelativepath" : "./dev",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "db.defConstructor.maxpat",
				"bootpath" : "~/edis-performer-study/dev/instrumentDefiner",
				"patcherrelativepath" : "./dev/instrumentDefiner",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "defConstructor.js",
				"bootpath" : "~/edis-performer-study/dev/instrumentDefiner",
				"patcherrelativepath" : "./dev/instrumentDefiner",
				"type" : "TEXT",
				"implicit" : 1
			}
, 			{
				"name" : "d.db.directScripting-v3.js",
				"bootpath" : "~/edis-performer-study/dev",
				"patcherrelativepath" : "./dev",
				"type" : "TEXT",
				"implicit" : 1
			}
, 			{
				"name" : "d.db.mubu_audio-v3.maxpat",
				"bootpath" : "~/edis-performer-study/dev",
				"patcherrelativepath" : "./dev",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "db.inputMixer-eds.maxpat",
				"bootpath" : "~/edis-performer-study/dev/inputMixer",
				"patcherrelativepath" : "./dev/inputMixer",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "db.mixer.faders-eds.maxpat",
				"bootpath" : "~/edis-performer-study/dev/inputMixer",
				"patcherrelativepath" : "./dev/inputMixer",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "db.mixer.channel.maxpat",
				"bootpath" : "~/edis-performer-study/dev/inputMixer",
				"patcherrelativepath" : "./dev/inputMixer",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "mubu.mxo",
				"type" : "iLaX"
			}
 ],
		"autosave" : 0,
		"styles" : [ 			{
				"name" : "AudioStatus_Menu",
				"default" : 				{
					"bgfillcolor" : 					{
						"type" : "color",
						"color" : [ 0.294118, 0.313726, 0.337255, 1 ],
						"color1" : [ 0.454902, 0.462745, 0.482353, 0.0 ],
						"color2" : [ 0.290196, 0.309804, 0.301961, 1.0 ],
						"angle" : 270.0,
						"proportion" : 0.39,
						"autogradient" : 0
					}

				}
,
				"parentstyle" : "",
				"multi" : 0
			}
, 			{
				"name" : "Audiomix",
				"default" : 				{
					"bgfillcolor" : 					{
						"type" : "gradient",
						"color1" : [ 0.376471, 0.384314, 0.4, 1.0 ],
						"color2" : [ 0.290196, 0.309804, 0.301961, 1.0 ],
						"color" : [ 0.290196, 0.309804, 0.301961, 1.0 ],
						"angle" : 270.0,
						"proportion" : 0.39
					}

				}
,
				"parentstyle" : "",
				"multi" : 0
			}
, 			{
				"name" : "Default 11Bold Poletti",
				"default" : 				{
					"fontsize" : [ 11.0 ]
				}
,
				"parentstyle" : "",
				"multi" : 0
			}
, 			{
				"name" : "Default M4L",
				"default" : 				{
					"fontsize" : [ 11.0 ],
					"patchlinecolor" : [ 0.290196, 0.309804, 0.301961, 0.85 ],
					"fontname" : [ "Arial Bold" ]
				}
,
				"parentstyle" : "",
				"multi" : 0
			}
, 			{
				"name" : "Default M4L Poletti",
				"default" : 				{
					"fontsize" : [ 10.0 ],
					"patchlinecolor" : [ 0.290196, 0.309804, 0.301961, 0.85 ],
					"fontname" : [ "Arial Bold" ]
				}
,
				"parentstyle" : "",
				"multi" : 0
			}
, 			{
				"name" : "Default M4L Poletti-1",
				"default" : 				{
					"fontsize" : [ 11.0 ],
					"patchlinecolor" : [ 0.290196, 0.309804, 0.301961, 0.85 ],
					"fontname" : [ "Arial Bold" ]
				}
,
				"parentstyle" : "",
				"multi" : 0
			}
, 			{
				"name" : "Default M4L-1",
				"default" : 				{
					"fontsize" : [ 11.0 ],
					"fontname" : [ "Arial" ],
					"bgfillcolor" : 					{
						"type" : "gradient",
						"color1" : [ 0.376471, 0.384314, 0.4, 1.0 ],
						"color2" : [ 0.290196, 0.309804, 0.301961, 1.0 ],
						"color" : [ 0.290196, 0.309804, 0.301961, 1.0 ],
						"angle" : 270.0,
						"proportion" : 0.39
					}
,
					"fontface" : [ 1 ]
				}
,
				"parentstyle" : "",
				"multi" : 0
			}
, 			{
				"name" : "Default Max7 Poletti",
				"default" : 				{
					"bgfillcolor" : 					{
						"type" : "gradient",
						"color1" : [ 0.376471, 0.384314, 0.4, 1.0 ],
						"color2" : [ 0.290196, 0.309804, 0.301961, 1.0 ],
						"color" : [ 0.290196, 0.309804, 0.301961, 1.0 ],
						"angle" : 270.0,
						"proportion" : 0.39
					}

				}
,
				"parentstyle" : "",
				"multi" : 0
			}
, 			{
				"name" : "Luca",
				"default" : 				{
					"accentcolor" : [ 0.32549, 0.345098, 0.372549, 1.0 ],
					"elementcolor" : [ 0.786675, 0.801885, 0.845022, 1.0 ],
					"bgcolor" : [ 0.904179, 0.895477, 0.842975, 0.56 ],
					"fontname" : [ "Open Sans Semibold" ],
					"textcolor_inverse" : [ 0.239216, 0.254902, 0.278431, 1.0 ],
					"bgfillcolor" : 					{
						"type" : "gradient",
						"color" : [ 0.290196, 0.309804, 0.301961, 1.0 ],
						"color1" : [ 0.862745, 0.870588, 0.878431, 1.0 ],
						"color2" : [ 0.65098, 0.666667, 0.662745, 1.0 ],
						"angle" : 270.0,
						"proportion" : 0.39,
						"autogradient" : 0
					}
,
					"selectioncolor" : [ 0.720698, 0.16723, 0.080014, 1.0 ],
					"color" : [ 0.475135, 0.293895, 0.251069, 1.0 ]
				}
,
				"parentstyle" : "",
				"multi" : 0
			}
, 			{
				"name" : "M4L 10 Bold",
				"default" : 				{
					"fontsize" : [ 10.0 ],
					"patchlinecolor" : [ 0.0, 0.0, 0.0, 0.25 ],
					"fontface" : [ 1 ]
				}
,
				"parentstyle" : "",
				"multi" : 0
			}
, 			{
				"name" : "M4L10",
				"parentstyle" : "",
				"multi" : 0
			}
, 			{
				"name" : "MP Default",
				"parentstyle" : "",
				"multi" : 0
			}
, 			{
				"name" : "Manuel-11B",
				"default" : 				{
					"fontsize" : [ 11.0 ],
					"fontname" : [ "Arial" ],
					"bgfillcolor" : 					{
						"type" : "gradient",
						"color1" : [ 0.376471, 0.384314, 0.4, 1.0 ],
						"color2" : [ 0.290196, 0.309804, 0.301961, 1.0 ],
						"color" : [ 0.290196, 0.309804, 0.301961, 1.0 ],
						"angle" : 270.0,
						"proportion" : 0.39
					}
,
					"fontface" : [ 1 ]
				}
,
				"parentstyle" : "",
				"multi" : 0
			}
, 			{
				"name" : "Matt",
				"default" : 				{
					"fontsize" : [ 10.0 ],
					"fontface" : [ 1 ]
				}
,
				"parentstyle" : "",
				"multi" : 0
			}
, 			{
				"name" : "Max 12 Regular",
				"parentstyle" : "",
				"multi" : 0
			}
, 			{
				"name" : "Max 12 Regular-1",
				"default" : 				{
					"bgfillcolor" : 					{
						"type" : "gradient",
						"color1" : [ 0.376471, 0.384314, 0.4, 1.0 ],
						"color2" : [ 0.290196, 0.309804, 0.301961, 1.0 ],
						"color" : [ 0.290196, 0.309804, 0.301961, 1.0 ],
						"angle" : 270.0,
						"proportion" : 0.39
					}

				}
,
				"parentstyle" : "",
				"multi" : 0
			}
, 			{
				"name" : "Max 12 Regular-1-1",
				"parentstyle" : "",
				"multi" : 0
			}
, 			{
				"name" : "Max 12 Regular-1-1-1",
				"default" : 				{
					"bgfillcolor" : 					{
						"type" : "gradient",
						"color1" : [ 0.376471, 0.384314, 0.4, 1.0 ],
						"color2" : [ 0.290196, 0.309804, 0.301961, 1.0 ],
						"color" : [ 0.290196, 0.309804, 0.301961, 1.0 ],
						"angle" : 270.0,
						"proportion" : 0.39
					}

				}
,
				"parentstyle" : "",
				"multi" : 0
			}
, 			{
				"name" : "Max 12 Regular-1-1-1-1",
				"parentstyle" : "",
				"multi" : 0
			}
, 			{
				"name" : "Max 12 Regular-1-1-1-1-1",
				"default" : 				{
					"bgfillcolor" : 					{
						"type" : "gradient",
						"color1" : [ 0.376471, 0.384314, 0.4, 1.0 ],
						"color2" : [ 0.290196, 0.309804, 0.301961, 1.0 ],
						"color" : [ 0.290196, 0.309804, 0.301961, 1.0 ],
						"angle" : 270.0,
						"proportion" : 0.39
					}

				}
,
				"parentstyle" : "",
				"multi" : 0
			}
, 			{
				"name" : "Max 12 Regular-1-1-1-2",
				"default" : 				{
					"bgfillcolor" : 					{
						"type" : "gradient",
						"color1" : [ 0.376471, 0.384314, 0.4, 1.0 ],
						"color2" : [ 0.290196, 0.309804, 0.301961, 1.0 ],
						"color" : [ 0.290196, 0.309804, 0.301961, 1.0 ],
						"angle" : 270.0,
						"proportion" : 0.39
					}

				}
,
				"parentstyle" : "",
				"multi" : 0
			}
, 			{
				"name" : "Max 12 Regular-1-1-2",
				"default" : 				{
					"bgfillcolor" : 					{
						"type" : "gradient",
						"color1" : [ 0.376471, 0.384314, 0.4, 1.0 ],
						"color2" : [ 0.290196, 0.309804, 0.301961, 1.0 ],
						"color" : [ 0.290196, 0.309804, 0.301961, 1.0 ],
						"angle" : 270.0,
						"proportion" : 0.39
					}

				}
,
				"parentstyle" : "",
				"multi" : 0
			}
, 			{
				"name" : "Max 12 Regular-1-1-3",
				"default" : 				{
					"bgfillcolor" : 					{
						"type" : "gradient",
						"color1" : [ 0.376471, 0.384314, 0.4, 1.0 ],
						"color2" : [ 0.290196, 0.309804, 0.301961, 1.0 ],
						"color" : [ 0.290196, 0.309804, 0.301961, 1.0 ],
						"angle" : 270.0,
						"proportion" : 0.39
					}

				}
,
				"parentstyle" : "",
				"multi" : 0
			}
, 			{
				"name" : "Max 12 Regular-1-1-4",
				"parentstyle" : "",
				"multi" : 0
			}
, 			{
				"name" : "Max 12 Regular-1-2",
				"default" : 				{
					"bgfillcolor" : 					{
						"type" : "gradient",
						"color1" : [ 0.376471, 0.384314, 0.4, 1.0 ],
						"color2" : [ 0.290196, 0.309804, 0.301961, 1.0 ],
						"color" : [ 0.290196, 0.309804, 0.301961, 1.0 ],
						"angle" : 270.0,
						"proportion" : 0.39
					}

				}
,
				"parentstyle" : "",
				"multi" : 0
			}
, 			{
				"name" : "Max 12 Regular-1-2-1",
				"parentstyle" : "",
				"multi" : 0
			}
, 			{
				"name" : "Max 12 Regular-1-2-2",
				"parentstyle" : "",
				"multi" : 0
			}
, 			{
				"name" : "Max 12 Regular-1-3",
				"parentstyle" : "",
				"multi" : 0
			}
, 			{
				"name" : "Max 12 Regular-1-4",
				"default" : 				{
					"bgfillcolor" : 					{
						"type" : "gradient",
						"color1" : [ 0.376471, 0.384314, 0.4, 1.0 ],
						"color2" : [ 0.290196, 0.309804, 0.301961, 1.0 ],
						"color" : [ 0.290196, 0.309804, 0.301961, 1.0 ],
						"angle" : 270.0,
						"proportion" : 0.39
					}

				}
,
				"parentstyle" : "",
				"multi" : 0
			}
, 			{
				"name" : "Max 12 Regular-2",
				"default" : 				{
					"bgfillcolor" : 					{
						"type" : "gradient",
						"color1" : [ 0.376471, 0.384314, 0.4, 1.0 ],
						"color2" : [ 0.290196, 0.309804, 0.301961, 1.0 ],
						"color" : [ 0.290196, 0.309804, 0.301961, 1.0 ],
						"angle" : 270.0,
						"proportion" : 0.39
					}

				}
,
				"parentstyle" : "",
				"multi" : 0
			}
, 			{
				"name" : "Max 12 Regular-3",
				"default" : 				{
					"bgfillcolor" : 					{
						"type" : "gradient",
						"color1" : [ 0.376471, 0.384314, 0.4, 1.0 ],
						"color2" : [ 0.290196, 0.309804, 0.301961, 1.0 ],
						"color" : [ 0.290196, 0.309804, 0.301961, 1.0 ],
						"angle" : 270.0,
						"proportion" : 0.39
					}

				}
,
				"parentstyle" : "",
				"multi" : 0
			}
, 			{
				"name" : "Max 12 Regular-4",
				"parentstyle" : "",
				"multi" : 0
			}
, 			{
				"name" : "Max 12 Regular-4-1",
				"default" : 				{
					"bgfillcolor" : 					{
						"type" : "gradient",
						"color1" : [ 0.376471, 0.384314, 0.4, 1.0 ],
						"color2" : [ 0.290196, 0.309804, 0.301961, 1.0 ],
						"color" : [ 0.290196, 0.309804, 0.301961, 1.0 ],
						"angle" : 270.0,
						"proportion" : 0.39
					}

				}
,
				"parentstyle" : "",
				"multi" : 0
			}
, 			{
				"name" : "Max 12 Regular-4-2",
				"default" : 				{
					"bgfillcolor" : 					{
						"type" : "gradient",
						"color1" : [ 0.376471, 0.384314, 0.4, 1.0 ],
						"color2" : [ 0.290196, 0.309804, 0.301961, 1.0 ],
						"color" : [ 0.290196, 0.309804, 0.301961, 1.0 ],
						"angle" : 270.0,
						"proportion" : 0.39
					}

				}
,
				"parentstyle" : "",
				"multi" : 0
			}
, 			{
				"name" : "Max 12 Regular-5",
				"default" : 				{
					"bgfillcolor" : 					{
						"type" : "gradient",
						"color1" : [ 0.376471, 0.384314, 0.4, 1.0 ],
						"color2" : [ 0.290196, 0.309804, 0.301961, 1.0 ],
						"color" : [ 0.290196, 0.309804, 0.301961, 1.0 ],
						"angle" : 270.0,
						"proportion" : 0.39
					}

				}
,
				"parentstyle" : "",
				"multi" : 0
			}
, 			{
				"name" : "Max 12 Regular-6",
				"parentstyle" : "",
				"multi" : 0
			}
, 			{
				"name" : "Max For Live",
				"default" : 				{
					"patchlinecolor" : [ 0.290196, 0.290196, 0.290196, 0.74 ]
				}
,
				"parentstyle" : "",
				"multi" : 0
			}
, 			{
				"name" : "MyDefault1",
				"gain~" : 				{
					"color" : [ 0.185124, 0.524821, 0.708093, 1.0 ]
				}
,
				"slider" : 				{
					"color" : [ 0.264126, 0.491047, 0.586341, 1.0 ]
				}
,
				"parentstyle" : "",
				"multi" : 1
			}
, 			{
				"name" : "MyDefault2",
				"parentstyle" : "",
				"multi" : 0
			}
, 			{
				"name" : "MyDefault3",
				"default" : 				{
					"accentcolor" : [ 0.479171, 0.485793, 0.505657, 1.0 ],
					"patchlinecolor" : [ 0.239216, 0.254902, 0.278431, 0.9 ],
					"bgcolor" : [ 0.290196, 0.309804, 0.301961, 0.0 ],
					"textcolor_inverse" : [ 0.0, 0.0, 0.0, 1.0 ],
					"bgfillcolor" : 					{
						"type" : "color",
						"color" : [ 0.290196, 0.309804, 0.301961, 0.9 ],
						"color1" : [ 0.376471, 0.384314, 0.4, 1.0 ],
						"color2" : [ 0.290196, 0.309804, 0.301961, 1.0 ],
						"angle" : 270.0,
						"proportion" : 0.39,
						"autogradient" : 0
					}
,
					"selectioncolor" : [ 0.784314, 0.145098, 0.023529, 1.0 ],
					"color" : [ 0.239216, 0.643137, 0.709804, 1.0 ]
				}
,
				"parentstyle" : "",
				"multi" : 0
			}
, 			{
				"name" : "MyDefault3-1",
				"default" : 				{
					"accentcolor" : [ 0.479171, 0.485793, 0.505657, 1.0 ],
					"patchlinecolor" : [ 0.239216, 0.254902, 0.278431, 0.9 ],
					"bgcolor" : [ 0.290196, 0.309804, 0.301961, 0.0 ],
					"textcolor_inverse" : [ 0.0, 0.0, 0.0, 1.0 ],
					"bgfillcolor" : 					{
						"type" : "color",
						"color" : [ 0.290196, 0.309804, 0.301961, 0.9 ],
						"color1" : [ 0.376471, 0.384314, 0.4, 1.0 ],
						"color2" : [ 0.290196, 0.309804, 0.301961, 1.0 ],
						"angle" : 270.0,
						"proportion" : 0.39,
						"autogradient" : 0
					}
,
					"selectioncolor" : [ 0.784314, 0.145098, 0.023529, 1.0 ],
					"color" : [ 0.095481, 0.100396, 0.100293, 1.0 ]
				}
,
				"parentstyle" : "",
				"multi" : 0
			}
, 			{
				"name" : "WTF",
				"default" : 				{
					"accentcolor" : [ 0.50764, 0.065317, 0.112129, 1.0 ],
					"fontsize" : [ 18.0 ],
					"elementcolor" : [ 0.461105, 0.492646, 0.591878, 1.0 ],
					"patchlinecolor" : [ 0.231373, 0.121569, 0.305882, 0.9 ],
					"bgcolor" : [ 0.163647, 0.174699, 0.17409, 1.0 ],
					"fontname" : [ "HydrogenType" ],
					"bgfillcolor" : 					{
						"type" : "gradient",
						"color" : [ 0.290196, 0.309804, 0.301961, 1.0 ],
						"color1" : [ 0.32549, 0.345098, 0.372549, 1.0 ],
						"color2" : [ 0.290196, 0.309804, 0.301961, 1.0 ],
						"angle" : 270.0,
						"proportion" : 0.39,
						"autogradient" : 0
					}
,
					"color" : [ 0.113725, 0.580392, 0.737255, 1.0 ]
				}
,
				"parentstyle" : "",
				"multi" : 0
			}
, 			{
				"name" : "classic",
				"default" : 				{
					"accentcolor" : [ 0.498039, 0.498039, 0.498039, 1.0 ],
					"fontsize" : [ 9.0 ],
					"patchlinecolor" : [ 0.0, 0.0, 0.0, 1.0 ],
					"bgcolor" : [ 0.83978, 0.839941, 0.839753, 1.0 ],
					"fontname" : [ "Geneva" ],
					"textcolor_inverse" : [ 0.0, 0.0, 0.0, 1.0 ],
					"bgfillcolor" : 					{
						"type" : "color",
						"color1" : [ 0.83978, 0.839941, 0.839753, 1.0 ],
						"color2" : [ 0.290196, 0.309804, 0.301961, 1.0 ],
						"color" : [ 0.839216, 0.839216, 0.839216, 1.0 ],
						"angle" : 270.0,
						"proportion" : 0.39
					}
,
					"color" : [ 0.498039, 0.498039, 0.498039, 1.0 ]
				}
,
				"parentstyle" : "",
				"multi" : 0
			}
, 			{
				"name" : "classicButton",
				"default" : 				{
					"color" : [ 1.0, 0.890196, 0.090196, 1.0 ]
				}
,
				"parentstyle" : "",
				"multi" : 0
			}
, 			{
				"name" : "classicDial",
				"default" : 				{
					"color" : [ 1.0, 0.890196, 0.090196, 1.0 ]
				}
,
				"parentstyle" : "",
				"multi" : 0
			}
, 			{
				"name" : "classicGain~",
				"default" : 				{
					"color" : [ 0.380392, 0.380392, 0.380392, 1.0 ]
				}
,
				"parentstyle" : "",
				"multi" : 0
			}
, 			{
				"name" : "classicGswitch",
				"default" : 				{
					"accentcolor" : [ 1.0, 1.0, 1.0, 1.0 ]
				}
,
				"parentstyle" : "",
				"multi" : 0
			}
, 			{
				"name" : "classicGswitch2",
				"default" : 				{
					"accentcolor" : [ 1.0, 1.0, 1.0, 1.0 ]
				}
,
				"parentstyle" : "",
				"multi" : 0
			}
, 			{
				"name" : "classicKslider",
				"default" : 				{
					"elementcolor" : [ 0.498039, 0.498039, 0.498039, 1.0 ],
					"bgcolor" : [ 0.0, 0.0, 0.0, 1.0 ],
					"selectioncolor" : [ 0.498039, 0.498039, 0.498039, 1.0 ],
					"color" : [ 1.0, 1.0, 1.0, 1.0 ]
				}
,
				"parentstyle" : "",
				"multi" : 0
			}
, 			{
				"name" : "classicLed",
				"default" : 				{
					"elementcolor" : [ 0.6, 0.0, 0.0, 1.0 ],
					"color" : [ 1.0, 0.0, 0.0, 1.0 ]
				}
,
				"parentstyle" : "",
				"multi" : 0
			}
, 			{
				"name" : "classicMatrixctrl",
				"default" : 				{
					"color" : [ 1.0, 0.0, 0.0, 1.0 ]
				}
,
				"parentstyle" : "",
				"multi" : 0
			}
, 			{
				"name" : "classicMeter~",
				"default" : 				{
					"elementcolor" : [ 0.498039, 0.498039, 0.498039, 1.0 ],
					"bgcolor" : [ 0.380392, 0.380392, 0.380392, 1.0 ]
				}
,
				"parentstyle" : "",
				"multi" : 0
			}
, 			{
				"name" : "classicNodes",
				"default" : 				{
					"fontsize" : [ 9.0 ],
					"elementcolor" : [ 0.498039, 0.498039, 0.498039, 1.0 ],
					"color" : [ 0.839216, 0.839216, 0.839216, 1.0 ]
				}
,
				"parentstyle" : "",
				"multi" : 0
			}
, 			{
				"name" : "classicNslider",
				"default" : 				{
					"color" : [ 0.0, 0.0, 0.0, 1.0 ]
				}
,
				"parentstyle" : "",
				"multi" : 0
			}
, 			{
				"name" : "classicNumber",
				"default" : 				{
					"selectioncolor" : [ 1.0, 0.890196, 0.0, 1.0 ]
				}
,
				"parentstyle" : "",
				"multi" : 0
			}
, 			{
				"name" : "classicPictslider",
				"default" : 				{
					"elementcolor" : [ 0.498039, 0.498039, 0.498039, 1.0 ]
				}
,
				"parentstyle" : "",
				"multi" : 0
			}
, 			{
				"name" : "classicPreset",
				"default" : 				{
					"color" : [ 1.0, 0.890196, 0.090196, 1.0 ]
				}
,
				"parentstyle" : "",
				"multi" : 0
			}
, 			{
				"name" : "classicScope~",
				"default" : 				{
					"bgcolor" : [ 0.498039, 0.498039, 0.498039, 1.0 ],
					"color" : [ 0.462745, 0.933333, 0.0, 1.0 ]
				}
,
				"parentstyle" : "",
				"multi" : 0
			}
, 			{
				"name" : "classicTab",
				"default" : 				{
					"elementcolor" : [ 0.839216, 0.839216, 0.839216, 1.0 ],
					"color" : [ 0.498039, 0.498039, 0.498039, 1.0 ]
				}
,
				"parentstyle" : "",
				"multi" : 0
			}
, 			{
				"name" : "classicTextbutton",
				"default" : 				{
					"accentcolor" : [ 0.0, 0.0, 0.0, 1.0 ],
					"color" : [ 1.0, 1.0, 1.0, 1.0 ]
				}
,
				"parentstyle" : "",
				"multi" : 0
			}
, 			{
				"name" : "classicToggle",
				"default" : 				{
					"elementcolor" : [ 0.376471, 0.384314, 0.4, 0.0 ],
					"color" : [ 0.380392, 0.380392, 0.380392, 1.0 ]
				}
,
				"parentstyle" : "",
				"multi" : 0
			}
, 			{
				"name" : "classicUmenu",
				"default" : 				{
					"color" : [ 1.0, 1.0, 1.0, 1.0 ]
				}
,
				"parentstyle" : "",
				"multi" : 0
			}
, 			{
				"name" : "classicWaveform~",
				"default" : 				{
					"selectioncolor" : [ 0.498039, 0.498039, 0.498039, 0.5 ],
					"color" : [ 0.380392, 0.380392, 0.380392, 1.0 ]
				}
,
				"parentstyle" : "",
				"multi" : 0
			}
, 			{
				"name" : "dark-night-patch",
				"default" : 				{
					"accentcolor" : [ 0.952941, 0.564706, 0.098039, 1.0 ],
					"textcolor" : [ 0.862745, 0.870588, 0.878431, 1.0 ],
					"patchlinecolor" : [ 0.439216, 0.74902, 0.254902, 0.898039 ],
					"bgfillcolor" : 					{
						"type" : "gradient",
						"color1" : [ 0.376471, 0.384314, 0.4, 1.0 ],
						"color2" : [ 0.290196, 0.309804, 0.301961, 1.0 ],
						"color" : [ 0.290196, 0.309804, 0.301961, 1.0 ],
						"angle" : 270.0,
						"proportion" : 0.39
					}

				}
,
				"parentstyle" : "",
				"multi" : 0
			}
, 			{
				"name" : "jbb",
				"default" : 				{
					"fontsize" : [ 9.0 ],
					"fontname" : [ "Arial" ],
					"bgfillcolor" : 					{
						"type" : "gradient",
						"color1" : [ 0.376471, 0.384314, 0.4, 1.0 ],
						"color2" : [ 0.290196, 0.309804, 0.301961, 1.0 ],
						"color" : [ 0.290196, 0.309804, 0.301961, 1.0 ],
						"angle" : 270.0,
						"proportion" : 0.39
					}

				}
,
				"parentstyle" : "",
				"multi" : 0
			}
, 			{
				"name" : "jpatcher001",
				"parentstyle" : "",
				"multi" : 0
			}
, 			{
				"name" : "jpatcher002",
				"default" : 				{
					"fontsize" : [ 9.5 ],
					"patchlinecolor" : [ 0.65098, 0.65098, 0.65098, 0.0 ],
					"fontname" : [ "Ableton Sans Book" ],
					"clearcolor" : [ 0.32549, 0.345098, 0.372549, 0.0 ],
					"bgfillcolor" : 					{
						"type" : "color",
						"color1" : [ 0.32549, 0.345098, 0.372549, 0.0 ],
						"color2" : [ 0.290196, 0.309804, 0.301961, 1.0 ],
						"color" : [ 0.290196, 0.309804, 0.301961, 1.0 ],
						"angle" : 270.0,
						"proportion" : 0.39
					}

				}
,
				"parentstyle" : "",
				"multi" : 0
			}
, 			{
				"name" : "jpink",
				"default" : 				{
					"accentcolor" : [ 0.619608, 0.0, 0.360784, 1.0 ],
					"textcolor" : [ 0.619608, 0.0, 0.360784, 1.0 ],
					"elementcolor" : [ 0.619608, 0.0, 0.360784, 1.0 ],
					"patchlinecolor" : [ 0.65, 0.65, 0.65, 1.0 ],
					"bgcolor" : [ 0.862745, 0.870588, 0.878431, 1.0 ],
					"clearcolor" : [ 0.113725, 0.607843, 0.607843, 1.0 ],
					"bgfillcolor" : 					{
						"type" : "color",
						"color" : [ 0.619608, 0.0, 0.360784, 1.0 ],
						"color1" : [ 0.376471, 0.384314, 0.4, 1.0 ],
						"color2" : [ 0.290196, 0.309804, 0.301961, 1.0 ],
						"angle" : 270.0,
						"proportion" : 0.39,
						"autogradient" : 0
					}
,
					"selectioncolor" : [ 0.619608, 0.0, 0.360784, 1.0 ],
					"color" : [ 0.619608, 0.0, 0.360784, 1.0 ]
				}
,
				"parentstyle" : "",
				"multi" : 0
			}
, 			{
				"name" : "k.Blue",
				"default" : 				{
					"accentcolor" : [ 0.317647, 0.654902, 0.976471, 0.309804 ],
					"fontsize" : [ 9.0 ],
					"textcolor" : [ 0.862745, 0.870588, 0.878431, 1.0 ],
					"textcolor_inverse" : [ 0.862745, 0.870588, 0.878431, 1.0 ],
					"selectioncolor" : [ 0.317647, 0.654902, 0.976471, 1.0 ],
					"color" : [ 0.317647, 0.654902, 0.976471, 1.0 ]
				}
,
				"parentstyle" : "",
				"multi" : 0
			}
, 			{
				"name" : "ksliderWhite",
				"default" : 				{
					"color" : [ 1.0, 1.0, 1.0, 1.0 ]
				}
,
				"parentstyle" : "",
				"multi" : 0
			}
, 			{
				"name" : "lightbutton",
				"default" : 				{
					"elementcolor" : [ 0.654902, 0.572549, 0.376471, 1.0 ],
					"bgcolor" : [ 0.309495, 0.299387, 0.299789, 1.0 ]
				}
,
				"parentstyle" : "",
				"multi" : 0
			}
, 			{
				"name" : "newobjBlue-1",
				"default" : 				{
					"accentcolor" : [ 0.317647, 0.654902, 0.976471, 1.0 ]
				}
,
				"parentstyle" : "",
				"multi" : 0
			}
, 			{
				"name" : "newobjBrown-1",
				"default" : 				{
					"accentcolor" : [ 0.654902, 0.572549, 0.376471, 1.0 ]
				}
,
				"parentstyle" : "",
				"multi" : 0
			}
, 			{
				"name" : "newobjCyan-1",
				"default" : 				{
					"accentcolor" : [ 0.029546, 0.773327, 0.821113, 1.0 ]
				}
,
				"parentstyle" : "",
				"multi" : 0
			}
, 			{
				"name" : "newobjGreen-1",
				"default" : 				{
					"accentcolor" : [ 0.0, 0.533333, 0.168627, 1.0 ]
				}
,
				"parentstyle" : "",
				"multi" : 0
			}
, 			{
				"name" : "newobjRed-1",
				"default" : 				{
					"accentcolor" : [ 0.784314, 0.145098, 0.023529, 1.0 ]
				}
,
				"parentstyle" : "",
				"multi" : 0
			}
, 			{
				"name" : "newobjYellow-1",
				"default" : 				{
					"accentcolor" : [ 0.82517, 0.78181, 0.059545, 1.0 ],
					"fontsize" : [ 12.059008 ]
				}
,
				"parentstyle" : "",
				"multi" : 0
			}
, 			{
				"name" : "newobjYellow-2",
				"default" : 				{
					"accentcolor" : [ 0.82517, 0.78181, 0.059545, 1.0 ],
					"fontsize" : [ 12.059008 ]
				}
,
				"parentstyle" : "",
				"multi" : 0
			}
, 			{
				"name" : "numberGold-1",
				"default" : 				{
					"accentcolor" : [ 0.764706, 0.592157, 0.101961, 1.0 ]
				}
,
				"parentstyle" : "",
				"multi" : 0
			}
, 			{
				"name" : "purple",
				"default" : 				{
					"bgcolor" : [ 0.304029, 0.250694, 0.285628, 1.0 ],
					"textcolor_inverse" : [ 0.701961, 0.415686, 0.886275, 1.0 ]
				}
,
				"parentstyle" : "",
				"multi" : 0
			}
, 			{
				"name" : "receives",
				"default" : 				{
					"accentcolor" : [ 0.870588, 0.415686, 0.062745, 1.0 ]
				}
,
				"parentstyle" : "",
				"multi" : 0
			}
, 			{
				"name" : "rsliderGold",
				"default" : 				{
					"bgcolor" : [ 0.764706, 0.592157, 0.101961, 1.0 ],
					"color" : [ 0.646639, 0.821777, 0.854593, 1.0 ]
				}
,
				"parentstyle" : "",
				"multi" : 0
			}
, 			{
				"name" : "sends",
				"default" : 				{
					"accentcolor" : [ 0.0, 0.533333, 0.168627, 1.0 ]
				}
,
				"parentstyle" : "",
				"multi" : 0
			}
, 			{
				"name" : "stb001",
				"default" : 				{
					"fontsize" : [ 10.0 ],
					"fontname" : [ "Arial Bold" ],
					"fontface" : [ 1 ]
				}
,
				"parentstyle" : "",
				"multi" : 0
			}
, 			{
				"name" : "tap",
				"default" : 				{
					"fontname" : [ "Lato Light" ]
				}
,
				"parentstyle" : "",
				"multi" : 0
			}
, 			{
				"name" : "tastefulltoggle",
				"default" : 				{
					"bgcolor" : [ 0.185512, 0.263736, 0.260626, 1.0 ],
					"color" : [ 0.941176, 0.690196, 0.196078, 1.0 ]
				}
,
				"parentstyle" : "",
				"multi" : 0
			}
, 			{
				"name" : "tastefultoggle",
				"default" : 				{
					"elementcolor" : [ 0.654902, 0.572549, 0.376471, 1.0 ],
					"bgcolor" : [ 0.287863, 0.333333, 0.329398, 1.0 ],
					"color" : [ 0.941176, 0.690196, 0.196078, 1.0 ]
				}
,
				"parentstyle" : "",
				"multi" : 0
			}
, 			{
				"name" : "test",
				"default" : 				{
					"fontsize" : [ 10.0 ],
					"fontface" : [ 1 ]
				}
,
				"parentstyle" : "",
				"multi" : 0
			}
, 			{
				"name" : "whitey",
				"default" : 				{
					"fontsize" : [ 36.0 ],
					"patchlinecolor" : [ 0.199068, 0.062496, 0.060031, 0.9 ],
					"fontname" : [ "Dirty Ego" ],
					"textcolor_inverse" : [ 0.65098, 0.666667, 0.662745, 1.0 ],
					"selectioncolor" : [ 0.011765, 0.396078, 0.752941, 1.0 ]
				}
,
				"parentstyle" : "",
				"multi" : 0
			}
 ]
	}

}
