if(DBUSCXX_INCLUDE_DIR AND DBUSCXX_LIBRARY) 
	# Already in cache, be silent 	
set(DBUSCXX_FIND_QUIETLY TRUE)
	
endif(DBUSCXX_INCLUDE_DIR AND DBUSCXX_LIBRARY) 

set(DBUSCXX_LIBRARY) 
set(DBUSCXX_INCLUDE_DIR) 

FIND_PATH(DBUSCXX_INCLUDE_DIR dbus-cxx
			  /usr/local/include/
			  /usr/local/include/dbus-cxx-0.8/
)

FIND_LIBRARY(DBUSCXX_LIBRARY 
                         NAMES dbus-cxx-0.8 dbus-cxx 	
                         PATHS /usr/local/lib
			       /usr/lib 	
)

if(DBUSCXX_INCLUDE_DIR AND DBUSCXX_LIBRARY)    
      MESSAGE( STATUS "dbus found: includes in ${DBUSCXX_INCLUDE_DIR}, library in ${DBUSCXX_LIBRARY}")    
      set(DBUSCXX_FOUND TRUE) 
else#(DBUSCXX_INCLUDE_DIR AND DBUSCXX_LIBRARY)    
      MESSAGE( STATUS "dbus not found") 
endif#(DBUSCXX_INCLUDE_DIR AND DBUSCXX_LIBRARY) 
#MARK_AS_ADVANCED(DBUSCXX_INCLUDE_DIR DBUSCXX_LIBRARY)
