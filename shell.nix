{pkgs ? import <nixpkgs> {}}:
with pkgs;
  mkShellNoCC {
    buildInputs = [
      gnat # GCC with the ADA compiler
      acpica-tools # IASL
      m4
      flex
      binutils
      texinfo
      bison # Flashmap descriptor parser
      pkg-config
      zlib
      xz
      nasm # For assembly
      clang ####################
      llvm ## If you want to use LLVM to compile coreboot
      libllvm ## NOTE: this is experimental and not bound to work.
      lld ####################
      ncurses # Coreboot has a menu/nconfig just like the Linux kernel
      automake # Makefile generator
      autoconf # Configure script generator
      libuuid # Tools for working with UUID's
      glibc # GNU C Standard Library
      gnumake
      python39Full # Used for e.g. ME-Cleaner
    ];

    shellHook = ''
      echo "##################################"
      echo "#  You are now in a shell ready  #"
      echo "#  for development of coreboot   #"
      echo "#     and related projects.      #"
      echo "##################################"
    '';
  }
