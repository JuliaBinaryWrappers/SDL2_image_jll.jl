# Use baremodule to shave off a few KB from the serialized `.ji` file
baremodule SDL2_image_jll
using Base
using Base: UUID
import JLLWrappers

JLLWrappers.@generate_main_file_header("SDL2_image")
JLLWrappers.@generate_main_file("SDL2_image", UUID("41f3cfe1-fd11-58ad-8074-b9730c29438b"))
end  # module SDL2_image_jll
