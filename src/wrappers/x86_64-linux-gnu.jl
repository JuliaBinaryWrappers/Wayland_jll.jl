# Autogenerated wrapper script for Wayland_jll for x86_64-linux-gnu
export libwayland_client, libwayland_cursor, libwayland_egl, libwayland_server, wayland_scanner

using Expat_jll
using Libffi_jll
JLLWrappers.@generate_wrapper_header("Wayland")
JLLWrappers.@declare_library_product(libwayland_client, "libwayland-client.so.0")
JLLWrappers.@declare_library_product(libwayland_cursor, "libwayland-cursor.so.0")
JLLWrappers.@declare_library_product(libwayland_egl, "libwayland-egl.so.1")
JLLWrappers.@declare_library_product(libwayland_server, "libwayland-server.so.0")
JLLWrappers.@declare_executable_product(wayland_scanner)
function __init__()
    JLLWrappers.@generate_init_header(Expat_jll, Libffi_jll)
    JLLWrappers.@init_library_product(
        libwayland_client,
        "lib/libwayland-client.so",
        RTLD_LAZY | RTLD_DEEPBIND,
    )

    JLLWrappers.@init_library_product(
        libwayland_cursor,
        "lib/libwayland-cursor.so",
        RTLD_LAZY | RTLD_DEEPBIND,
    )

    JLLWrappers.@init_library_product(
        libwayland_egl,
        "lib/libwayland-egl.so",
        RTLD_LAZY | RTLD_DEEPBIND,
    )

    JLLWrappers.@init_library_product(
        libwayland_server,
        "lib/libwayland-server.so",
        RTLD_LAZY | RTLD_DEEPBIND,
    )

    JLLWrappers.@init_executable_product(
        wayland_scanner,
        "bin/wayland-scanner",
    )

    JLLWrappers.@generate_init_footer()
end  # __init__()
