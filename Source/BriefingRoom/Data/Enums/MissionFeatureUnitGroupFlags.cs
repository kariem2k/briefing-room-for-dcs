﻿/*
==========================================================================
This file is part of Briefing Room for DCS World, a mission
generator for DCS World, by @akaAgar
(https://github.com/akaAgar/briefing-room-for-dcs)

Briefing Room for DCS World is free software: you can redistribute it
and/or modify it under the terms of the GNU General Public License
as published by the Free Software Foundation, either version 3 of
the License, or (at your option) any later version.

Briefing Room for DCS World is distributed in the hope that it will
be useful, but WITHOUT ANY WARRANTY; without even the implied warranty
of MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
GNU General Public License for more details.

You should have received a copy of the GNU General Public License
along with Briefing Room for DCS World.
If not, see https://www.gnu.org/licenses/
==========================================================================
*/

using System;

namespace BriefingRoom4DCS.Data
{
    [Flags]
    internal enum FeatureUnitGroupFlags
    {
        EmbeddedAirDefense = 2,

        Friendly = 4,

        TACAN = 16,

        AwayFromMissionArea = 32,

        ImmediateAircraftActivation = 64,

        SpawnOnObjective = 128,

        SameSideAsTarget = 256,

        RadioAircraftActivation = 512,

        IgnoreBorders = 1024,

        GroundStart = 2048,

        MoveTowardObjectives = 4096,

        MoveTowardPlayerBase = 8192,
    }
}
