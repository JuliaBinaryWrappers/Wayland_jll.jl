# Use baremodule to shave off a few KB from the serialized `.ji` file
baremodule Wayland_jll
using Base
using Base: UUID
import JLLWrappers

JLLWrappers.@generate_main_file_header("Wayland")
JLLWrappers.@generate_main_file("Wayland", UUID("a2964d1f-97da-50d4-b82a-358c7fce9d89"))
end  # module Wayland_jll
