/*
==========================================================================
This file is part of Briefing Room for DCS World, a mission
generator for DCS World, by @akaAgar (https://github.com/akaAgar/briefing-room-for-dcs)

Briefing Room for DCS World is free software: you can redistribute it
and/or modify it under the terms of the GNU General Public License
as published by the Free Software Foundation, either version 3 of
the License, or (at your option) any later version.

Briefing Room for DCS World is distributed in the hope that it will
be useful, but WITHOUT ANY WARRANTY; without even the implied warranty
of MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
GNU General Public License for more details.

You should have received a copy of the GNU General Public License
along with Briefing Room for DCS World. If not, see https://www.gnu.org/licenses/
==========================================================================
*/

using System;
using System.Linq;

namespace BriefingRoom4DCS.Data
{
    internal class DBCommonNames
    {
        internal const int MISSION_NAMES_PART_COUNT = 4;

        internal string[][] MissionNameParts { get; } = new string[MISSION_NAMES_PART_COUNT][];

        internal string MissionNameTemplate { get; }

        internal string[][] UnitFamilies { get; } = new string[Toolbox.EnumCount<UnitFamily>()][];

        internal string[] UnitGroups { get; } = new string[Toolbox.EnumCount<UnitFamily>()];

        internal string WPEgressName { get; }

        internal string WPFinalName { get; }

        internal string WPIngressName { get; }

        internal string WPInitialName { get; }

        internal string[] WPObjectivesNames { get; }

        public DBCommonNames()
        {
            int i;

            BriefingRoom.PrintToLog("Loading common global settings...");
            INIFile ini = new($"{BRPaths.DATABASE}Names.ini");
            MissionNameTemplate = ini.GetValue<string>("Mission", "Template");
            for (i = 0; i < MISSION_NAMES_PART_COUNT; i++)
                MissionNameParts[i] = ini.GetValueArray<string>("Mission", $"Part{i + 1}");

            for (i = 0; i < Toolbox.EnumCount<UnitFamily>(); i++)
            {
                UnitFamilies[i] = ini.GetValueArray<string>("UnitFamilies", ((UnitFamily)i).ToString());
                Array.Resize(ref UnitFamilies[i], 2);
                UnitGroups[i] = ini.GetValue<string>("UnitGroups", ((UnitFamily)i).ToString());
            }

            WPEgressName = ini.GetValue<string>("Waypoints", "Egress").ToUpperInvariant();
            WPFinalName = ini.GetValue<string>("Waypoints", "Final").ToUpperInvariant();
            WPIngressName = ini.GetValue<string>("Waypoints", "Ingress").ToUpperInvariant();
            WPInitialName = ini.GetValue<string>("Waypoints", "Initial").ToUpperInvariant();
            WPObjectivesNames = (from string wpName in ini.GetValueArray<string>("Waypoints", "Objectives") select wpName.ToUpperInvariant()).ToArray();
        }
    }
}