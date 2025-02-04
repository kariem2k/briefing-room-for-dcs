  ["visible"] = false,
  ["lateActivation"] = true,
  ["tasks"] =
  {
  }, -- end of ["tasks"]
  ["uncontrollable"] = $NOCM$,
  ["task"] = "Ground Nothing",
  ["hiddenOnMFD"] = $HIDDEN$,
  ["route"] =
  {
    ["spans"] =
    {
    }, -- end of ["spans"]
    ["points"] =
    {
      [1] =
      {
        ["alt"] = 8,
        ["type"] = "Turning Point",
        ["ETA"] = 0,
        ["alt_type"] = "BARO",
        ["formation_template"] = "",
        ["y"] = $GROUPY$,
        ["x"] = $GROUPX$,
        ["name"] = "",
        ["ETA_locked"] = true,
        ["speed"] = 5.5555555555556,
        ["action"] = "Off Road",
        ["task"] =
        {
          ["id"] = "ComboTask",
          ["params"] =
          {
            ["tasks"] =
            {
            }, -- end of ["tasks"]
          }, -- end of ["params"]
        }, -- end of ["task"]
        ["speed_locked"] = true,
      }, -- end of [1]
      [2] = 
      {
          ["alt"] = 8,
          ["action"] = "Turning Point",
          ["alt_type"] = "BARO",
          ["speed"] = 5.5555555555556,
          ["task"] = 
          {
              ["id"] = "ComboTask",
              ["params"] = 
              {
                  ["tasks"] = 
                  {
                  }, -- end of ["tasks"]
              }, -- end of ["params"]
          }, -- end of ["task"]
          ["type"] = "Turning Point",
          ["ETA"] = 0,
          ["ETA_locked"] = false,
          ["y"] = $GROUPY$,
          ["x"] = $GROUPX$,
          ["name"] = "",
          ["formation_template"] = "",
          ["speed_locked"] = true,
          ["action"] = "On Road",
      }, -- end of [2]
      [3] = 
      {
          ["alt"] = 8,
          ["action"] = "Turning Point",
          ["alt_type"] = "BARO",
          ["speed"] = 5.5555555555556,
          ["task"] = 
          {
              ["id"] = "ComboTask",
              ["params"] = 
              {
                  ["tasks"] = 
                  {
                  }, -- end of ["tasks"]
              }, -- end of ["params"]
          }, -- end of ["task"]
          ["type"] = "Turning Point",
          ["ETA"] = 0,
          ["ETA_locked"] = false,
          ["y"] = $GROUPY2$,
          ["x"] = $GROUPX2$,
          ["name"] = "",
          ["formation_template"] = "",
          ["speed_locked"] = true,
          ["action"] = "On Road",
      }, -- end of [2]
      [4] = 
      {
          ["alt"] = 8,
          ["action"] = "Turning Point",
          ["alt_type"] = "BARO",
          ["speed"] = 5.5555555555556,
          ["task"] = 
          {
              ["id"] = "ComboTask",
              ["params"] = 
              {
                  ["tasks"] = 
                  {
                  }, -- end of ["tasks"]
              }, -- end of ["params"]
          }, -- end of ["task"]
          ["type"] = "Turning Point",
          ["ETA"] = 0,
          ["ETA_locked"] = false,
          ["y"] = $GROUPY2$,
          ["x"] = $GROUPX2$,
          ["name"] = "",
          ["formation_template"] = "",
          ["speed_locked"] = true,
          ["action"] = "Off Road",
      }, -- end of [2]
    }, -- end of ["points"]
    ["routeRelativeTOT"] = false,
  }, -- end of ["route"]
  ["groupId"] = $GROUPID$,
  ["hidden"] = $HIDDEN$,
  ["units"] =
  {
$UNITS$
  }, -- end of ["units"]
  ["y"] = $GROUPY$,
  ["x"] = $GROUPX$,
  ["name"] = "$NAME$",
  ["start_time"] = 0,
  ["hiddenOnPlanner"] = $HIDDEN$,
