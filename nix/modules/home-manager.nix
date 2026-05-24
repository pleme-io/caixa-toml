# nix/modules/home-manager.nix — auto-generated from toml.caixa.lisp
{ config, lib, pkgs, ... }:
let cfg = config.programs.toml; in {
  options.programs.toml = {
    enable = lib.mkEnableOption "toml";
    package = lib.mkOption { type = lib.types.package; default = pkgs.toml or null; };
  };
  config = lib.mkIf cfg.enable { home.packages = [ cfg.package ]; };
}
