# `Wayland_jll.jl` (v1.21.0+2)

[![deps](https://juliahub.com/docs/Wayland_jll/deps.svg)](https://juliahub.com/ui/Packages/General/Wayland_jll/)

This is an autogenerated package constructed using [`BinaryBuilder.jl`](https://github.com/JuliaPackaging/BinaryBuilder.jl).

The originating [`build_tarballs.jl`](https://github.com/JuliaPackaging/Yggdrasil/blob/3a5de95649b87223b6abc2e22ae4a86329e62771/W/Wayland/build_tarballs.jl) script can be found on [`Yggdrasil`](https://github.com/JuliaPackaging/Yggdrasil/), the community build tree.

## Bug Reports

If you have any issue, please report it to the Yggdrasil [bug tracker](https://github.com/JuliaPackaging/Yggdrasil/issues).

## Documentation

For more details about JLL packages and how to use them, see `BinaryBuilder.jl` [documentation](https://docs.binarybuilder.org/stable/jll/).

## Sources

The tarballs for `Wayland_jll.jl` have been built from these sources:

* compressed archive: https://gitlab.freedesktop.org/wayland/wayland/-/releases/1.21.0/downloads/wayland-1.21.0.tar.xz (SHA256 checksum: `6dc64d7fc16837a693a51cfdb2e568db538bfdc9f457d4656285bb9594ef11ac`)

## Platforms

`Wayland_jll.jl` is available for the following platforms:

* `Linux aarch64 {libc=glibc}` (`aarch64-linux-gnu`)
* `Linux aarch64 {libc=musl}` (`aarch64-linux-musl`)
* `FreeBSD aarch64` (`aarch64-unknown-freebsd`)
* `Linux armv7l {call_abi=eabihf, libc=glibc}` (`armv7l-linux-gnueabihf`)
* `Linux armv7l {call_abi=eabihf, libc=musl}` (`armv7l-linux-musleabihf`)
* `Linux i686 {libc=glibc}` (`i686-linux-gnu`)
* `Linux i686 {libc=musl}` (`i686-linux-musl`)
* `Linux powerpc64le {libc=glibc}` (`powerpc64le-linux-gnu`)
* `Linux x86_64 {libc=glibc}` (`x86_64-linux-gnu`)
* `Linux x86_64 {libc=musl}` (`x86_64-linux-musl`)
* `FreeBSD x86_64` (`x86_64-unknown-freebsd`)

## Dependencies

The following JLL packages are required by `Wayland_jll.jl`:

* [`EpollShim_jll`](https://github.com/JuliaBinaryWrappers/EpollShim_jll.jl)
* [`Expat_jll`](https://github.com/JuliaBinaryWrappers/Expat_jll.jl)
* [`Libffi_jll`](https://github.com/JuliaBinaryWrappers/Libffi_jll.jl)
* [`XML2_jll`](https://github.com/JuliaBinaryWrappers/XML2_jll.jl)

## Products

The code bindings within this package are autogenerated from the following `Products`:

* `LibraryProduct`: `libwayland_client`
* `LibraryProduct`: `libwayland_cursor`
* `LibraryProduct`: `libwayland_egl`
* `LibraryProduct`: `libwayland_server`
* `ExecutableProduct`: `wayland_scanner`
