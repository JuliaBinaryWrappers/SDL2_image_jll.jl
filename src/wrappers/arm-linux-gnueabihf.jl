# Autogenerated wrapper script for SDL2_image_jll for arm-linux-gnueabihf
export libsdl2_image

using SDL2_jll
using libwebp_jll
using JpegTurbo_jll
using libpng_jll
using Libtiff_jll
## Global variables
PATH = ""
LIBPATH = ""
LIBPATH_env = "LD_LIBRARY_PATH"

# Relative path to `libsdl2_image`
const libsdl2_image_splitpath = ["lib", "libSDL2_image.so"]

# This will be filled out by __init__() for all products, as it must be done at runtime
libsdl2_image_path = ""

# libsdl2_image-specific global declaration
# This will be filled out by __init__()
libsdl2_image_handle = C_NULL

# This must be `const` so that we can use it with `ccall()`
const libsdl2_image = "libSDL2_image-2.0.so.0"


"""
Open all libraries
"""
function __init__()
    global artifact_dir = abspath(artifact"SDL2_image")

    # Initialize PATH and LIBPATH environment variable listings
    global PATH_list, LIBPATH_list
    # We first need to add to LIBPATH_list the libraries provided by Julia
    append!(LIBPATH_list, [joinpath(Sys.BINDIR, Base.LIBDIR, "julia"), joinpath(Sys.BINDIR, Base.LIBDIR)])
    # From the list of our dependencies, generate a tuple of all the PATH and LIBPATH lists,
    # then append them to our own.
    foreach(p -> append!(PATH_list, p), (SDL2_jll.PATH_list, libwebp_jll.PATH_list, JpegTurbo_jll.PATH_list, libpng_jll.PATH_list, Libtiff_jll.PATH_list,))
    foreach(p -> append!(LIBPATH_list, p), (SDL2_jll.LIBPATH_list, libwebp_jll.LIBPATH_list, JpegTurbo_jll.LIBPATH_list, libpng_jll.LIBPATH_list, Libtiff_jll.LIBPATH_list,))

    global libsdl2_image_path = normpath(joinpath(artifact_dir, libsdl2_image_splitpath...))

    # Manually `dlopen()` this right now so that future invocations
    # of `ccall` with its `SONAME` will find this path immediately.
    global libsdl2_image_handle = dlopen(libsdl2_image_path)
    push!(LIBPATH_list, dirname(libsdl2_image_path))

    # Filter out duplicate and empty entries in our PATH and LIBPATH entries
    filter!(!isempty, unique!(PATH_list))
    filter!(!isempty, unique!(LIBPATH_list))
    global PATH = join(PATH_list, ':')
    global LIBPATH = join(LIBPATH_list, ':')

    # Add each element of LIBPATH to our DL_LOAD_PATH (necessary on platforms
    # that don't honor our "already opened" trick)
    #for lp in LIBPATH_list
    #    push!(DL_LOAD_PATH, lp)
    #end
end  # __init__()

