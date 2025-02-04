  ["visible"] = false,
  ["tasks"] =
  {
  }, -- end of ["tasks"]
  ["uncontrollable"] = $NOCM$,
  ["task"] = "Ground Nothing",
  ["taskSelected"] = true,
  ["route"] =
  {
    ["points"] =
    {
      [1] =
      {
        ["alt"] = 10,
        ["type"] = "Turning Point",
        ["ETA"] = 0,
        ["alt_type"] = "BARO",
        ["formation_template"] = "",
        ["y"] = $GROUPY$,
        ["x"] = $GROUPX$,
        ["name"] = "",
        ["ETA_locked"] = true,
        ["speed"] = 5.5555555555556,
        ["action"] = "On Road",
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
        ["alt"] = 10,
        ["type"] = "Turning Point",
        ["ETA"] = 0.0,
        ["alt_type"] = "BARO",
        ["formation_template"] = "",
        ["y"] = $GROUPY2$,
        ["x"] = $GROUPX2$,
        ["name"] = "",
        ["ETA_locked"] = false,
        ["speed"] = 5.5555555555556,
        ["action"] = "On Road",
        ["task"] =
        {
          ["id"] = "ComboTask",
          ["params"] =
          {
            ["tasks"] =
            {
              [1] =
              {
                ["enabled"] = true,
                ["auto"] = false,
                ["id"] = "GoToWaypoint",
                ["number"] = 1,
                ["params"] =
                {
                  ["fromWaypointIndex"] = 2,
                  ["nWaypointIndx"] = 1,
                }, -- end of ["params"]
              }, -- end of [1]
            }, -- end of ["tasks"]
          }, -- end of ["params"]
        }, -- end of ["task"]
        ["speed_locked"] = true,
      }, -- end of [2]
    }, -- end of ["points"]
  }, -- end of ["route"]
  ["groupId"] = $GROUPID$,
  ["hidden"] = $HIDDEN$,
  ["hiddenOnMFD"] = $HIDDEN$,
  ["units"] =
  {
    $UNITS$
  }, -- end of ["units"]
  ["y"] = $GROUPY$,
  ["x"] = $GROUPX$,
  ["name"] = "$NAME$",
  ["start_time"] = 0,
