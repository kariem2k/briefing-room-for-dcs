﻿/*
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

using BriefingRoom4DCSWorld.Attributes;

namespace BriefingRoom4DCSWorld
{
    /// <summary>
    /// Enumerates various relative amount value, from "very low" to "very high", with a "None" value
    /// </summary>
    public enum AmountN
    {
        [TreeViewEnum("Random", "Use a random value.")]
        Random,

        [TreeViewEnum("None", "None at all.")]
        None,
        
        [TreeViewEnum("Very low", "Very low amount.")]
        VeryLow,
        
        [TreeViewEnum("Low", "Low amount.")]
        Low,
        
        [TreeViewEnum("Average", "Average/balanced amount.")]
        Average,
        
        [TreeViewEnum("High", "High amount.")]
        High,
        
        [TreeViewEnum("Very high", "Very high amount.")]
        VeryHigh
    }
}
