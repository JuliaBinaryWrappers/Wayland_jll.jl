# Autogenerated wrapper script for Wayland_jll for aarch64-linux-gnu
export libwayland_server, libwayland_egl, libwayland_client, libwayland_cursor, wayland_scanner

using Expat_jll
using Libffi_jll
using XML2_jll
## Global variables
PATH = ""
LIBPATH = ""
LIBPATH_env = "LD_LIBRARY_PATH"

# Relative path to `libwayland_server`
const libwayland_server_splitpath = ["lib", "libwayland-server.so"]

# This will be filled out by __init__() for all products, as it must be done at runtime
libwayland_server_path = ""

# libwayland_server-specific global declaration
# This will be filled out by __init__()
libwayland_server_handle = C_NULL

# This must be `const` so that we can use it with `ccall()`
const libwayland_server = "libwayland-server.so.0"


# Relative path to `libwayland_egl`
const libwayland_egl_splitpath = ["lib", "libwayland-egl.so"]

# This will be filled out by __init__() for all products, as it must be done at runtime
libwayland_egl_path = ""

# libwayland_egl-specific global declaration
# This will be filled out by __init__()
libwayland_egl_handle = C_NULL

# This must be `const` so that we can use it with `ccall()`
const libwayland_egl = "libwayland-egl.so.1"


# Relative path to `libwayland_client`
const libwayland_client_splitpath = ["lib", "libwayland-client.so"]

# This will be filled out by __init__() for all products, as it must be done at runtime
libwayland_client_path = ""

# libwayland_client-specific global declaration
# This will be filled out by __init__()
libwayland_client_handle = C_NULL

# This must be `const` so that we can use it with `ccall()`
const libwayland_client = "libwayland-client.so.0"


# Relative path to `libwayland_cursor`
const libwayland_cursor_splitpath = ["lib", "libwayland-cursor.so"]

# This will be filled out by __init__() for all products, as it must be done at runtime
libwayland_cursor_path = ""

# libwayland_cursor-specific global declaration
# This will be filled out by __init__()
libwayland_cursor_handle = C_NULL

# This must be `const` so that we can use it with `ccall()`
const libwayland_cursor = "libwayland-cursor.so.0"


# Relative path to `wayland_scanner`
const wayland_scanner_splitpath = ["bin", "wayland-scanner"]

# This will be filled out by __init__() for all products, as it must be done at runtime
wayland_scanner_path = ""

# wayland_scanner-specific global declaration
function wayland_scanner(f::Function; adjust_PATH::Bool = true, adjust_LIBPATH::Bool = true)
    global PATH, LIBPATH
    env_mapping = Dict{String,String}()
    if adjust_PATH
        if !isempty(get(ENV, "PATH", ""))
            env_mapping["PATH"] = string(PATH, ':', ENV["PATH"])
        else
            env_mapping["PATH"] = PATH
        end
    end
    if adjust_LIBPATH
        if !isempty(get(ENV, LIBPATH_env, ""))
            env_mapping[LIBPATH_env] = string(LIBPATH, ':', ENV[LIBPATH_env])
        else
            env_mapping[LIBPATH_env] = LIBPATH
        end
    end
    withenv(env_mapping...) do
        f(wayland_scanner_path)
    end
end


"""
Open all libraries
"""
function __init__()
    global artifact_dir = abspath(artifact"Wayland")

    # Initialize PATH and LIBPATH environment variable listings
    global PATH_list, LIBPATH_list
    # We first need to add to LIBPATH_list the libraries provided by Julia
    append!(LIBPATH_list, [joinpath(Sys.BINDIR, Base.LIBDIR, "julia"), joinpath(Sys.BINDIR, Base.LIBDIR)])
    # From the list of our dependencies, generate a tuple of all the PATH and LIBPATH lists,
    # then append them to our own.
    foreach(p -> append!(PATH_list, p), (Expat_jll.PATH_list, Libffi_jll.PATH_list, XML2_jll.PATH_list,))
    foreach(p -> append!(LIBPATH_list, p), (Expat_jll.LIBPATH_list, Libffi_jll.LIBPATH_list, XML2_jll.LIBPATH_list,))

    global libwayland_server_path = normpath(joinpath(artifact_dir, libwayland_server_splitpath...))

    # Manually `dlopen()` this right now so that future invocations
    # of `ccall` with its `SONAME` will find this path immediately.
    global libwayland_server_handle = dlopen(libwayland_server_path)
    push!(LIBPATH_list, dirname(libwayland_server_path))

    global libwayland_egl_path = normpath(joinpath(artifact_dir, libwayland_egl_splitpath...))

    # Manually `dlopen()` this right now so that future invocations
    # of `ccall` with its `SONAME` will find this path immediately.
    global libwayland_egl_handle = dlopen(libwayland_egl_path)
    push!(LIBPATH_list, dirname(libwayland_egl_path))

    global libwayland_client_path = normpath(joinpath(artifact_dir, libwayland_client_splitpath...))

    # Manually `dlopen()` this right now so that future invocations
    # of `ccall` with its `SONAME` will find this path immediately.
    global libwayland_client_handle = dlopen(libwayland_client_path)
    push!(LIBPATH_list, dirname(libwayland_client_path))

    global libwayland_cursor_path = normpath(joinpath(artifact_dir, libwayland_cursor_splitpath...))

    # Manually `dlopen()` this right now so that future invocations
    # of `ccall` with its `SONAME` will find this path immediately.
    global libwayland_cursor_handle = dlopen(libwayland_cursor_path)
    push!(LIBPATH_list, dirname(libwayland_cursor_path))

    global wayland_scanner_path = normpath(joinpath(artifact_dir, wayland_scanner_splitpath...))

    push!(PATH_list, dirname(wayland_scanner_path))
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

