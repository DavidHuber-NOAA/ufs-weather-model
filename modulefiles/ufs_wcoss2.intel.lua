help([[
loads UFS Model prerequisites on Cactus and Dogwood
]])

prepend_path("MODULEPATH", "/apps/ops/test/spack-stack-1.6.0-nco/envs/nco-intel-19.1.3.304/install/modulefiles/Core")

stack_intel_ver=os.getenv("stack_intel_ver") or "19.1.3.304"
load(pathJoin("stack-intel", stack_intel_ver))

stack_impi_ver=os.getenv("stack_cray_mpich_ver") or "8.1.9"
load(pathJoin("stack-cray-mpich", stack_cray_mpich_ver))

cmake_ver=os.getenv("cmake_ver") or "3.23.1"
load(pathJoin("cmake", cmake_ver))

-- Use older version of esmf, which changes the version number of mapl
setenv("esmf_ver", "8.5.0")
setenv("mapl_ver", "2.40.3-esmf-8.5.0")

-- Use a slightly newer version of crtm
setenv("crtm_ver", "2.4.0.1")

load("ufs_common")

nccmp_ver=os.getenv("nccmp_ver") or "1.9.0.1"
load(pathJoin("nccmp", nccmp_ver))

setenv("CC", "cc")
setenv("CXX", "CC")
setenv("FC", "ftn")
setenv("CMAKE_Platform", "wcoss2")

whatis("Description: UFS build environment")
