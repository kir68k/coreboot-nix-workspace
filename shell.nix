{pkgs ? import <nixpkgs> {}}:
with pkgs;
  mkShellNoCC {
    buildInputs = [
      gnat        # GCC with the ADA compiler, EDK2 still doesn't compile for me using this
      acpica-tools  # IASL
      m4
      flex
      binutils
      ccache        # Speeds up recompilation, enable in coreboot's config
      texinfo
      bison         # Flashmap descriptor parser
      pkg-config
      zlib
      xz
      nasm          # For assembly
      clang         ####################
      llvm          ## If you want to use LLVM to compile coreboot
      libllvm       ## NOTE: this is experimental and not bound to work
      lld           ####################
      ncurses       # Coreboot has a menu/nconfig just like the Linux kernel
      automake      # Makefile generator
      autoconf      # Configure script generator
      libuuid       # Tools for working with UUIDs
      glibc         # GNU C Standard Library
      gnumake
      python311Full # Used for e.g. ME-Cleaner
    ];

    shellHook = ''
      PS1="\[$(tput bold)\]\[$(tput setaf 1)\][\[$(tput setaf 3)\]\u\[$(tput setaf 2)\]@\[$(tput setaf 4)\]\h \[$(tput setaf 5)\]\W\[$(tput setaf 1)\]]\[$(tput setaf 7)\]\\$ \[$(tput sgr0)\]"
      echo "##################################"
      echo "#  You are now in a shell ready  #"
      echo "#  for development of coreboot   #"
      echo "#     and related projects.      #"
      echo "##################################"
      alias ls='ls --color'
      alias ll='ls -l'
      alias lh='ls -lh'
      alias l='ls -lah'
      alias lt='ls -laht'
      alias lr='ls -ltr'

      alias grep='grep --color'
      alias egrep='grep -E'
      alias fgrep='grep -F'

      alias mv='mv -v'
      alias cp='cp -v'
      alias rm='rm -rvI'
    '';
  }
