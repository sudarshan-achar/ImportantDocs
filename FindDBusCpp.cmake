
set(DBUSCPP_LIBRARY) 
set(DBUSCPP_INCLUDE_DIR) 

FIND_PATH(DBUSCPP_INCLUDE_DIR dbus-c++
			  /usr/include/
			  /usr/include/dbus-c++-1/
                          /usr/local/include/
)

FIND_LIBRARY(DBUSCPP_LIBRARY 
                         NAMES dbus-c++-1 dbus-c++ 	
                         PATHS /usr/lib/x86_64-linux-gnu/
			       /usr/lib/ 	
)

if(DBUSCPP_INCLUDE_DIR AND DBUSCPP_LIBRARY)    
MESSAGE( STATUS "dbus-c++ found: includes in ${DBUSCPP_INCLUDE_DIR}, library in ${DBUSCPP_LIBRARY}")    
set(DBUSCPP_FOUND TRUE) 
else(DBUSCPP_INCLUDE_DIR AND DBUSCPP_LIBRARY)    
MESSAGE( STATUS "dbus-c++ not found") 
endif(DBUSCPP_INCLUDE_DIR AND DBUSCPP_LIBRARY)
