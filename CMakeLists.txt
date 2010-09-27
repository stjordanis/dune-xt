PROJECT(dune-stuff)

#set minimum cmake version
cmake_minimum_required(VERSION 2.6)

set(CMAKE_MODULE_PATH ${CMAKE_CURRENT_SOURCE_DIR}/cmake )
include(UseDoxygen)

FIND_PACKAGE(Boost 1.35.0 REQUIRED)
INCLUDE_DIRECTORIES(${Boost_INCLUDE_DIR})

#----------------------------------------------------------------------------------------------------
# General Settings
#----------------------------------------------------------------------------------------------------
SET( CMAKE_ALLOW_LOOSE_LOOP_CONSTRUCTS true )
SET( CMAKE_FIND_LIBRARY_SUFFIXES ".so" ".lib" ".la" ".a")
SET( CMAKE_COLOR_MAKEFILE ON)

EXECUTE_PROCESS(
	COMMAND ${CMAKE_SOURCE_DIR}/getRevision.sh
	OUTPUT_VARIABLE COMMIT
	ERROR_VARIABLE shell_error
	OUTPUT_STRIP_TRAILING_WHITESPACE
)

#----------------------------------------------------------------------------------------------------
# Options, that can be changed be the User in order to customise dune-stokes
#----------------------------------------------------------------------------------------------------
SET( BLAS_LIB
	"blas" CACHE STRING
	"" )

SET( GRIDTYPE
	"ALUGRID_SIMPLEX" CACHE STRING
	"GRIDTYPE" )

SET( GRIDDIM
	"2" CACHE STRING
	"GRIDDIM" )

SET( POLORDER
	"1" CACHE STRING
	"POLORDER" )

SET( ALUGRID_BASE_PATH
	"/share/dune/Modules/modules_x86_64/ALUGrid-1.22" CACHE STRING
	"ALUGRID_BASE_PATH" )

SET( UGGRID_BASE_PATH
	"/share/dune/Modules/modules_x86_64/ug" CACHE STRING
	"UGGRID_BASE_PATH" )

SET( CXX_FLAGS
	"-Wall -O3 -g -ggdb " CACHE STRING
	"")

IF( ${GRIDTYPE} STREQUAL "UGGRID" )
	ADD_DEFINITIONS( -I${UGGRID_BASE_PATH}/include -DENABLE_UG )
	LINK_DIRECTORIES( ${UGGRID_BASE_PATH}/lib/ )
	SET( UGLIBS "ugS3" "ugS2" "devS")
ENDIF( ${GRIDTYPE} STREQUAL "UGGRID" )

ADD_DEFINITIONS(-DHAVE_CONFIG_H )
ADD_DEFINITIONS(-DGRIDDIM=${GRIDDIM}  -DCOMMIT="${COMMIT}"  )
ADD_DEFINITIONS(-DPOLORDER=${POLORDER}  -D${GRIDTYPE} )
ADD_DEFINITIONS( 
	-I${ALUGRID_BASE_PATH}/include
	-I${ALUGRID_BASE_PATH}/include/serial 
	-I${ALUGRID_BASE_PATH}/include/duneinterface -DENABLE_ALUGRID )



#needs to come first to include correct config.h
INCLUDE_DIRECTORIES( ${dune-stuff_SOURCE_DIR} )

SET( MODULES common istl grid fem )

FOREACH( MODULE ${MODULES} )
    INCLUDE_DIRECTORIES( ${dune-stuff_SOURCE_DIR}/../dune-${MODULE} )
    LINK_DIRECTORIES(${dune-stuff_SOURCE_DIR}/../dune-${MODULE}/${MODULE}/.libs )
ENDFOREACH(MODULE)
LINK_DIRECTORIES( "/usr/lib" "${ALUGRID_BASE_PATH}/lib" "${GRAPE_PATH}" )
ADD_DEFINITIONS( ${CXX_FLAGS} )

FILE( GLOB stuff "stuff/*.hh" )

set_source_files_properties( ${stuff} PROPERTIES HEADER_FILE_ONLY 1 )

ADD_EXECUTABLE(function_test src/function_test.cc ${stokes} ${stuff} )
TARGET_LINK_LIBRARIES(function_test "common" "fem" "grid" ${BLAS_LIB} "alugrid" ${UGLIBS}  "GL" ${ParaLIBS} )