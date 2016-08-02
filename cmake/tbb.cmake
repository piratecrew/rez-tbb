set(TBB_LIB_ARCH intel64)
set

# FInd out architecture
if(CMAKE_SIZEOF_VOID_P MATCHES "8")
    set(APPEND TBB_LIB_ARCH "intel64")
elseif(CMAKE_SIZEOF_VOID_P MATCHES "4")
    list(APPEND TBB_LIB_ARCH "ia32")
endif()

# Find out compiler version
if(${CMAKE_CXX_COMPILER_VERSION} LESS "4.4")
	set(TBB_COMPILER gcc4.1)
else()
	set(TBB_COMPILER gcc4.4)
endif()

if(NOT tbb_COMPONENTS)
    set(tbb_COMPONENTS tbb)
endif(NOT tbb_COMPONENTS)

set(tbb_INCLUDE_DIRS       $ENV{REZ_TBB_ROOT}/tbb/include)
set(tbb_LIBRARY_DIRS       $ENV{REZ_TBB_ROOT}/tbb/lib/${TBB_LIB_ARCH}/${TBB_COMPILER})
set(tbb_LIBRARIES          ${tbb_COMPONENTS})