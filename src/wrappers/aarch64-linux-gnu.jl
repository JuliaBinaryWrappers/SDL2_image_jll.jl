# Autogenerated wrapper script for SDL2_image_jll for aarch64-linux-gnu
export libsdl2_image

using SDL2_jll
using libwebp_jll
using JpegTurbo_jll
using libpng_jll
using Libtiff_jll
JLLWrappers.@generate_wrapper_header("SDL2_image")
JLLWrappers.@declare_library_product(libsdl2_image, "libSDL2_image-2.0.so.0")
function __init__()
    JLLWrappers.@generate_init_header(SDL2_jll, libwebp_jll, JpegTurbo_jll, libpng_jll, Libtiff_jll)
    JLLWrappers.@init_library_product(
        libsdl2_image,
        "lib/libSDL2_image.so",
        RTLD_LAZY | RTLD_DEEPBIND,
    )

    JLLWrappers.@generate_init_footer()
end  # __init__()
