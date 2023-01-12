help([[
loads UFS Model prerequisites for GCP/Intel
]])

intelpython_ver=os.getenv("intelpython_ver") or "2021.3.0"
load(pathJoin("intelpython", intelpython_ver))

prepend_path("MODULEPATH", "/apps/hpc-stack/libs/hpc-stack/modulefiles/stack")

hpc_ver=os.getenv("hpc_ver") or "1.1.0"
load(pathJoin("hpc", hpc_ver))

hpc_intel_ver=os.getenv("hpc_intel_ver") or "2021.3.0"
load(pathJoin("hpc-intel", hpc_intel_ver))

hpc_impi_ver=os.getenv("hpc_impi_ver") or "2021.3.0"
load(pathJoin("hpc-impi", hpc_impi_ver))

load("ufs_common")

setenv("CC", "mpiicc")
setenv("CXX", "mpiicpc")
setenv("FC", "mpiifort")
setenv("CMAKE_Platform", "gcp.intel")

whatis("Description: UFS build environment")
