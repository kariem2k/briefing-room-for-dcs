briefingRoom.mission.missionFeatures.friendlyTaskableBomber = { }
briefingRoom.mission.missionFeatures.friendlyTaskableBomber.AUTO_AIM_RADIUS = 1000 -- in meters
briefingRoom.mission.missionFeatures.friendlyTaskableBomber.MARKER_NAME = "bomber"
briefingRoom.mission.missionFeatures.friendlyTaskableBomber.markID = nil -- ID of the mark on the map
briefingRoom.mission.missionFeatures.friendlyTaskableBomber.disableCooRemovedRadioMessage = false

briefingRoom.mission.missionFeatures.friendlyTaskableBomber.eventHandler = { }
function briefingRoom.mission.missionFeatures.friendlyTaskableBomber.eventHandler:onEvent(event)
  if event.id == world.event.S_EVENT_MARK_REMOVED then
    if briefingRoom.mission.missionFeatures.friendlyTaskableBomber.markID ~= nil and event.idx == briefingRoom.mission.missionFeatures.friendlyTaskableBomber.markID then
      if not briefingRoom.mission.missionFeatures.friendlyTaskableBomber.disableCooRemovedRadioMessage then
        briefingRoom.radioManager.play("Bomber: Affirm, coordinates discarded. Awaiting new coordinates.", "RadioCoordinatesDiscardedM")
      end
      briefingRoom.mission.missionFeatures.friendlyTaskableBomber.markID = nil
    end
  elseif event.id == world.event.S_EVENT_MARK_ADDED then
    local markText = string.lower(tostring(event.text or ""))
    if markText == briefingRoom.mission.missionFeatures.friendlyTaskableBomber.MARKER_NAME then
      if briefingRoom.mission.missionFeatures.friendlyTaskableBomber.markID ~= nil then
        briefingRoom.mission.missionFeatures.friendlyTaskableBomber.disableCooRemovedRadioMessage = true
        trigger.action.removeMark(briefingRoom.mission.missionFeatures.friendlyTaskableBomber.markID)
        briefingRoom.mission.missionFeatures.friendlyTaskableBomber.disableCooRemovedRadioMessage = false
      end
      briefingRoom.mission.missionFeatures.friendlyTaskableBomber.markID = event.idx
      briefingRoom.radioManager.play("Bomber: Copy, coordinates updated.", "RadioCoordinatesUpdatedM")
      return
    end
  elseif event.id == world.event.S_EVENT_MARK_CHANGE then
    local markText = string.lower(tostring(event.text or ""))

    if markText == briefingRoom.mission.missionFeatures.friendlyTaskableBomber.MARKER_NAME then
      briefingRoom.radioManager.play("Bomber: Copy, coordinates updated.", "RadioCoordinatesUpdatedM")
      if briefingRoom.mission.missionFeatures.friendlyTaskableBomber.markID ~= nil then
        briefingRoom.mission.missionFeatures.friendlyTaskableBomber.disableCooRemovedRadioMessage = true
        trigger.action.removeMark(briefingRoom.mission.missionFeatures.friendlyTaskableBomber.markID)
        briefingRoom.mission.missionFeatures.friendlyTaskableBomber.disableCooRemovedRadioMessage = false
      end
      briefingRoom.mission.missionFeatures.friendlyTaskableBomber.markID = event.idx
    elseif briefingRoom.mission.missionFeatures.friendlyTaskableBomber.markID ~= nil and event.idx == briefingRoom.mission.missionFeatures.friendlyTaskableBomber.markID then
      briefingRoom.radioManager.play("Bomber: Affirm, coordinates discarded. Awaiting new coordinates.", "RadioCoordinatesDiscardedM")
      briefingRoom.mission.missionFeatures.friendlyTaskableBomber.markID = nil
    end
  end
end

-- Radio command to launch bombing run (called from F10 menu)
function briefingRoom.mission.missionFeatures.friendlyTaskableBomber.launchBombingRun()
  briefingRoom.radioManager.play("Pilot: Bomber, begin your run.", "RadioPilotBeginYourBombingRun")
 
  local marks = world.getMarkPanels()
  for _,m in ipairs(marks) do
    if briefingRoom.mission.missionFeatures.friendlyTaskableBomber.markID ~= nil and m.idx == briefingRoom.mission.missionFeatures.friendlyTaskableBomber.markID then
      local group = dcsExtensions.getGroupByID(briefingRoom.mission.missionFeatures.groupsID.friendlyTaskableBomber)
      if group ~= nil then
        group:activate()
        local Start = {
          id = 'Start',
          params = {
          }
        }
        group:getController():setCommand(Start)
        timer.scheduleFunction(briefingRoom.mission.missionFeatures.friendlyTaskableBomber.setTask, {}, timer.getTime() + 10)
        briefingRoom.radioManager.play("Bomber: Copy, beginning bombing run on coordinates.", "RadioOtherPilotBeginBombing", briefingRoom.radioManager.getAnswerDelay(), nil, nil)
      end
      return
    end
  end

  briefingRoom.radioManager.play("Bomber: Cannot comply. No coordinates provided for bombing run (add a marker named \""..string.upper(briefingRoom.mission.missionFeatures.friendlyTaskableBomber.MARKER_NAME).."\" on the F10 map to designate a target).", "RadioArtilleryNoCoordinates", briefingRoom.radioManager.getAnswerDelay())
end

function briefingRoom.mission.missionFeatures.friendlyTaskableBomber.setTask()
  local marks = world.getMarkPanels()
  for _,m in ipairs(marks) do
    if briefingRoom.mission.missionFeatures.friendlyTaskableBomber.markID ~= nil and m.idx == briefingRoom.mission.missionFeatures.friendlyTaskableBomber.markID then
      local group = dcsExtensions.getGroupByID(briefingRoom.mission.missionFeatures.groupsID.friendlyTaskableBomber)
      if group ~= nil then
        local currPos = mist.getLeadPos(group)
        local newTask = {
          id = 'Mission',
          airborne = true,
          params = {
            route = {
              points = {
                [1] = {
                  speed = 200,
                  x = dcsExtensions.lerp(currPos.x, m.pos.x,0.7),
                  y = dcsExtensions.lerp(currPos.z, m.pos.z,0.7),
                  type = 'Turning Point',
                  ETA_locked = false,
                  ETA = 100,
                  alt = 7620,
                  alt_type = "BARO",
                  speed_locked = false,
                  action = "Fly Over Point",
                  name = "BOMB",
                  task = {
                    id = "ComboTask",
                    params = {
                      tasks = {
                        [1] = {
                          enabled = true,
                          auto = false,
                          id = "Bombing",
                          number = 1,
                          params = {
                            direction = 0,
                            attackQtyLimit = false,
                            attackQty = 1,
                            expend = "Auto",
                            directionEnabled = false,
                            groupAttack = true,
                            altitude = 2000,
                            altitudeEnabled = false,
                            weaponType = 2147485694,
                            y = m.pos.z,
                            x = m.pos.x,
                          },
                        },
                        [2] = {
                          enabled = true,
                          auto = false,
                          id = "Orbit",
                          number = 2,
                          params = {
                            altitude = 7620,
                            pattern = "Circle",
                            speed = 100,
                          }
                        }
                      }
                    }
                  }
                },
              }
            },
          },
        }
        group:getController():setTask(newTask)
      end
      return
    end
  end
end

-- Add F10 menu command
missionCommands.addCommandForCoalition($LUAPLAYERCOALITION$, "Begin bombing run on provided coordinates", briefingRoom.f10Menu.missionMenu, briefingRoom.mission.missionFeatures.friendlyTaskableBomber.launchBombingRun, nil)

-- Enable event handler
world.addEventHandler(briefingRoom.mission.missionFeatures.friendlyTaskableBomber.eventHandler)
