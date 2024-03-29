# osx settings


# pyenv
if test -e /usr/local/bin/pyenv  
  eval (pyenv init - | source)
end

# sdk
set SDK_DIR $HOME/sdk $SDK_DIR

# vcpkg
export VCPKG_ROOT=$HOME/sdk/vcpkg
export CMAKE_TOOLCHAIN_FILE=$VCPKG_ROOT/scripts/buildsystems/vcpkg.cmake
alias vcpkg="$VCPKG_ROOT/vcpkg"

# vulkan
set VULKAN_SDK $HOME/sdk/vulkansdk/macOS $VULKAN_SDK
set PATH $VULKAN_SDK/bin $PATH
set DYLD_LIBRARY_PATH $VULKAN_SDK/lib $DYLD_LIBRARY_PATH
set VK_ICD_FILENAMES $VULKAN_SDK/etc/vulkan/icd.d/MoltenVK_icd.json $VK_ICD_FILENAMES
set VK_LAYER_PATH $VULKAN_SDK/etc/vulkan/explicit_layer.d $VK_LAYER_PATH

# cmake
set CMAKE_PATH /usr/local/lib/cmake $CMAKE_PATH

# cargo
set PATH $HOME/.cargo/bin $PATH

# BOOST
set BOOST_ROOT /usr/local/Cellar/boost/1.72.0 $BOOST_ROOT
set BOOST_INCLUDE $BOOST_ROOT/include $BOOST_INCLUDE
set BOOST_INCLUDEDIR $BOOST_ROOT/include $BOOST_INCLUDEDIR
set BOOST_LIBDIR $BOOST_ROOT/lib $BOOST_LIBDIR

# gcc
# temporal
# if not test -e /usr/local/bin/gcc
#   ln -s /usr/local/bin/gcc-9 /usr/local/bin/gcc
#   ln -s /usr/local/bin/g++-9 /usr/local/bin/g++
# end

set CC /usr/local/bin/gcc-9 $CC
set CXX /usr/local/bin/g++-9 $CXX

# llvm
# set CC /usr/local/Cellar/llvm/9.0.1/bin/clang $CC
# set CXX /usr/local/Cellar/llvm/9.0.1/bin/clang++ $CXX
# set OPENMP_LIBRARIES /usr/local/Cellar/llvm/9.0.1/lib $OPENMP_LIBRARIES
# set OPENMP_INCLUDES /usr/local/Cellar/llvm/9.0.1/include $OPENMP_INCLUDES

set CMAKE_C_COMPILER $CC $CMAKE_C_COMPILER
set CMAKE_CXX_COMPILER $CXX $CMAKE_CXX_COMPILER

# Blender
set BLENDER_PATH /Applications/Blender.app $BLENDER_PATH
set BLENDER_BIN $BLENDER_PATH/Contents/Resources/2.83/python/bin $BLENDER_BIN
alias bpython="$BLENDER_BIN/python3.7m"
alias bpip="$BLENDER_BIN/pip"

# Houdini
set HFS /Applications/Houdini/Houdini18.0.385/Frameworks/Houdini.framework/Versions/Current/Resources $HFS
set HPY $HFS/Frameworks/Python.framework/Versions/Current/bin $HPY
set PATH $HFS/bin $PATH
set CMAKE_MODULE_PATH $HFS/toolkit $CMAKE_MODULE_PATH
set H $HFS $H
set HB $H/bin $HB
set HDSO $H/../Libraries $HDSO
set HH $H/houdini $HH
set HHC $HH/config $HHC
set HT $H/toolkit $HT
set HSB $HH/sbin $HSB
set TEMP $HDK/tmp $TEMP
set JAVA_HOME /Library/Java/Home $JAVA_HOME
set HOUDINI_MAJOR_RELEASE 18 $HOUDINI_MAJOR_RELEASE
set HOUDINI_MINOR_RELEASE 0 $HOUDINI_MINOR_RELEASE
set HOUDINI_BUILD_VERSION 287 $HOUDINI_BUILD_VERSION
set HOUDINI_VERSION $HOUDINI_MAJOR_RELEASE.$HOUDINI_MINOR_RELEASE.$HOUDINI_BUILD_VERSION $HOUDINI_VERSION
set HOUDINI_BUILD_KERNEL 18.7.0 $HOUDINI_BUILD_KERNEL
set HOUDINI_BUILD_PLATFORM "`sw_vers -productName sw_vers -productVersion`" $HOUDINI_BUILD_PLATFORM
set HOUDINI_BUILD_COMPILER "10.0.1.10010046" $HOUDINI_BUILD_COMPILER
set HOUDINI_ENABLE_RETINA 0 $HOUDINI_ENABLE_RETINA
