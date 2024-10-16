#include "..\script_component.hpp"
/*
 * Author: SzwedzikPL
 * Checks if dogtag can be checked.
 *
 * Arguments:
 * 0: Player <OBJECT>
 * 1: Target <OBJECT>
 *
 * Return Value:
 * True if dogtag can be checked <BOOL>
 *
 * Example:
 * _canCheck = [player, cursorTarget] call ace_dogtags_fnc_canCheckDogtag
 *
 * Public: No
 */

params ["", "_target"];

if (isNull _target) exitWith {false};

// Check if disabled for faction
if ((faction _target) in ACEGVAR(dogtags,disabledFactions)) exitWith {false};

!(_target call ACEFUNC(common,isAwake))
