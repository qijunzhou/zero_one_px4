# Distributed under the OSI-approved BSD 3-Clause License.  See accompanying
# file Copyright.txt or https://cmake.org/licensing for details.

cmake_minimum_required(VERSION 3.5)

# If CMAKE_DISABLE_SOURCE_CHANGES is set to true and the source directory is an
# existing directory in our source tree, calling file(MAKE_DIRECTORY) on it
# would cause a fatal error, even though it would be a no-op.
if(NOT EXISTS "/home/tianxuanji/文档/PX4-Autopilot/build/zeroone_x6_default/external/Source/FlameGraph")
  file(MAKE_DIRECTORY "/home/tianxuanji/文档/PX4-Autopilot/build/zeroone_x6_default/external/Source/FlameGraph")
endif()
file(MAKE_DIRECTORY
  "/home/tianxuanji/文档/PX4-Autopilot/build/zeroone_x6_default/external/Build/FlameGraph"
  "/home/tianxuanji/文档/PX4-Autopilot/build/zeroone_x6_default/external/Install/FlameGraph"
  "/home/tianxuanji/文档/PX4-Autopilot/build/zeroone_x6_default/external/tmp/FlameGraph"
  "/home/tianxuanji/文档/PX4-Autopilot/build/zeroone_x6_default/external/Stamp/FlameGraph"
  "/home/tianxuanji/文档/PX4-Autopilot/build/zeroone_x6_default/external/Download/FlameGraph"
  "/home/tianxuanji/文档/PX4-Autopilot/build/zeroone_x6_default/external/Stamp/FlameGraph"
)

set(configSubDirs )
foreach(subDir IN LISTS configSubDirs)
    file(MAKE_DIRECTORY "/home/tianxuanji/文档/PX4-Autopilot/build/zeroone_x6_default/external/Stamp/FlameGraph/${subDir}")
endforeach()
if(cfgdir)
  file(MAKE_DIRECTORY "/home/tianxuanji/文档/PX4-Autopilot/build/zeroone_x6_default/external/Stamp/FlameGraph${cfgdir}") # cfgdir has leading slash
endif()
