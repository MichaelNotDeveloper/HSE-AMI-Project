# Install script for directory: /Users/meshaza/pmi-233-1-Michael-Zameshaev-MeshaZa

# Set the install prefix
if(NOT DEFINED CMAKE_INSTALL_PREFIX)
  set(CMAKE_INSTALL_PREFIX "/usr/local")
endif()
string(REGEX REPLACE "/$" "" CMAKE_INSTALL_PREFIX "${CMAKE_INSTALL_PREFIX}")

# Set the install configuration name.
if(NOT DEFINED CMAKE_INSTALL_CONFIG_NAME)
  if(BUILD_TYPE)
    string(REGEX REPLACE "^[^A-Za-z0-9_]+" ""
           CMAKE_INSTALL_CONFIG_NAME "${BUILD_TYPE}")
  else()
    set(CMAKE_INSTALL_CONFIG_NAME "")
  endif()
  message(STATUS "Install configuration: \"${CMAKE_INSTALL_CONFIG_NAME}\"")
endif()

# Set the component getting installed.
if(NOT CMAKE_INSTALL_COMPONENT)
  if(COMPONENT)
    message(STATUS "Install component: \"${COMPONENT}\"")
    set(CMAKE_INSTALL_COMPONENT "${COMPONENT}")
  else()
    set(CMAKE_INSTALL_COMPONENT)
  endif()
endif()

# Is this installation the result of a crosscompile?
if(NOT DEFINED CMAKE_CROSSCOMPILING)
  set(CMAKE_CROSSCOMPILING "FALSE")
endif()

# Set default install directory permissions.
if(NOT DEFINED CMAKE_OBJDUMP)
  set(CMAKE_OBJDUMP "/Library/Developer/CommandLineTools/usr/bin/objdump")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for each subdirectory.
  include("/Users/meshaza/pmi-233-1-Michael-Zameshaev-MeshaZa/build/tasks/multiplication/cmake_install.cmake")
  include("/Users/meshaza/pmi-233-1-Michael-Zameshaev-MeshaZa/build/tasks/next_even/cmake_install.cmake")
  include("/Users/meshaza/pmi-233-1-Michael-Zameshaev-MeshaZa/build/tasks/is_leap/cmake_install.cmake")
  include("/Users/meshaza/pmi-233-1-Michael-Zameshaev-MeshaZa/build/tasks/chocolate/cmake_install.cmake")
  include("/Users/meshaza/pmi-233-1-Michael-Zameshaev-MeshaZa/build/tasks/min_divisor/cmake_install.cmake")
  include("/Users/meshaza/pmi-233-1-Michael-Zameshaev-MeshaZa/build/tasks/fibonacci/cmake_install.cmake")
  include("/Users/meshaza/pmi-233-1-Michael-Zameshaev-MeshaZa/build/tasks/reduce_fraction/cmake_install.cmake")
  include("/Users/meshaza/pmi-233-1-Michael-Zameshaev-MeshaZa/build/tasks/palindrome/cmake_install.cmake")
  include("/Users/meshaza/pmi-233-1-Michael-Zameshaev-MeshaZa/build/tasks/password/cmake_install.cmake")
  include("/Users/meshaza/pmi-233-1-Michael-Zameshaev-MeshaZa/build/tasks/sort_students/cmake_install.cmake")
  include("/Users/meshaza/pmi-233-1-Michael-Zameshaev-MeshaZa/build/tasks/tests_checking/cmake_install.cmake")
  include("/Users/meshaza/pmi-233-1-Michael-Zameshaev-MeshaZa/build/tasks/admission/cmake_install.cmake")
  include("/Users/meshaza/pmi-233-1-Michael-Zameshaev-MeshaZa/build/tasks/scorer/cmake_install.cmake")
  include("/Users/meshaza/pmi-233-1-Michael-Zameshaev-MeshaZa/build/tasks/unixpath/cmake_install.cmake")
  include("/Users/meshaza/pmi-233-1-Michael-Zameshaev-MeshaZa/build/tasks/provinces/cmake_install.cmake")
  include("/Users/meshaza/pmi-233-1-Michael-Zameshaev-MeshaZa/build/tasks/search/cmake_install.cmake")
  include("/Users/meshaza/pmi-233-1-Michael-Zameshaev-MeshaZa/build/tasks/rational/cmake_install.cmake")
  include("/Users/meshaza/pmi-233-1-Michael-Zameshaev-MeshaZa/build/tasks/stack/cmake_install.cmake")
  include("/Users/meshaza/pmi-233-1-Michael-Zameshaev-MeshaZa/build/tasks/queue/cmake_install.cmake")

endif()

if(CMAKE_INSTALL_COMPONENT)
  set(CMAKE_INSTALL_MANIFEST "install_manifest_${CMAKE_INSTALL_COMPONENT}.txt")
else()
  set(CMAKE_INSTALL_MANIFEST "install_manifest.txt")
endif()

string(REPLACE ";" "\n" CMAKE_INSTALL_MANIFEST_CONTENT
       "${CMAKE_INSTALL_MANIFEST_FILES}")
file(WRITE "/Users/meshaza/pmi-233-1-Michael-Zameshaev-MeshaZa/build/${CMAKE_INSTALL_MANIFEST}"
     "${CMAKE_INSTALL_MANIFEST_CONTENT}")
