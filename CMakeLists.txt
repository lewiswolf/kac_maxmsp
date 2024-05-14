cmake_minimum_required(VERSION 3.24)
project(
	kac_maxmsp
	VERSION 0.1.0
	DESCRIPTION "Max MSP library for working with arbitrarily shaped drums."
	LANGUAGES CXX
)

# add kac_core
add_subdirectory(${CMAKE_CURRENT_SOURCE_DIR}/src/kac_core)

enable_testing()

string(REGEX REPLACE "(.*)/" "" THIS_PACKAGE_NAME "${CMAKE_CURRENT_SOURCE_DIR}")

if (APPLE)
	if (${CMAKE_GENERATOR} MATCHES "Xcode")
			if (${XCODE_VERSION} VERSION_LESS 10)
				message(STATUS "Xcode 10 or higher is required. Please install from the Mac App Store.")
				return ()
			elseif(${XCODE_VERSION} VERSION_GREATER_EQUAL 12)
				set(C74_BUILD_FAT YES)
			endif ()
	endif ()

	if (NOT CMAKE_OSX_ARCHITECTURES)
		if(C74_BUILD_FAT)
			set(CMAKE_OSX_ARCHITECTURES "x86_64;arm64" CACHE STRING "macOS architecture" FORCE)
		else()
			set(CMAKE_OSX_ARCHITECTURES ${CMAKE_SYSTEM_PROCESSOR} CACHE STRING "macOS architecture" FORCE)
		endif()
		message("CMAKE_OSX_ARCHITECTURES set to ${CMAKE_OSX_ARCHITECTURES}")
	endif()
endif()

# Misc setup and subroutines
include(${CMAKE_CURRENT_SOURCE_DIR}/src/min-api/script/min-package.cmake)

# Add the Lib, if it exists
if (EXISTS "${CMAKE_CURRENT_SOURCE_DIR}/src/min-lib/CMakeLists.txt")
	add_subdirectory(${CMAKE_CURRENT_SOURCE_DIR}/src/min-lib)
endif ()

# Generate a project for every folder in the "src/projects" folder
SUBDIRLIST(PROJECT_DIRS ${CMAKE_CURRENT_SOURCE_DIR}/src/projects)
foreach (project_dir ${PROJECT_DIRS})
	if (EXISTS "${CMAKE_CURRENT_SOURCE_DIR}/src/projects/${project_dir}/CMakeLists.txt")
		message("Generating: ${project_dir}")
		add_subdirectory(${CMAKE_CURRENT_SOURCE_DIR}/src/projects/${project_dir})
	endif ()
endforeach ()

# Comment the line below if you want automatic cmake regneration enabled
set(CMAKE_SUPPRESS_REGENERATION true)
