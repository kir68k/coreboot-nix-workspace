# coreboot-nix-workspace
Nix flake/shell + direnv for working with coreboot and related projects.
Minimal `flake.nix` that loads `shell.nix` with aliases and packages required for working with coreboot, ME-cleaner, and related projects.

## EDK2?
EDK2 compilation is broken even with this, at least when running nix3 on openSUSE TW.
Upstream still uses GCC5, which does not exist in Nixpkgs, and Ubuntu 18.04 LTS is the last version to even support it.

## Included packages
Included packages:
- gnat11
- acpica-tools
- m4
- flex
- binutils
- ccache
- texinfo
- bison
- pkg-config
- zlib
- xz
- nasm
- clang
- llvm
- libllvm
- lld
- ncurses
- automake
- autoconf
- libuuid
- glibc
- gnumake
- python310Full
