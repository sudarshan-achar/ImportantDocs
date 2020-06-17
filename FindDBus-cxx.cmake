if(DBUSCXX_INCLUDE_DIR AND DBUSCXX_LIBRARY) 
	# Already in cache, be silent 	
set(DBUSCXX_FIND_QUIETLY TRUE)
	
endif(DBUSCXX_INCLUDE_DIR AND DBUSCXX_LIBRARY) 

set(DBUSCXX_LIBRARY) 
set(SIGCPP_LIBRARY)
set(DBUSCXX_INCLUDE_DIR) 
set(SIGCPP_INCLUDE_DIR)
set(SIGCPP_CONFIG_INCLUDE_DIR)

FIND_PATH(DBUSCXX_INCLUDE_DIR dbus-cxx
			  /usr/include 	
                          /usr/local/include 	
                          /usr/local/include/dbus-cxx-0.8 
)

FIND_PATH(SIGCPP_INCLUDE_DIR sigc++
			  /usr/include 	
                          /usr/local/include/sigc++-2.0
                          #/usr/include/sigc++-2.0 	
)

FIND_PATH(SIGCPP_CONFIG_INCLUDE_DIR sigc++config.h
			  /usr/include 	
			  /usr/local/lib/sigc++-2.0/include
                          #/usr/lib/x86_64-linux-gnu/sigc++-2.0/include
)

FIND_LIBRARY(DBUSCXX_LIBRARY 
                         NAMES dbus-cxx-0.8 dbus-cxx 	
                         PATHS /usr/lib 	
                               /usr/local/lib 
)

FIND_LIBRARY(SIGCPP_LIBRARY 
                         NAMES sigc++-2.0 sigc++ 	
                         PATHS /usr/lib 	
                               /usr/lib/x86_64-linux-gnu/sigc++-2.0
			       /var/lib/dpkg/info/ 
)

if(DBUSCXX_INCLUDE_DIR AND DBUSCXX_LIBRARY)    
MESSAGE( STATUS "dbus-cxx found: includes in ${DBUSCXX_INCLUDE_DIR}, library in ${DBUSCXX_LIBRARY}")    
set(DBUSCXX_FOUND TRUE) 
else(DBUSCXX_INCLUDE_DIR AND DBUSCXX_LIBRARY)    
MESSAGE( STATUS "dbus not found") 
endif(DBUSCXX_INCLUDE_DIR AND DBUSCXX_LIBRARY) 
MARK_AS_ADVANCED(DBUSCXX_INCLUDE_DIR DBUSCXX_LIBRARY)

if(SIGCPP_INCLUDE_DIR)
MESSAGE( STATUS "sigc++ found: includes in ${SIGCPP_INCLUDE_DIR}")
else(SIGCPP_INCLUDE_DIR)    
MESSAGE( STATUS "sigc++ not found") 
endif(SIGCPP_INCLUDE_DIR)

if(SIGCPP_CONFIG_INCLUDE_DIR)
MESSAGE( STATUS "sigc++ config found: includes in ${SIGCPP_CONFIG_INCLUDE_DIR}")
else(SIGCPP_CONFIG_INCLUDE_DIR)    
MESSAGE( STATUS "sigc++ config not found") 
endif(SIGCPP_CONFIG_INCLUDE_DIR)

if(SIGCPP_LIBRARY)
MESSAGE( STATUS "sigc++ libs config found: includes in ${SIGCPP_LIBRARY}")
else(SIGCPP_LIBRARY)    
MESSAGE( STATUS "sigc++ libs config not found") 
endif(SIGCPP_LIBRARY)

