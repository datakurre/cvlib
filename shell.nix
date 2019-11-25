{ pkgs ? import <nixpkgs> {}
}:

(pkgs.python37.withPackages (ps: [
  ((pkgs.newScope ps) ./default.nix {})
  ps.numpy
])).env
