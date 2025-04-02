{
  "graph": {
    "cells": [
      {
        "position": {
          "x": -117,
          "y": -59.5
        },
        "size": {
          "height": 10,
          "width": 10
        },
        "angle": 0,
        "type": "Statechart",
        "id": "e231e707-a282-46eb-b836-0e0cdfcbdfba",
        "linkable": false,
        "z": 1,
        "attrs": {
          "name": {
            "text": "sensor_statechart Export"
          },
          "specification": {
            "text": "@EventDriven\n@SuperSteps(no)\n\ninterface: \n    in event EV_BTN_UP\n    in event EV_BTN_DOWN\n    //out event EV_SYS_01_DOWN\n    //out event EV_SYS_01_UP\n    \ninternal:    \n    var tick:integer\n    const DEL_BTN_MAX:integer = 5\n    "
          }
        }
      },
      {
        "type": "Entry",
        "position": {
          "x": -1428,
          "y": -1733
        },
        "size": {
          "height": 15,
          "width": 15
        },
        "angle": 0,
        "fixedRatio": true,
        "embedable": false,
        "linkable": true,
        "id": "cecd6a6f-1ec3-4dbb-a7b7-46bdcaba8a98",
        "embeds": [
          "dbdde81d-599c-4776-9437-98ca9c8a70f0"
        ],
        "z": 407,
        "attrs": {
          "name": {
            "fill": "#555555"
          }
        }
      },
      {
        "type": "NodeLabel",
        "label": true,
        "size": {
          "width": 15,
          "height": 15
        },
        "position": {
          "x": -1428,
          "y": -1718
        },
        "id": "dbdde81d-599c-4776-9437-98ca9c8a70f0",
        "parent": "cecd6a6f-1ec3-4dbb-a7b7-46bdcaba8a98",
        "z": 408,
        "attrs": {
          "label": {
            "refX": "50%",
            "textAnchor": "middle",
            "refY": "50%",
            "textVerticalAnchor": "middle"
          }
        }
      },
      {
        "type": "State",
        "position": {
          "x": -1328,
          "y": -1755.5
        },
        "size": {
          "height": 60,
          "width": 64.8125
        },
        "angle": 0,
        "fixedRatio": false,
        "embedable": true,
        "linkable": true,
        "id": "77b738eb-5aa7-43fa-aed4-106595811bf5",
        "z": 410,
        "embeds": [
          "a307714a-8eff-4b47-a651-ce1eef9c20b3"
        ],
        "attrs": {
          "name": {
            "text": "ST_BTN_UP"
          }
        }
      },
      {
        "type": "Transition",
        "source": {
          "id": "cecd6a6f-1ec3-4dbb-a7b7-46bdcaba8a98"
        },
        "target": {
          "id": "77b738eb-5aa7-43fa-aed4-106595811bf5"
        },
        "router": {
          "name": "orthogonal",
          "args": {
            "padding": 8
          }
        },
        "connector": {
          "name": "rounded"
        },
        "labels": [
          {
            "attrs": {},
            "position": {}
          },
          {
            "attrs": {
              "label": {
                "text": "1"
              }
            }
          },
          {
            "attrs": {}
          },
          {
            "attrs": {}
          }
        ],
        "id": "c3d9c4c3-7d3c-47d1-8dd8-fa6f6ff51736",
        "z": 411,
        "attrs": {}
      },
      {
        "type": "Transition",
        "source": {
          "id": "77b738eb-5aa7-43fa-aed4-106595811bf5"
        },
        "target": {
          "id": "77b738eb-5aa7-43fa-aed4-106595811bf5",
          "anchor": {
            "name": "topLeft",
            "args": {
              "dx": 62.0062255859375,
              "dy": 46.5,
              "rotate": true
            }
          },
          "priority": true
        },
        "router": {
          "name": "orthogonal",
          "args": {
            "padding": 8
          }
        },
        "connector": {
          "name": "rounded"
        },
        "labels": [
          {
            "attrs": {
              "text": {
                "text": "EV_BTN_UP [tick >0]/ tick--"
              }
            },
            "position": {}
          },
          {
            "attrs": {
              "label": {
                "text": "1"
              }
            }
          },
          {
            "attrs": {}
          },
          {
            "attrs": {}
          }
        ],
        "id": "a307714a-8eff-4b47-a651-ce1eef9c20b3",
        "z": 421,
        "parent": "77b738eb-5aa7-43fa-aed4-106595811bf5",
        "vertices": [
          {
            "x": -1308,
            "y": -1634
          },
          {
            "x": -1265.99,
            "y": -1663
          }
        ],
        "attrs": {}
      },
      {
        "type": "State",
        "position": {
          "x": -1035,
          "y": -1495
        },
        "size": {
          "height": 75,
          "width": 127
        },
        "angle": 0,
        "fixedRatio": false,
        "embedable": true,
        "linkable": true,
        "id": "4977f29a-c68b-4e54-8e80-7c1793d8d1fc",
        "z": 443,
        "embeds": [
          "ec209128-0fca-4d0c-a356-e6ab825c5bbc"
        ],
        "attrs": {
          "name": {
            "text": "ST_BTN_DOWN"
          }
        }
      },
      {
        "type": "Transition",
        "source": {
          "id": "4977f29a-c68b-4e54-8e80-7c1793d8d1fc"
        },
        "target": {
          "id": "4977f29a-c68b-4e54-8e80-7c1793d8d1fc",
          "anchor": {
            "name": "topLeft",
            "args": {
              "dx": 114,
              "dy": 66,
              "rotate": true
            }
          },
          "priority": true
        },
        "router": {
          "name": "orthogonal",
          "args": {
            "padding": 8
          }
        },
        "connector": {
          "name": "rounded"
        },
        "labels": [
          {
            "attrs": {
              "text": {
                "text": "EV_BTN_DOWN [tick ==0]"
              }
            },
            "position": {}
          },
          {
            "attrs": {
              "label": {
                "text": "2"
              }
            }
          },
          {
            "attrs": {}
          },
          {
            "attrs": {}
          }
        ],
        "id": "ec209128-0fca-4d0c-a356-e6ab825c5bbc",
        "z": 444,
        "parent": "4977f29a-c68b-4e54-8e80-7c1793d8d1fc",
        "vertices": [
          {
            "x": -1011,
            "y": -1316
          }
        ],
        "attrs": {}
      },
      {
        "type": "State",
        "position": {
          "x": -671,
          "y": -1749
        },
        "size": {
          "height": 77,
          "width": 127
        },
        "angle": 0,
        "fixedRatio": false,
        "embedable": true,
        "linkable": true,
        "id": "d6429699-371f-4c99-83f9-36184ef54d71",
        "z": 448,
        "embeds": [
          "adc6deb7-fe01-4073-962f-1144f908e858",
          "e77592d9-40ba-4058-9984-1c0c861969e9"
        ],
        "attrs": {
          "name": {
            "text": "ST_BTN_RISING"
          }
        }
      },
      {
        "type": "Transition",
        "source": {
          "id": "4977f29a-c68b-4e54-8e80-7c1793d8d1fc"
        },
        "target": {
          "id": "d6429699-371f-4c99-83f9-36184ef54d71",
          "anchor": {
            "name": "topLeft",
            "args": {
              "dx": 41,
              "dy": 75,
              "rotate": true
            }
          },
          "priority": true
        },
        "router": {
          "name": "orthogonal",
          "args": {
            "padding": 8
          }
        },
        "connector": {
          "name": "rounded"
        },
        "labels": [
          {
            "attrs": {
              "text": {
                "text": "EV_BTN_UP / tick = DEL_BTN_MAX"
              }
            },
            "position": {}
          },
          {
            "attrs": {
              "label": {
                "text": "1"
              }
            }
          },
          {
            "attrs": {}
          },
          {
            "attrs": {}
          }
        ],
        "id": "c5c8de05-aec2-4745-9fb7-6fb43848f28a",
        "z": 449,
        "attrs": {}
      },
      {
        "type": "Transition",
        "source": {
          "id": "d6429699-371f-4c99-83f9-36184ef54d71"
        },
        "target": {
          "id": "77b738eb-5aa7-43fa-aed4-106595811bf5",
          "anchor": {
            "name": "topLeft",
            "args": {
              "dx": 58.0062255859375,
              "dy": 38.5,
              "rotate": true
            }
          },
          "priority": true
        },
        "router": {
          "name": "orthogonal",
          "args": {
            "padding": 8
          }
        },
        "connector": {
          "name": "rounded"
        },
        "labels": [
          {
            "attrs": {
              "text": {
                "text": "EV_BTN_UP [tick<=0]"
              }
            },
            "position": {}
          },
          {
            "attrs": {
              "label": {
                "text": "1"
              }
            }
          },
          {
            "attrs": {}
          },
          {
            "attrs": {}
          }
        ],
        "id": "fe2b8750-ce32-463c-9d5e-884d29149712",
        "z": 449,
        "vertices": [],
        "attrs": {}
      },
      {
        "type": "Transition",
        "source": {
          "id": "d6429699-371f-4c99-83f9-36184ef54d71"
        },
        "target": {
          "id": "d6429699-371f-4c99-83f9-36184ef54d71",
          "anchor": {
            "name": "topLeft",
            "args": {
              "dx": 126,
              "dy": 52,
              "rotate": true
            }
          },
          "priority": true
        },
        "router": {
          "name": "orthogonal",
          "args": {
            "padding": 8
          }
        },
        "connector": {
          "name": "rounded"
        },
        "labels": [
          {
            "attrs": {
              "text": {
                "text": "EV_BTN_UP [tick >0] / tick--"
              }
            },
            "position": {}
          },
          {
            "attrs": {
              "label": {
                "text": "2"
              }
            }
          },
          {
            "attrs": {}
          },
          {
            "attrs": {}
          }
        ],
        "id": "e77592d9-40ba-4058-9984-1c0c861969e9",
        "z": 449,
        "parent": "d6429699-371f-4c99-83f9-36184ef54d71",
        "vertices": [
          {
            "x": -575,
            "y": -1581
          },
          {
            "x": -545,
            "y": -1610
          }
        ],
        "attrs": {}
      },
      {
        "type": "Transition",
        "source": {
          "id": "d6429699-371f-4c99-83f9-36184ef54d71"
        },
        "target": {
          "id": "77b738eb-5aa7-43fa-aed4-106595811bf5",
          "anchor": {
            "name": "topLeft",
            "args": {
              "dx": 57.0062255859375,
              "dy": 24.5,
              "rotate": true
            }
          },
          "priority": true
        },
        "router": {
          "name": "orthogonal",
          "args": {
            "padding": 8
          }
        },
        "connector": {
          "name": "rounded"
        },
        "labels": [
          {
            "attrs": {
              "text": {
                "text": "EV_BTN_DOWN / tick=DEL_BTN_MAX"
              }
            },
            "position": {}
          },
          {
            "attrs": {
              "label": {
                "text": "4"
              }
            }
          },
          {
            "attrs": {}
          },
          {
            "attrs": {}
          }
        ],
        "id": "a9f2728c-171a-4f2f-a2a3-48a8769a61f0",
        "z": 449,
        "vertices": [
          {
            "x": -829,
            "y": -1790
          },
          {
            "x": -941,
            "y": -1790
          },
          {
            "x": -1187,
            "y": -1816
          }
        ],
        "attrs": {}
      },
      {
        "type": "Transition",
        "source": {
          "id": "d6429699-371f-4c99-83f9-36184ef54d71"
        },
        "target": {
          "id": "d6429699-371f-4c99-83f9-36184ef54d71",
          "anchor": {
            "name": "topLeft",
            "args": {
              "dx": 5,
              "dy": 35,
              "rotate": true
            }
          },
          "priority": true
        },
        "router": {
          "name": "orthogonal",
          "args": {
            "padding": 8
          }
        },
        "connector": {
          "name": "rounded"
        },
        "labels": [
          {
            "attrs": {
              "text": {
                "text": "EV_BTN_DOWN [tick >0] / tick--"
              }
            },
            "position": {}
          },
          {
            "attrs": {
              "label": {
                "text": "3"
              }
            }
          },
          {
            "attrs": {}
          },
          {
            "attrs": {}
          }
        ],
        "id": "adc6deb7-fe01-4073-962f-1144f908e858",
        "z": 450,
        "parent": "d6429699-371f-4c99-83f9-36184ef54d71",
        "vertices": [
          {
            "x": -621,
            "y": -1834
          }
        ],
        "attrs": {}
      },
      {
        "type": "State",
        "position": {
          "x": -1010,
          "y": -1953
        },
        "size": {
          "height": 76,
          "width": 127
        },
        "angle": 0,
        "fixedRatio": false,
        "embedable": true,
        "linkable": true,
        "id": "dcfdd07d-3eb1-4052-a117-bd8e262ea5b4",
        "z": 470,
        "embeds": [
          "0cd370d7-cda0-4032-8c51-17b6ef214d89",
          "403673bd-6b1e-4e1d-b786-165793526d4b"
        ],
        "attrs": {
          "name": {
            "text": "ST_BTN_FALLING"
          }
        }
      },
      {
        "type": "Transition",
        "source": {
          "id": "77b738eb-5aa7-43fa-aed4-106595811bf5"
        },
        "target": {
          "id": "dcfdd07d-3eb1-4052-a117-bd8e262ea5b4",
          "anchor": {
            "name": "topLeft",
            "args": {
              "dx": 2.8046875,
              "dy": 38,
              "rotate": true
            }
          },
          "priority": true
        },
        "router": {
          "name": "orthogonal",
          "args": {
            "padding": 8
          }
        },
        "connector": {
          "name": "rounded"
        },
        "labels": [
          {
            "attrs": {
              "text": {
                "text": "EV_BTN_DOWN / tick = DEL_BTN_MAX"
              }
            },
            "position": {}
          },
          {
            "attrs": {
              "label": {
                "text": "2"
              }
            }
          },
          {
            "attrs": {}
          },
          {
            "attrs": {}
          }
        ],
        "id": "739a673d-2892-402d-ba3b-9991eebd3f2f",
        "z": 471,
        "vertices": [
          {
            "x": -1247,
            "y": -1849
          }
        ],
        "attrs": {}
      },
      {
        "type": "Transition",
        "source": {
          "id": "dcfdd07d-3eb1-4052-a117-bd8e262ea5b4"
        },
        "target": {
          "id": "4977f29a-c68b-4e54-8e80-7c1793d8d1fc",
          "anchor": {
            "name": "topLeft",
            "args": {
              "dx": 10,
              "dy": 11,
              "rotate": true
            }
          },
          "priority": true
        },
        "router": {
          "name": "orthogonal",
          "args": {
            "padding": 8
          }
        },
        "connector": {
          "name": "rounded"
        },
        "labels": [
          {
            "attrs": {
              "text": {
                "text": "EV_BTN_DOWN [tick <= 0]"
              }
            },
            "position": {
              "distance": 0.5904292304894213,
              "offset": -8.929078568526196,
              "angle": 0
            }
          },
          {
            "attrs": {
              "label": {
                "text": "3"
              }
            }
          },
          {
            "attrs": {}
          },
          {
            "attrs": {}
          }
        ],
        "id": "9aa76e39-3b95-4064-b565-fd970cad1d68",
        "z": 471,
        "vertices": [
          {
            "x": -1025,
            "y": -1578
          }
        ],
        "attrs": {}
      },
      {
        "type": "Transition",
        "source": {
          "id": "dcfdd07d-3eb1-4052-a117-bd8e262ea5b4"
        },
        "target": {
          "id": "dcfdd07d-3eb1-4052-a117-bd8e262ea5b4",
          "anchor": {
            "name": "topLeft",
            "args": {
              "dx": 109.8046875,
              "dy": 8,
              "rotate": true
            }
          },
          "priority": true
        },
        "router": {
          "name": "orthogonal",
          "args": {
            "padding": 8
          }
        },
        "connector": {
          "name": "rounded"
        },
        "labels": [
          {
            "attrs": {
              "text": {
                "text": "EV_BTN_UP [tick >0] / tick--"
              }
            },
            "position": {}
          },
          {
            "attrs": {
              "label": {
                "text": "1"
              }
            }
          },
          {
            "attrs": {}
          },
          {
            "attrs": {}
          }
        ],
        "id": "403673bd-6b1e-4e1d-b786-165793526d4b",
        "z": 471,
        "parent": "dcfdd07d-3eb1-4052-a117-bd8e262ea5b4",
        "vertices": [
          {
            "x": -810,
            "y": -1994
          }
        ],
        "attrs": {}
      },
      {
        "type": "Transition",
        "source": {
          "id": "dcfdd07d-3eb1-4052-a117-bd8e262ea5b4"
        },
        "target": {
          "id": "dcfdd07d-3eb1-4052-a117-bd8e262ea5b4",
          "anchor": {
            "name": "topLeft",
            "args": {
              "dx": 121,
              "dy": 53,
              "rotate": true
            }
          },
          "priority": true
        },
        "router": {
          "name": "orthogonal",
          "args": {
            "padding": 8
          }
        },
        "connector": {
          "name": "rounded"
        },
        "labels": [
          {
            "attrs": {
              "text": {
                "text": "EV_BTN_DOWN  [tick >0] / tick--"
              }
            },
            "position": {}
          },
          {
            "attrs": {
              "label": {
                "text": "2"
              }
            }
          },
          {
            "attrs": {}
          },
          {
            "attrs": {}
          }
        ],
        "id": "0cd370d7-cda0-4032-8c51-17b6ef214d89",
        "z": 472,
        "parent": "dcfdd07d-3eb1-4052-a117-bd8e262ea5b4",
        "vertices": [
          {
            "x": -770,
            "y": -1848
          }
        ],
        "attrs": {}
      }
    ]
  },
  "genModel": {
    "generator": {
      "type": "create::c",
      "features": {
        "Outlet": {
          "targetProject": "",
          "targetFolder": "",
          "libraryTargetFolder": "",
          "skipLibraryFiles": "",
          "apiTargetFolder": ""
        },
        "LicenseHeader": {
          "licenseText": ""
        },
        "FunctionInlining": {
          "inlineReactions": false,
          "inlineEntryActions": false,
          "inlineExitActions": false,
          "inlineEnterSequences": false,
          "inlineExitSequences": false,
          "inlineChoices": false,
          "inlineEnterRegion": false,
          "inlineExitRegion": false,
          "inlineEntries": false
        },
        "OutEventAPI": {
          "observables": false,
          "getters": false
        },
        "IdentifierSettings": {
          "moduleName": "Btn",
          "statemachinePrefix": "btn",
          "separator": "_",
          "headerFilenameExtension": "h",
          "sourceFilenameExtension": "c"
        },
        "Tracing": {
          "enterState": "",
          "exitState": "",
          "generic": ""
        },
        "Includes": {
          "useRelativePaths": false,
          "generateAllSpecifiedIncludes": false
        },
        "GeneratorOptions": {
          "userAllocatedQueue": false,
          "metaSource": false
        },
        "GeneralFeatures": {
          "timerService": false,
          "timerServiceTimeType": ""
        },
        "Debug": {
          "dumpSexec": false
        }
      }
    }
  }
}