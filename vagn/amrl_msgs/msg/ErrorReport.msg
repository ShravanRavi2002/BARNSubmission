Header header

# Header from the laser scan that was received closest to the creation of this report
Header laser_header

# Severity level enum
uint8 INFO=0 # Information
uint8 SUBOPTIMAL=1 # Suboptimal but safe performance
uint8 RISKY=2 # risky, potentially unsafe (got away with it, but could have been catastrophic)
uint8 CATASTROPHIC=3 # catastrohpic (e.g. hit an obstacle)

# Subsystem enum
uint8 OTHER=0 # for forward compatibility -- details can be added to the free-text field or a new type can be added if we find there is demand
uint8 LOCALIZATION=1 # robot is mislocalized
uint8 NAVIGATION_PERCEPTION=2 # perception failure, e.g. it mis-classified grass as traversible
uint8 NAVIGATION_LOCAL_PLANNING=3 # problems with local planning
uint8 NAVIGATION_GLOBAL_PLANNING=4 # problems with global planning

# Should be one of the above severity levels
uint8 severity_level

# Should be one of the above subsystems
uint8 failed_subsystem

# Detailed text providing details about the error
string detailed_error_msg