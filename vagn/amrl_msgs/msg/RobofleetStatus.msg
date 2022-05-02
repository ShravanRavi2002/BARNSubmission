# Robot status report for RoboFleet 2.0 -- WIP

# human-readable general status
string status

# is the robot functioning normally?
bool is_ok

# battery percentage, 0 to 1
float32 battery_level

# human-readable location; map name, etc.
# For a campus building, this should be "[BuildingName][Floor]: [coordinates]" (e.g. "AHG2: (0, 10, 0)", "GDC3: (1.0, 3.0, 3.0)", etc.)
string location
